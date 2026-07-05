#!/usr/bin/env bash
# Manual V3 measurement harness. Usage (as root):
#   sudo bash our_experiment_v3/scripts/run_v3_manual_measurement.sh baseline|icajh
set -u

TIME=120
NSTREAMS=8
FLOWS="11:21 12:22 13:23 14:24"

case "${1:-}" in
  baseline) TOPO=V3_gateway4_baseline_ecmp.topo.sh; RESULTS=our_experiment_v3/results/baseline_ecmp ;;
  icajh)    TOPO=V3_gateway4_icajh_srv6.topo.sh;    RESULTS=our_experiment_v3/results/icajh_srv6 ;;
  *) echo "usage: $0 baseline|icajh"; exit 1 ;;
esac
[ "$(id -u)" = 0 ] || { echo "run with sudo"; exit 1; }
cd "$(dirname "$0")/../.."   # repository root

TS=$(date +%Y%m%d_%H%M%S)
WORK=our_experiment_v3/results/attempt_${1}_${TS}
mkdir -p "$WORK"

echo "== teardown any leftover topology instance"
bash "$TOPO" --stop >/dev/null 2>&1

echo "== pre-start hygiene (safe: no topology is running now)"
for j in $(atq | awk '{print $1}'); do atrm "$j"; done
pkill -9 -f "cron/atjobs" 2>/dev/null
pkill -9 nuttcp 2>/dev/null
atq

echo "== start topology"
bash "$TOPO" > "$WORK/topology_start.log" 2>&1

echo "== cancel the topology's own at-jobs"
sleep 2
for j in $(atq | awk '{print $1}'); do atrm "$j"; done
[ -z "$(atq)" ] || { echo "FATAL: at queue not empty"; exit 1; }

echo "== query receiver addresses from the active topology"
declare -A DST
for f in $FLOWS; do
  r=${f#*:}
  DST[$r]=$(bash "$TOPO" --query "$r")
  echo "  $r = ${DST[$r]}"
done

echo "== restart one clean server per receiver namespace"
for f in $FLOWS; do
  r=${f#*:}
  for pid in $(ip netns pids "$r"); do
    grep -qa nuttcp "/proc/$pid/cmdline" 2>/dev/null && kill -9 "$pid"
  done
  ip netns exec "$r" nuttcp -6 -S
done
sleep 1

echo "== verify listeners"
for f in $FLOWS; do
  r=${f#*:}
  ip netns exec "$r" ss -6 -tln | grep -q ':5000 ' \
    || { echo "FATAL: no listener in netns $r"; exit 1; }
done
echo "  all four listeners up"

echo "== T5/N1 probes"
for f in $FLOWS; do
  s=${f%:*}; r=${f#*:}
  if ! ip netns exec "$s" nuttcp -T5 -N1 "${DST[$r]}" > "$WORK/probe_${s}-${r}.txt" 2>&1; then
    echo "PROBE FAILED: $s -> $r"; cat "$WORK/probe_${s}-${r}.txt"
    mv "$WORK" "${RESULTS}_invalid_probe_${TS}"; exit 1
  fi
  echo "  probe $s->$r ok: $(tail -1 "$WORK/probe_${s}-${r}.txt")"
done

echo "== full measurement: TIME=$TIME NSTREAMS=$NSTREAMS, 4 concurrent flows"
for f in $FLOWS; do
  s=${f%:*}; r=${f#*:}
  ip netns exec "$s" nuttcp -T$TIME -i1 -R10000 -N$NSTREAMS "${DST[$r]}" \
    > "$WORK/flow_${s}-${r}.txt" 2>&1 &
done
wait

echo "== stop topology, collect byte counters"
bash "$TOPO" --stop > "$WORK/topology_stop.log" 2>&1
mv ./*.throughput.json "$WORK/" 2>/dev/null

echo "== validate"
ok=1
for f in $FLOWS; do
  s=${f%:*}; r=${f#*:}
  file="$WORK/flow_${s}-${r}.txt"
  if grep -qiE "refused|reset|error|failed" "$file"; then
    echo "  INVALID $s->$r: error present"; ok=0; continue
  fi
  dur=$(awk '/ sec =/ {d=$4} END {print d}' "$file")
  case "$dur" in
    11[0-9].*|12[0-9].*|13[0-9].*) echo "  ok $s->$r: $(tail -1 "$file")" ;;
    *) echo "  INVALID $s->$r: duration '$dur'"; ok=0 ;;
  esac
done

if [ "$ok" = 1 ]; then
  [ -d "$RESULTS" ] && mv "$RESULTS" "${RESULTS}_replaced_${TS}"
  mv "$WORK" "$RESULTS"
  echo "== SUCCESS: results in $RESULTS"
  tail -2 "$RESULTS"/flow_*.txt
else
  mv "$WORK" "${RESULTS}_invalid_${TS}"
  echo "== FAILED: attempt preserved in ${RESULTS}_invalid_${TS}"
  exit 1
fi
