# ICA-JH / Nanonet SRv6 Traffic Engineering Experiment

## Overview

This repository contains the files for a Nanonet test-bed experiment that
compares two routing configurations on the same emulated network:

1. **ECMP/weights-only baseline** — shortest-path routing with uniform link
   costs.
2. **ICA-JH/SRv6** — link weights and SRv6 waypoints computed by the ICA-JH
   traffic-engineering heuristic.

ICA-JH is an offline traffic-engineering optimizer. Its output is a JSON
solution containing the link weights, the per-demand SRv6 waypoints, and the
objective value (maximum link utilization, MLU). This solution file is
included in the repository. Nanonet compiles the topology descriptions into
shell scripts that build the network from Linux network namespaces and apply
the routing; `nuttcp` measures per-flow TCP throughput. Nanonet performs no
optimization and no iterations — all optimization happens offline before the
measurement.

The experiment can be used in two ways:

* Run the prepared `.topo.sh` scripts directly via the measurement harness.
* Regenerate the `.topo.py` and `.topo.sh` files from the included JSON
  scenario and solution files (see *Compile and configure the experiments*).

## External dependency: Nanonet

Nanonet: https://github.com/nikolaussuess/nanonet.git

Clone Nanonet next to this experiment repository:

```bash
git clone https://github.com/nikolaussuess/nanonet.git
git clone https://github.com/Ruayakh8/project2_icajh_nanonet_final.git
```

The Nanonet build tool is then available at `../nanonet/build.py` relative
to this repository.

## Run the test scripts directly

### System requirements

* Linux with an SRv6-capable kernel (kernel > 4.17 recommended).
* `sudo` privileges (network namespaces are created and deleted).
* iproute2 tools: `ip`, `ip netns`, `ss`, `tc`.
* `net-tools` (`ifconfig`), if not already installed.
* `bash`.
* `python3`.
* `at` / `atd`.
* `nuttcp`, tested with version 6.1.2.
* Sufficient CPU resources: every node is a separate namespace, and each of
  the four flows runs multiple parallel nuttcp streams.

Installation example for Debian/Ubuntu:

```
sudo apt install nuttcp at iproute2 net-tools
```

### Files

Root-level topology files:

| File | Description |
|------|-------------|
| `V3_gateway4_baseline_ecmp.topo.py` | Nanonet topology, ECMP baseline |
| `V3_gateway4_icajh_srv6.topo.py`    | Nanonet topology, ICA-JH/SRv6 |
| `V3_gateway4_baseline_ecmp.topo.sh` | Built test script, ECMP baseline |
| `V3_gateway4_icajh_srv6.topo.sh`    | Built test script, ICA-JH/SRv6 |

Experiment folder `our_experiment_v3/`:

| File / folder | Description |
|---------------|-------------|
| `inputs/icajh_te_core_candidate_g_gateway4.json` | ICA-JH input scenario (9-node TE core) |
| `inputs/nanonet_measurement_topology_gateway4.json` | 13-node measurement scenario (TE core + receivers) |
| `outputs/icajh_solution_candidate_g_gateway4.json` | ICA-JH solution: weights, waypoints, objective MLU |
| `scripts/generate_v3_gateway4_topologies.py` | Generates the two `.topo.py` files from the JSONs |
| `scripts/run_v3_manual_measurement.sh` | Measurement harness for both variants |
| `results/baseline_ecmp/` | Raw results of the included baseline run |
| `results/icajh_srv6/` | Raw results of the included ICA-JH/SRv6 run |

## Included ICA-JH solution

The final ICA-JH solution is included and ready to use:
`our_experiment_v3/outputs/icajh_solution_candidate_g_gateway4.json`

* ICA-JH TE-core demands: `11->4`, `12->4`, `13->4`, `14->4`
* Gateway node: `4`
* Measurement receivers: `21`, `22`, `23`, `24`

Routing decision:

| Demand | Route |
|--------|-------|
| 11 -> 4 | via waypoint 1 |
| 12 -> 4 | direct |
| 13 -> 4 | direct |
| 14 -> 4 | via waypoint 3 |

* ICA-JH objective MLU: **1.0**
* ECMP baseline MLU on the same scenario: **4.0**

## Execution

The recommended way to run both variants is the measurement harness. From
the experiment repository root:

```
cd project2_icajh_nanonet_final
```

Run the ECMP baseline:

