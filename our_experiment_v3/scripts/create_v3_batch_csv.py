#!/usr/bin/env python3
# Convert nuttcp flow result folders into a batch-style CSV
# (semicolon-delimited, one row per run and topology).
#
# Supported input layouts:
#   our_experiment_v3/results/<variant>/flow_*.txt              (included run)
#   our_experiment_v3/results/repeated/<variant>/run_XX/flow_*.txt
#
# Output: our_experiment_v3/results/batch_result_v3.csv
import csv
import re
from pathlib import Path

RESULTS_DIR = Path("our_experiment_v3/results")
OUTPUT_CSV = RESULTS_DIR / "batch_result_v3.csv"

VARIANTS = {
    "baseline_ecmp": "V3_gateway4_baseline_ecmp.topo.sh",
    "icajh_srv6": "V3_gateway4_icajh_srv6.topo.sh",
}

FLOWS = ["11-21", "12-22", "13-23", "14-24"]

ERROR_MARKERS = [
    "connect failed",
    "refused",
    "RTY",
    "Broken pipe",
    "reset by peer",
    "Address already in use",
]

SUMMARY_RE = re.compile(
    r"([\d.]+)\s+MB\s+/\s+([\d.]+)\s+sec\s+=\s+([\d.]+)\s+Mbps"
)


def parse_flow_file(path: Path):
    """Return (mbps, duration_sec, error) for one flow file."""
    if not path.is_file():
        return None, None, "missing"
    text = path.read_text(errors="replace")
    for marker in ERROR_MARKERS:
        if marker in text:
            return None, None, marker
    summary = None
    for m in SUMMARY_RE.finditer(text):
        summary = m
    if summary is None:
        return None, None, "no summary line"
    return float(summary.group(3)), float(summary.group(2)), None


def parse_run(run_dir: Path):
    """Return a dict of per-flow results and validity for one run folder."""
    flows = {}
    errors = []
    for flow in FLOWS:
        mbps, dur, err = parse_flow_file(run_dir / f"flow_{flow}.txt")
        flows[flow] = (mbps, dur)
        if err:
            errors.append(f"{flow}: {err}")
    valid = not errors
    return flows, valid, errors


def collect_runs():
    """Yield (run_id, topology, run_dir) for all known layouts."""
    for variant, topology in VARIANTS.items():
        single = RESULTS_DIR / variant
        if single.is_dir():
            yield "included_valid_run", topology, single
        repeated = RESULTS_DIR / "repeated" / variant
        if repeated.is_dir():
            for run_dir in sorted(repeated.iterdir()):
                if run_dir.is_dir():
                    yield run_dir.name, topology, run_dir


def main():
    rows = []
    for run_id, topology, run_dir in collect_runs():
        flows, valid, errors = parse_run(run_dir)
        values = [flows[f][0] for f in FLOWS]
        durations = [flows[f][1] for f in FLOWS if flows[f][1] is not None]
        total = sum(values) if valid else ""
        row = [
            run_id,
            topology,
            f"{total:.4f}" if valid else "",
            *[f"{v:.4f}" if v is not None else "" for v in values],
            f"{min(durations):.2f}" if durations else "",
            "1" if valid else "0",
        ]
        rows.append(row)
        status = "valid" if valid else f"INVALID ({'; '.join(errors)})"
        print(f"{run_id};{topology}: {status}"
              + (f", total = {total:.4f} Mbps" if valid else ""))

    header = ["run_id", "topology", "total_mbps",
              "flow_11_21_mbps", "flow_12_22_mbps",
              "flow_13_23_mbps", "flow_14_24_mbps",
              "duration_min_sec", "valid"]
    with OUTPUT_CSV.open("w", newline="") as f:
        writer = csv.writer(f, delimiter=";")
        writer.writerow(header)
        writer.writerows(rows)

    n_valid = sum(1 for r in rows if r[-1] == "1")
    print(f"Wrote {OUTPUT_CSV} ({len(rows)} rows, {n_valid} valid)")


if __name__ == "__main__":
    main()
