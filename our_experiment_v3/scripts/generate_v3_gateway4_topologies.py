#!/usr/bin/env python3
# Generate the V3 gateway4 Nanonet topologies. Run from the repository root.
import json
from pathlib import Path

SCENARIO_PATH = Path("our_experiment_v3/inputs/nanonet_measurement_topology_gateway4.json")
SOLUTION_PATH = Path("our_experiment_v3/outputs/icajh_solution_candidate_g_gateway4.json")


def load_json(path):
    with path.open() as f:
        return json.load(f)


def client_command(src, dst, time_value, nstreams):
    # 'until' retries if the server is not ready yet
    output = f"flow_{src}-{dst}.txt"
    return (
        f'printf "%s\\n" "until ip netns exec {src} nuttcp -T{time_value} -i1 -R10000 '
        f'-N{nstreams} {{{dst}}} >>{output} 2>&1; '
        f'do sleep 2; echo RTY: \\$SECONDS >>{output}; done" | at now+2min'
    )


def write_header(f, class_name):
    f.write("#!/usr/bin/env python3\n")
    f.write("from node import *\n\n")
    f.write(f"class {class_name}(Topo):\n")


def write_build_method(f, scenario, cost_source, solution_weights=None):
    f.write("    def build(self):\n")

    for node in scenario["nodes"]:
        f.write(f"        self.add_node({node!r})\n")

    weight_map = {}
    if solution_weights:
        for item in solution_weights:
            weight_map[(item["src"], item["dst"])] = item["weight"]

    for link in scenario["links"]:
        src = link["src"]
        dst = link["dst"]
        bw = int(link["bw"])

        if cost_source == "ecmp":
            cost = int(link["cost_ecmp"])
        elif cost_source == "icajh":
            # scale ICA-JH weights by 1000; receiver links keep their ECMP cost
            if (src, dst) in weight_map:
                cost = int(round(float(weight_map[(src, dst)]) * 1000))
            else:
                cost = int(link["cost_ecmp"])
        else:
            raise ValueError("unknown cost source")

        f.write(
            f"        self.add_link_name({src!r}, {dst!r}, "
            f"cost={cost}, delay=0.2, bw={bw}, directed=True)\n"
        )


def write_common_commands(f, scenario):
    time_value = scenario["experiment_parameters"]["TIME"]
    nstreams = scenario["experiment_parameters"]["NSTREAMS"]
    flows = scenario["measurement_flows"]
    nodes = scenario["nodes"]

    for flow in flows:
        f.write(
            f"        self.add_command({flow['src']!r}, "
            f"\"ip -6 rule add to {{{flow['dst']}}} iif lo table 1\")\n"
        )

    # one nuttcp server per receiver
    for flow in flows:
        f.write(f"        self.add_command({flow['dst']!r}, \"nuttcp -6 -S\")\n")

    for flow in flows:
        cmd = client_command(flow["src"], flow["dst"], time_value, nstreams)
        f.write(f"        self.add_command({flow['src']!r}, {cmd!r})\n")

    f.write("\n")
    f.write("        self.enable_throughput()\n")

    for node in nodes:
        f.write(
            f"        self.add_command({node!r}, "
            "\"sysctl net.ipv6.fib_multipath_hash_policy=1\")\n"
        )


def write_baseline_dijkstra(f, scenario):
    f.write("\n")
    f.write("    def dijkstra_computed(self):\n")
    f.write("        # ECMP baseline: no SRv6\n")

    for flow in scenario["measurement_flows"]:
        src = flow["src"]
        dst = flow["dst"]

        f.write(f"        # flow {src} -> {dst}\n")
        f.write("        build_str = \"\"\n")
        f.write(f"        nhlist = self.get_dijkstra_route_by_name({src!r}, {dst!r})\n")
        f.write("        for nh in nhlist:\n")
        f.write("            build_str += f\" nexthop via {nh.nh} \" + f\" weight {int(100/len(nhlist))} \"\n")
        f.write(
            f"        self.add_command({src!r}, "
            f"f\"ip -6 route add {{{{{dst}}}}} metric 1 table 1 src {{{{{src}}}}}  {{build_str}}\")\n"
        )

    write_common_commands(f, scenario)


def write_srv6_dijkstra(f, scenario, solution):
    f.write("\n")
    f.write("    def dijkstra_computed(self):\n")
    f.write("        # ICA-JH/SRv6: waypoints applied as SRv6 segments\n")

    waypoint_map = {}
    for item in solution["waypoints"]:
        waypoint_map[(item["src"], item["dst"])] = item["waypoints"]

    for flow in scenario["measurement_flows"]:
        src = flow["src"]
        dst = flow["dst"]
        gateway = flow["gateway"]
        wps = waypoint_map.get((src, gateway), [])

        # segments = waypoints toward the gateway, then the gateway itself
        segments = list(wps) + [gateway]
        first_target = segments[0]
        segs_str = ",".join(f"{{{{{s}}}}}" for s in segments)

        f.write(f"        # flow {src} -> {dst}, segments {segments!r}\n")
        f.write("        build_str = \"\"\n")
        f.write(f"        nhlist = self.get_dijkstra_route_by_name({src!r}, {first_target!r})\n")
        f.write("        for nh in nhlist:\n")
        f.write(
            f"            build_str += f\" nexthop via {{nh.nh}} \" "
            f"+ f\" encap seg6 mode inline segs {segs_str} \" "
            f"+ f\" weight {{int(100/len(nhlist))}} \"\n"
        )
        f.write(
            f"        self.add_command({src!r}, "
            f"f\"ip -6 route add {{{{{dst}}}}} metric 1 table 1 src {{{{{src}}}}}  {{build_str}}\")\n"
        )

    write_common_commands(f, scenario)


def write_topos_dict(f, class_name, topo_name):
    f.write("\n")
    f.write(f"topos = {{{topo_name!r}: (lambda: {class_name}())}}\n")


def generate():
    scenario = load_json(SCENARIO_PATH)
    solution = load_json(SOLUTION_PATH)

    # 1) ECMP baseline
    with Path("V3_gateway4_baseline_ecmp.topo.py").open("w") as f:
        write_header(f, "V3_gateway4_baseline_ecmp")
        write_build_method(f, scenario, cost_source="ecmp")
        write_baseline_dijkstra(f, scenario)
        write_topos_dict(f, "V3_gateway4_baseline_ecmp", "V3_gateway4_baseline_ecmp")

    # 2) ICA-JH/SRv6 variant
    with Path("V3_gateway4_icajh_srv6.topo.py").open("w") as f:
        write_header(f, "V3_gateway4_icajh_srv6")
        write_build_method(f, scenario, cost_source="icajh",
                           solution_weights=solution["weights"])
        write_srv6_dijkstra(f, scenario, solution)
        write_topos_dict(f, "V3_gateway4_icajh_srv6", "V3_gateway4_icajh_srv6")

    print("Generated:")
    print("  V3_gateway4_baseline_ecmp.topo.py")
    print("  V3_gateway4_icajh_srv6.topo.py")
    print("Build (from the nanonet directory):")
    print("  python3 build.py ../TE_SR_experiments_2021/V3_gateway4_baseline_ecmp.topo.py "
          "V3_gateway4_baseline_ecmp ../TE_SR_experiments_2021")
    print("  python3 build.py ../TE_SR_experiments_2021/V3_gateway4_icajh_srv6.topo.py "
          "V3_gateway4_icajh_srv6 ../TE_SR_experiments_2021")


if __name__ == "__main__":
    generate()
