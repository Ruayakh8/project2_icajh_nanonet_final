#!/usr/bin/env python3
from node import *

class V3_gateway4_icajh_srv6(Topo):
    def build(self):
        self.add_node('0')
        self.add_node('1')
        self.add_node('2')
        self.add_node('3')
        self.add_node('4')
        self.add_node('11')
        self.add_node('12')
        self.add_node('13')
        self.add_node('14')
        self.add_node('21')
        self.add_node('22')
        self.add_node('23')
        self.add_node('24')
        self.add_link_name('0', '1', cost=1000, delay=0.2, bw=4000000, directed=True)
        self.add_link_name('1', '0', cost=1000, delay=0.2, bw=4000000, directed=True)
        self.add_link_name('1', '2', cost=1000, delay=0.2, bw=4000000, directed=True)
        self.add_link_name('2', '1', cost=1000, delay=0.2, bw=4000000, directed=True)
        self.add_link_name('2', '3', cost=11000, delay=0.2, bw=4000000, directed=True)
        self.add_link_name('3', '2', cost=2000, delay=0.2, bw=4000000, directed=True)
        self.add_link_name('0', '4', cost=19000, delay=0.2, bw=12000, directed=True)
        self.add_link_name('1', '4', cost=18000, delay=0.2, bw=12000, directed=True)
        self.add_link_name('2', '4', cost=17000, delay=0.2, bw=12000, directed=True)
        self.add_link_name('3', '4', cost=18000, delay=0.2, bw=12000, directed=True)
        self.add_link_name('4', '0', cost=8000, delay=0.2, bw=12000, directed=True)
        self.add_link_name('4', '1', cost=12000, delay=0.2, bw=12000, directed=True)
        self.add_link_name('4', '2', cost=11000, delay=0.2, bw=12000, directed=True)
        self.add_link_name('4', '3', cost=7000, delay=0.2, bw=12000, directed=True)
        self.add_link_name('11', '0', cost=1000, delay=0.2, bw=1000000, directed=True)
        self.add_link_name('12', '0', cost=1000, delay=0.2, bw=1000000, directed=True)
        self.add_link_name('13', '0', cost=1000, delay=0.2, bw=1000000, directed=True)
        self.add_link_name('14', '0', cost=1000, delay=0.2, bw=1000000, directed=True)
        self.add_link_name('0', '11', cost=1000, delay=0.2, bw=1000000, directed=True)
        self.add_link_name('0', '12', cost=3000, delay=0.2, bw=1000000, directed=True)
        self.add_link_name('0', '13', cost=1000, delay=0.2, bw=1000000, directed=True)
        self.add_link_name('0', '14', cost=1000, delay=0.2, bw=1000000, directed=True)
        self.add_link_name('4', '21', cost=1000, delay=0.2, bw=1000000, directed=True)
        self.add_link_name('21', '4', cost=1000, delay=0.2, bw=1000000, directed=True)
        self.add_link_name('4', '22', cost=1000, delay=0.2, bw=1000000, directed=True)
        self.add_link_name('22', '4', cost=1000, delay=0.2, bw=1000000, directed=True)
        self.add_link_name('4', '23', cost=1000, delay=0.2, bw=1000000, directed=True)
        self.add_link_name('23', '4', cost=1000, delay=0.2, bw=1000000, directed=True)
        self.add_link_name('4', '24', cost=1000, delay=0.2, bw=1000000, directed=True)
        self.add_link_name('24', '4', cost=1000, delay=0.2, bw=1000000, directed=True)

    def dijkstra_computed(self):
        # ICA-JH/SRv6: waypoints applied as SRv6 segments
        # flow 11 -> 21, segments ['1', '4']
        build_str = ""
        nhlist = self.get_dijkstra_route_by_name('11', '1')
        for nh in nhlist:
            build_str += f" nexthop via {nh.nh} " + f" encap seg6 mode inline segs {{1}},{{4}} " + f" weight {int(100/len(nhlist))} "
        self.add_command('11', f"ip -6 route add {{21}} metric 1 table 1 src {{11}}  {build_str}")
        # flow 12 -> 22, segments ['4']
        build_str = ""
        nhlist = self.get_dijkstra_route_by_name('12', '4')
        for nh in nhlist:
            build_str += f" nexthop via {nh.nh} " + f" encap seg6 mode inline segs {{4}} " + f" weight {int(100/len(nhlist))} "
        self.add_command('12', f"ip -6 route add {{22}} metric 1 table 1 src {{12}}  {build_str}")
        # flow 13 -> 23, segments ['4']
        build_str = ""
        nhlist = self.get_dijkstra_route_by_name('13', '4')
        for nh in nhlist:
            build_str += f" nexthop via {nh.nh} " + f" encap seg6 mode inline segs {{4}} " + f" weight {int(100/len(nhlist))} "
        self.add_command('13', f"ip -6 route add {{23}} metric 1 table 1 src {{13}}  {build_str}")
        # flow 14 -> 24, segments ['3', '4']
        build_str = ""
        nhlist = self.get_dijkstra_route_by_name('14', '3')
        for nh in nhlist:
            build_str += f" nexthop via {nh.nh} " + f" encap seg6 mode inline segs {{3}},{{4}} " + f" weight {int(100/len(nhlist))} "
        self.add_command('14', f"ip -6 route add {{24}} metric 1 table 1 src {{14}}  {build_str}")
        self.add_command('11', "ip -6 rule add to {21} iif lo table 1")
        self.add_command('12', "ip -6 rule add to {22} iif lo table 1")
        self.add_command('13', "ip -6 rule add to {23} iif lo table 1")
        self.add_command('14', "ip -6 rule add to {24} iif lo table 1")
        self.add_command('21', "nuttcp -6 -S")
        self.add_command('22', "nuttcp -6 -S")
        self.add_command('23', "nuttcp -6 -S")
        self.add_command('24', "nuttcp -6 -S")
        self.add_command('11', 'printf "%s\\n" "until ip netns exec 11 nuttcp -T120 -i1 -R10000 -N8 {21} >>flow_11-21.txt 2>&1; do sleep 2; echo RTY: \\$SECONDS >>flow_11-21.txt; done" | at now+2min')
        self.add_command('12', 'printf "%s\\n" "until ip netns exec 12 nuttcp -T120 -i1 -R10000 -N8 {22} >>flow_12-22.txt 2>&1; do sleep 2; echo RTY: \\$SECONDS >>flow_12-22.txt; done" | at now+2min')
        self.add_command('13', 'printf "%s\\n" "until ip netns exec 13 nuttcp -T120 -i1 -R10000 -N8 {23} >>flow_13-23.txt 2>&1; do sleep 2; echo RTY: \\$SECONDS >>flow_13-23.txt; done" | at now+2min')
        self.add_command('14', 'printf "%s\\n" "until ip netns exec 14 nuttcp -T120 -i1 -R10000 -N8 {24} >>flow_14-24.txt 2>&1; do sleep 2; echo RTY: \\$SECONDS >>flow_14-24.txt; done" | at now+2min')

        self.enable_throughput()
        self.add_command('0', "sysctl net.ipv6.fib_multipath_hash_policy=1")
        self.add_command('1', "sysctl net.ipv6.fib_multipath_hash_policy=1")
        self.add_command('2', "sysctl net.ipv6.fib_multipath_hash_policy=1")
        self.add_command('3', "sysctl net.ipv6.fib_multipath_hash_policy=1")
        self.add_command('4', "sysctl net.ipv6.fib_multipath_hash_policy=1")
        self.add_command('11', "sysctl net.ipv6.fib_multipath_hash_policy=1")
        self.add_command('12', "sysctl net.ipv6.fib_multipath_hash_policy=1")
        self.add_command('13', "sysctl net.ipv6.fib_multipath_hash_policy=1")
        self.add_command('14', "sysctl net.ipv6.fib_multipath_hash_policy=1")
        self.add_command('21', "sysctl net.ipv6.fib_multipath_hash_policy=1")
        self.add_command('22', "sysctl net.ipv6.fib_multipath_hash_policy=1")
        self.add_command('23', "sysctl net.ipv6.fib_multipath_hash_policy=1")
        self.add_command('24', "sysctl net.ipv6.fib_multipath_hash_policy=1")

topos = {'V3_gateway4_icajh_srv6': (lambda: V3_gateway4_icajh_srv6())}