```
sudo bash our_experiment_v3/scripts/run_v3_manual_measurement.sh baseline
```

Run the ICA-JH/SRv6 experiment:

```
sudo bash our_experiment_v3/scripts/run_v3_manual_measurement.sh icajh
```

The same harness is used for both variants. It starts the selected topology,
cancels the automatically scheduled at-jobs, queries the receiver addresses
from the active topology script (`--query`), verifies the nuttcp listeners,
performs short probes for all four flows, and then runs the full concurrent
measurement. Valid results are placed in the `results/` folders; incomplete
attempts are kept in separate, clearly named directories.

Fixed measurement parameters:

* `TIME=120` (seconds per flow)
* `NSTREAMS=8` (parallel nuttcp streams per flow)
* Measurement flows: `11->21`, `12->22`, `13->23`, `14->24`

## Results

Output files per run:

* `flow_<X>-<Y>.txt` — nuttcp output for the flow from node X to node Y
  (per-second intervals and final summary).
* `*.throughput.json` — per-interface throughput counters, if produced.

Raw output files for the included valid run are stored in
`our_experiment_v3/results/baseline_ecmp/` and
`our_experiment_v3/results/icajh_srv6/`.

Measured results from the included valid run:

Baseline ECMP:

| Flow | Throughput |
|------|------------|
| 11->21 | 2.2864 Mbps |
| 12->22 | 2.5169 Mbps |
| 13->23 | 2.6359 Mbps |
| 14->24 | 2.5688 Mbps |
| **Total** | **10.0079 Mbps** |

ICA-JH/SRv6:

| Flow | Throughput |
|------|------------|
| 11->21 | 9.2956 Mbps |
| 12->22 | 4.9491 Mbps |
| 13->23 | 5.9943 Mbps |
| 14->24 | 7.8849 Mbps |
| **Total** | **28.1239 Mbps** |

Improvement: 28.1239 / 10.0079 ≈ **2.81x** total throughput.

Exact throughput values may vary slightly depending on the machine/VM load.

## Evaluation and plotting

The raw flow files are included under `our_experiment_v3/results/`.

Create the batch CSV (`our_experiment_v3/results/batch_result_v3.csv`):

```
python3 our_experiment_v3/scripts/create_v3_batch_csv.py
```

Generate the boxplot and statistics
(`our_experiment_v3/results/plots/v3_total_throughput_boxplot.{png,pdf}`):

```
python3 our_experiment_v3/scripts/gen_boxplot_v3.py
```

The CSV format is batch-style (semicolon-delimited, one row per run and
topology) and supports future repeated runs. The repository currently
contains one valid run per variant. For statistical boxplots, run repeated
measurements and store them under
`our_experiment_v3/results/repeated/<variant>/run_XX/`; the CSV and plot
scripts pick them up automatically.

Plotting requires `matplotlib`; `seaborn` is used if available
(`sudo apt install python3-seaborn` or `pip install seaborn`).

## Compile and configure the experiments

### Generate `.topo.py` files

From the experiment repository root:

```
python3 our_experiment_v3/scripts/generate_v3_gateway4_topologies.py
```

Expected outputs (repository root):

* `V3_gateway4_baseline_ecmp.topo.py`
* `V3_gateway4_icajh_srv6.topo.py`

### Build `.topo.sh` files with Nanonet

From the Nanonet directory:

```
cd ../nanonet

python3 build.py \
  ../project2_icajh_nanonet_final/V3_gateway4_baseline_ecmp.topo.py \
  V3_gateway4_baseline_ecmp \
  ../project2_icajh_nanonet_final

python3 build.py \
  ../project2_icajh_nanonet_final/V3_gateway4_icajh_srv6.topo.py \
  V3_gateway4_icajh_srv6 \
  ../project2_icajh_nanonet_final
```

Expected outputs (experiment repository root):

* `V3_gateway4_baseline_ecmp.topo.sh`
* `V3_gateway4_icajh_srv6.topo.sh`

## Notes

* Receiver nodes 21–24 are measurement endpoints behind gateway node 4; each
  flow has a dedicated receiver.
* ICA-JH optimizes the TE-core demands toward gateway 4. The receiver links
  are high-capacity measurement links and are not part of the TE
  optimization.
* Both variants use the same topology structure, traffic pattern, `TIME`,
  `NSTREAMS`, and measurement harness; only the routing policy differs.
