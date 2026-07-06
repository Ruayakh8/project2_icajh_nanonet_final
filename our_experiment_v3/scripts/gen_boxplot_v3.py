#!/usr/bin/env python3
# Read batch_result_v3.csv (created by create_v3_batch_csv.py) and plot the
# total throughput of both routing variants as a boxplot, following the
# style of the upstream gen_boxplot.py.
import csv
import statistics
import sys
from pathlib import Path

try:
    import matplotlib
    matplotlib.use("Agg")
    import matplotlib.pyplot as plt
except ImportError:
    print("matplotlib is required:")
    print("  sudo apt install python3-matplotlib   or   pip install matplotlib")
    sys.exit(1)

try:
    import seaborn as sns
except ImportError:
    sns = None
    print("Note: seaborn not found, falling back to plain matplotlib boxplot.")
    print("  sudo apt install python3-seaborn   or   pip install seaborn")

CSV_FILENAME = Path("our_experiment_v3/results/batch_result_v3.csv")
PLOT_DIR = Path("our_experiment_v3/results/plots")

TOPO_ICAJH = "V3_gateway4_icajh_srv6.topo.sh"
TOPO_BASELINE = "V3_gateway4_baseline_ecmp.topo.sh"

# Plotting parameters (upstream style)
plt.style.use("ggplot")
SMALL_SIZE = 17
MEDIUM_SIZE = 20
BIGGER_SIZE = 22
plt.rc("font", size=SMALL_SIZE)
plt.rc("font", family="serif")
plt.rc("axes", titlesize=SMALL_SIZE)
plt.rc("axes", labelsize=SMALL_SIZE)
plt.rc("xtick", labelsize=SMALL_SIZE)
plt.rc("ytick", labelsize=SMALL_SIZE)
plt.rc("legend", fontsize=SMALL_SIZE)
plt.rc("figure", titlesize=BIGGER_SIZE)


# Read the CSV file and filter for one topology; only valid rows are used.
def read_csv_data(filename, filter_topology):
    with open(filename, "r") as csvfile:
        csvreader = csv.reader(csvfile, delimiter=";")
        return [
            float(row[2])
            for row in csvreader
            if len(row) >= 9
            and row[1].strip() == filter_topology
            and row[8].strip() == "1"
        ]


def box_plot(data_all, y_labels):
    fig, ax = plt.subplots(figsize=(10, 4))
    if sns is not None:
        flier_props = dict(markersize=1, linestyle="none")
        sns.boxplot(data=data_all, ax=ax, linewidth=0.5,
                    flierprops=flier_props, orient="h")
    else:
        ax.boxplot(data_all, vert=False)
        ax.set_yticks(range(1, len(y_labels) + 1))
    plt.xlabel("\nTotal throughput [Mbps]", weight="bold", fontsize=MEDIUM_SIZE)
    plt.ylabel("Routing\n", weight="bold", fontsize=MEDIUM_SIZE)
    ax.set_facecolor("white")
    ax.grid(linestyle=":", color="grey", linewidth=0.5)
    for y_line in ax.get_xgridlines():
        y_line.set_color("white")
    plt.xticks(rotation=0)
    if sns is not None:
        plt.yticks(range(len(y_labels)), y_labels)
    else:
        ax.set_yticklabels(y_labels)
    plt.tight_layout()
    plt.grid()
    PLOT_DIR.mkdir(parents=True, exist_ok=True)
    for ext in ("png", "pdf"):
        out = PLOT_DIR / f"v3_total_throughput_boxplot.{ext}"
        plt.savefig(out, bbox_inches="tight", format=ext)
        print("Wrote", out)
    plt.close()


def print_stats(name, data):
    print(f"{name} Median: ", statistics.median(data))
    print(f"{name} Minimum: ", min(data))
    print(f"{name} Maximum: ", max(data))


def main():
    if not CSV_FILENAME.is_file():
        print(f"{CSV_FILENAME} not found. "
              "Run create_v3_batch_csv.py first.")
        sys.exit(1)

    data_icajh = read_csv_data(CSV_FILENAME, TOPO_ICAJH)
    data_baseline = read_csv_data(CSV_FILENAME, TOPO_BASELINE)

    if not data_icajh or not data_baseline:
        print("No valid rows for one or both topologies; nothing to plot.")
        sys.exit(1)

    box_plot([data_icajh, data_baseline], ["ICA-JH/SRv6", "ECMP baseline"])

    print_stats("ICA-JH/SRv6", data_icajh)
    print_stats("ECMP baseline", data_baseline)

    median_icajh = statistics.median(data_icajh)
    median_baseline = statistics.median(data_baseline)
    print(f"Improvement (medians): {median_icajh / median_baseline:.2f}x")

    if len(data_icajh) == 1 and len(data_baseline) == 1:
        print("Only one valid run per variant is currently available. "
              "The boxplot script is ready for repeated runs; statistical "
              "boxplots should be based on multiple runs.")


if __name__ == "__main__":
    main()
