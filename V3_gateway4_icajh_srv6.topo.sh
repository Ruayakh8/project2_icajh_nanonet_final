# 22 loop: fc00:2:0:1::1/64
# 0 loop: fc00:2:0:2::1/64
# 3 loop: fc00:2:0:3::1/64
# 1 loop: fc00:2:0:4::1/64
# 21 loop: fc00:2:0:5::1/64
# 12 loop: fc00:2:0:6::1/64
# 24 loop: fc00:2:0:7::1/64
# 13 loop: fc00:2:0:8::1/64
# 23 loop: fc00:2:0:9::1/64
# 4 loop: fc00:2:0:a::1/64
# 14 loop: fc00:2:0:b::1/64
# 2 loop: fc00:2:0:c::1/64
# 11 loop: fc00:2:0:d::1/64

PYTHON_CURR_DIR=`dirname $0`
if [ "$1" == "--query" ]; then shift; if [ "$1" == "22" ]; then echo fc00:2:0:1::1 ; fi ; if [ "$1" == "ifname (22,4) at 22" ]; then echo 22-0 ; fi ; if [ "$1" == "ifname (22,4) at 4" ]; then echo 4-5 ; fi ; if [ "$1" == "edge (22,4) at 22" ]; then echo fc00:42:0:1a::1 ; fi ; if [ "$1" == "edge (22,4) at 4" ]; then echo fc00:42:0:1a::2 ; fi ; if [ "$1" == "0" ]; then echo fc00:2:0:2::1 ; fi ; if [ "$1" == "ifname (0,1) at 0" ]; then echo 0-0 ; fi ; if [ "$1" == "ifname (0,1) at 1" ]; then echo 1-0 ; fi ; if [ "$1" == "edge (0,1) at 0" ]; then echo fc00:42:0:2::2 ; fi ; if [ "$1" == "edge (0,1) at 1" ]; then echo fc00:42:0:2::1 ; fi ; if [ "$1" == "ifname (0,12) at 0" ]; then echo 0-3 ; fi ; if [ "$1" == "ifname (0,12) at 12" ]; then echo 12-0 ; fi ; if [ "$1" == "edge (0,12) at 0" ]; then echo fc00:42:0:14::1 ; fi ; if [ "$1" == "edge (0,12) at 12" ]; then echo fc00:42:0:14::2 ; fi ; if [ "$1" == "ifname (0,13) at 0" ]; then echo 0-4 ; fi ; if [ "$1" == "ifname (0,13) at 13" ]; then echo 13-0 ; fi ; if [ "$1" == "edge (0,13) at 0" ]; then echo fc00:42:0:15::1 ; fi ; if [ "$1" == "edge (0,13) at 13" ]; then echo fc00:42:0:15::2 ; fi ; if [ "$1" == "ifname (0,4) at 0" ]; then echo 0-1 ; fi ; if [ "$1" == "ifname (0,4) at 4" ]; then echo 4-0 ; fi ; if [ "$1" == "edge (0,4) at 0" ]; then echo fc00:42:0:b::2 ; fi ; if [ "$1" == "edge (0,4) at 4" ]; then echo fc00:42:0:b::1 ; fi ; if [ "$1" == "ifname (0,14) at 0" ]; then echo 0-5 ; fi ; if [ "$1" == "ifname (0,14) at 14" ]; then echo 14-0 ; fi ; if [ "$1" == "edge (0,14) at 0" ]; then echo fc00:42:0:16::1 ; fi ; if [ "$1" == "edge (0,14) at 14" ]; then echo fc00:42:0:16::2 ; fi ; if [ "$1" == "ifname (0,11) at 0" ]; then echo 0-2 ; fi ; if [ "$1" == "ifname (0,11) at 11" ]; then echo 11-0 ; fi ; if [ "$1" == "edge (0,11) at 0" ]; then echo fc00:42:0:13::1 ; fi ; if [ "$1" == "edge (0,11) at 11" ]; then echo fc00:42:0:13::2 ; fi ; if [ "$1" == "3" ]; then echo fc00:2:0:3::1 ; fi ; if [ "$1" == "ifname (3,4) at 3" ]; then echo 3-1 ; fi ; if [ "$1" == "ifname (3,4) at 4" ]; then echo 4-3 ; fi ; if [ "$1" == "edge (3,4) at 3" ]; then echo fc00:42:0:e::2 ; fi ; if [ "$1" == "edge (3,4) at 4" ]; then echo fc00:42:0:e::1 ; fi ; if [ "$1" == "ifname (3,2) at 3" ]; then echo 3-0 ; fi ; if [ "$1" == "ifname (3,2) at 2" ]; then echo 2-1 ; fi ; if [ "$1" == "edge (3,2) at 3" ]; then echo fc00:42:0:6::1 ; fi ; if [ "$1" == "edge (3,2) at 2" ]; then echo fc00:42:0:6::2 ; fi ; if [ "$1" == "1" ]; then echo fc00:2:0:4::1 ; fi ; if [ "$1" == "ifname (1,0) at 1" ]; then echo 1-0 ; fi ; if [ "$1" == "ifname (1,0) at 0" ]; then echo 0-0 ; fi ; if [ "$1" == "edge (1,0) at 1" ]; then echo fc00:42:0:2::1 ; fi ; if [ "$1" == "edge (1,0) at 0" ]; then echo fc00:42:0:2::2 ; fi ; if [ "$1" == "ifname (1,4) at 1" ]; then echo 1-2 ; fi ; if [ "$1" == "ifname (1,4) at 4" ]; then echo 4-1 ; fi ; if [ "$1" == "edge (1,4) at 1" ]; then echo fc00:42:0:c::2 ; fi ; if [ "$1" == "edge (1,4) at 4" ]; then echo fc00:42:0:c::1 ; fi ; if [ "$1" == "ifname (1,2) at 1" ]; then echo 1-1 ; fi ; if [ "$1" == "ifname (1,2) at 2" ]; then echo 2-0 ; fi ; if [ "$1" == "edge (1,2) at 1" ]; then echo fc00:42:0:4::2 ; fi ; if [ "$1" == "edge (1,2) at 2" ]; then echo fc00:42:0:4::1 ; fi ; if [ "$1" == "21" ]; then echo fc00:2:0:5::1 ; fi ; if [ "$1" == "ifname (21,4) at 21" ]; then echo 21-0 ; fi ; if [ "$1" == "ifname (21,4) at 4" ]; then echo 4-4 ; fi ; if [ "$1" == "edge (21,4) at 21" ]; then echo fc00:42:0:18::1 ; fi ; if [ "$1" == "edge (21,4) at 4" ]; then echo fc00:42:0:18::2 ; fi ; if [ "$1" == "12" ]; then echo fc00:2:0:6::1 ; fi ; if [ "$1" == "ifname (12,0) at 12" ]; then echo 12-0 ; fi ; if [ "$1" == "ifname (12,0) at 0" ]; then echo 0-3 ; fi ; if [ "$1" == "edge (12,0) at 12" ]; then echo fc00:42:0:14::2 ; fi ; if [ "$1" == "edge (12,0) at 0" ]; then echo fc00:42:0:14::1 ; fi ; if [ "$1" == "24" ]; then echo fc00:2:0:7::1 ; fi ; if [ "$1" == "ifname (24,4) at 24" ]; then echo 24-0 ; fi ; if [ "$1" == "ifname (24,4) at 4" ]; then echo 4-7 ; fi ; if [ "$1" == "edge (24,4) at 24" ]; then echo fc00:42:0:1e::1 ; fi ; if [ "$1" == "edge (24,4) at 4" ]; then echo fc00:42:0:1e::2 ; fi ; if [ "$1" == "13" ]; then echo fc00:2:0:8::1 ; fi ; if [ "$1" == "ifname (13,0) at 13" ]; then echo 13-0 ; fi ; if [ "$1" == "ifname (13,0) at 0" ]; then echo 0-4 ; fi ; if [ "$1" == "edge (13,0) at 13" ]; then echo fc00:42:0:15::2 ; fi ; if [ "$1" == "edge (13,0) at 0" ]; then echo fc00:42:0:15::1 ; fi ; if [ "$1" == "23" ]; then echo fc00:2:0:9::1 ; fi ; if [ "$1" == "ifname (23,4) at 23" ]; then echo 23-0 ; fi ; if [ "$1" == "ifname (23,4) at 4" ]; then echo 4-6 ; fi ; if [ "$1" == "edge (23,4) at 23" ]; then echo fc00:42:0:1c::1 ; fi ; if [ "$1" == "edge (23,4) at 4" ]; then echo fc00:42:0:1c::2 ; fi ; if [ "$1" == "4" ]; then echo fc00:2:0:a::1 ; fi ; if [ "$1" == "ifname (4,22) at 4" ]; then echo 4-5 ; fi ; if [ "$1" == "ifname (4,22) at 22" ]; then echo 22-0 ; fi ; if [ "$1" == "edge (4,22) at 4" ]; then echo fc00:42:0:1a::2 ; fi ; if [ "$1" == "edge (4,22) at 22" ]; then echo fc00:42:0:1a::1 ; fi ; if [ "$1" == "ifname (4,0) at 4" ]; then echo 4-0 ; fi ; if [ "$1" == "ifname (4,0) at 0" ]; then echo 0-1 ; fi ; if [ "$1" == "edge (4,0) at 4" ]; then echo fc00:42:0:b::1 ; fi ; if [ "$1" == "edge (4,0) at 0" ]; then echo fc00:42:0:b::2 ; fi ; if [ "$1" == "ifname (4,3) at 4" ]; then echo 4-3 ; fi ; if [ "$1" == "ifname (4,3) at 3" ]; then echo 3-1 ; fi ; if [ "$1" == "edge (4,3) at 4" ]; then echo fc00:42:0:e::1 ; fi ; if [ "$1" == "edge (4,3) at 3" ]; then echo fc00:42:0:e::2 ; fi ; if [ "$1" == "ifname (4,1) at 4" ]; then echo 4-1 ; fi ; if [ "$1" == "ifname (4,1) at 1" ]; then echo 1-2 ; fi ; if [ "$1" == "edge (4,1) at 4" ]; then echo fc00:42:0:c::1 ; fi ; if [ "$1" == "edge (4,1) at 1" ]; then echo fc00:42:0:c::2 ; fi ; if [ "$1" == "ifname (4,21) at 4" ]; then echo 4-4 ; fi ; if [ "$1" == "ifname (4,21) at 21" ]; then echo 21-0 ; fi ; if [ "$1" == "edge (4,21) at 4" ]; then echo fc00:42:0:18::2 ; fi ; if [ "$1" == "edge (4,21) at 21" ]; then echo fc00:42:0:18::1 ; fi ; if [ "$1" == "ifname (4,24) at 4" ]; then echo 4-7 ; fi ; if [ "$1" == "ifname (4,24) at 24" ]; then echo 24-0 ; fi ; if [ "$1" == "edge (4,24) at 4" ]; then echo fc00:42:0:1e::2 ; fi ; if [ "$1" == "edge (4,24) at 24" ]; then echo fc00:42:0:1e::1 ; fi ; if [ "$1" == "ifname (4,23) at 4" ]; then echo 4-6 ; fi ; if [ "$1" == "ifname (4,23) at 23" ]; then echo 23-0 ; fi ; if [ "$1" == "edge (4,23) at 4" ]; then echo fc00:42:0:1c::2 ; fi ; if [ "$1" == "edge (4,23) at 23" ]; then echo fc00:42:0:1c::1 ; fi ; if [ "$1" == "ifname (4,2) at 4" ]; then echo 4-2 ; fi ; if [ "$1" == "ifname (4,2) at 2" ]; then echo 2-2 ; fi ; if [ "$1" == "edge (4,2) at 4" ]; then echo fc00:42:0:d::1 ; fi ; if [ "$1" == "edge (4,2) at 2" ]; then echo fc00:42:0:d::2 ; fi ; if [ "$1" == "14" ]; then echo fc00:2:0:b::1 ; fi ; if [ "$1" == "ifname (14,0) at 14" ]; then echo 14-0 ; fi ; if [ "$1" == "ifname (14,0) at 0" ]; then echo 0-5 ; fi ; if [ "$1" == "edge (14,0) at 14" ]; then echo fc00:42:0:16::2 ; fi ; if [ "$1" == "edge (14,0) at 0" ]; then echo fc00:42:0:16::1 ; fi ; if [ "$1" == "2" ]; then echo fc00:2:0:c::1 ; fi ; if [ "$1" == "ifname (2,3) at 2" ]; then echo 2-1 ; fi ; if [ "$1" == "ifname (2,3) at 3" ]; then echo 3-0 ; fi ; if [ "$1" == "edge (2,3) at 2" ]; then echo fc00:42:0:6::2 ; fi ; if [ "$1" == "edge (2,3) at 3" ]; then echo fc00:42:0:6::1 ; fi ; if [ "$1" == "ifname (2,1) at 2" ]; then echo 2-0 ; fi ; if [ "$1" == "ifname (2,1) at 1" ]; then echo 1-1 ; fi ; if [ "$1" == "edge (2,1) at 2" ]; then echo fc00:42:0:4::1 ; fi ; if [ "$1" == "edge (2,1) at 1" ]; then echo fc00:42:0:4::2 ; fi ; if [ "$1" == "ifname (2,4) at 2" ]; then echo 2-2 ; fi ; if [ "$1" == "ifname (2,4) at 4" ]; then echo 4-2 ; fi ; if [ "$1" == "edge (2,4) at 2" ]; then echo fc00:42:0:d::2 ; fi ; if [ "$1" == "edge (2,4) at 4" ]; then echo fc00:42:0:d::1 ; fi ; if [ "$1" == "11" ]; then echo fc00:2:0:d::1 ; fi ; if [ "$1" == "ifname (11,0) at 11" ]; then echo 11-0 ; fi ; if [ "$1" == "ifname (11,0) at 0" ]; then echo 0-2 ; fi ; if [ "$1" == "edge (11,0) at 11" ]; then echo fc00:42:0:13::2 ; fi ; if [ "$1" == "edge (11,0) at 0" ]; then echo fc00:42:0:13::1 ; fi ; exit; fi
if [ "$1" == "--stop" ]; then ip netns exec 22 bash -c "${PYTHON_CURR_DIR}/throughput.py -e -i 22.throughput.json -o 22.throughput.json" ; ip netns exec 0 bash -c "${PYTHON_CURR_DIR}/throughput.py -e -i 0.throughput.json -o 0.throughput.json" ; ip netns exec 3 bash -c "${PYTHON_CURR_DIR}/throughput.py -e -i 3.throughput.json -o 3.throughput.json" ; ip netns exec 1 bash -c "${PYTHON_CURR_DIR}/throughput.py -e -i 1.throughput.json -o 1.throughput.json" ; ip netns exec 21 bash -c "${PYTHON_CURR_DIR}/throughput.py -e -i 21.throughput.json -o 21.throughput.json" ; ip netns exec 12 bash -c "${PYTHON_CURR_DIR}/throughput.py -e -i 12.throughput.json -o 12.throughput.json" ; ip netns exec 24 bash -c "${PYTHON_CURR_DIR}/throughput.py -e -i 24.throughput.json -o 24.throughput.json" ; ip netns exec 13 bash -c "${PYTHON_CURR_DIR}/throughput.py -e -i 13.throughput.json -o 13.throughput.json" ; ip netns exec 23 bash -c "${PYTHON_CURR_DIR}/throughput.py -e -i 23.throughput.json -o 23.throughput.json" ; ip netns exec 4 bash -c "${PYTHON_CURR_DIR}/throughput.py -e -i 4.throughput.json -o 4.throughput.json" ; ip netns exec 14 bash -c "${PYTHON_CURR_DIR}/throughput.py -e -i 14.throughput.json -o 14.throughput.json" ; ip netns exec 2 bash -c "${PYTHON_CURR_DIR}/throughput.py -e -i 2.throughput.json -o 2.throughput.json" ; ip netns exec 11 bash -c "${PYTHON_CURR_DIR}/throughput.py -e -i 11.throughput.json -o 11.throughput.json" ; ip netns pids 22 | xargs kill -9 ; ip netns del 22 ; ip netns pids 0 | xargs kill -9 ; ip netns del 0 ; ip netns pids 3 | xargs kill -9 ; ip netns del 3 ; ip netns pids 1 | xargs kill -9 ; ip netns del 1 ; ip netns pids 21 | xargs kill -9 ; ip netns del 21 ; ip netns pids 12 | xargs kill -9 ; ip netns del 12 ; ip netns pids 24 | xargs kill -9 ; ip netns del 24 ; ip netns pids 13 | xargs kill -9 ; ip netns del 13 ; ip netns pids 23 | xargs kill -9 ; ip netns del 23 ; ip netns pids 4 | xargs kill -9 ; ip netns del 4 ; ip netns pids 14 | xargs kill -9 ; ip netns del 14 ; ip netns pids 2 | xargs kill -9 ; ip netns del 2 ; ip netns pids 11 | xargs kill -9 ; ip netns del 11 ;  exit ;  fi 
if [ "$1" == "--link" ]; then shift; if false; then :;  elif [ "$1" == "edge (22,4)" ]; then  ip netns exec 22 bash -c "ifconfig 22-0 $2 " ;  ip netns exec 4 bash -c "ifconfig 4-5 $2 " ;  elif [ "$1" == "edge (0,1)" ]; then  ip netns exec 0 bash -c "ifconfig 0-0 $2 " ;  ip netns exec 1 bash -c "ifconfig 1-0 $2 " ;  elif [ "$1" == "edge (0,12)" ]; then  ip netns exec 0 bash -c "ifconfig 0-3 $2 " ;  ip netns exec 12 bash -c "ifconfig 12-0 $2 " ;  elif [ "$1" == "edge (0,13)" ]; then  ip netns exec 0 bash -c "ifconfig 0-4 $2 " ;  ip netns exec 13 bash -c "ifconfig 13-0 $2 " ;  elif [ "$1" == "edge (0,4)" ]; then  ip netns exec 0 bash -c "ifconfig 0-1 $2 " ;  ip netns exec 4 bash -c "ifconfig 4-0 $2 " ;  elif [ "$1" == "edge (0,14)" ]; then  ip netns exec 0 bash -c "ifconfig 0-5 $2 " ;  ip netns exec 14 bash -c "ifconfig 14-0 $2 " ;  elif [ "$1" == "edge (0,11)" ]; then  ip netns exec 0 bash -c "ifconfig 0-2 $2 " ;  ip netns exec 11 bash -c "ifconfig 11-0 $2 " ;  elif [ "$1" == "edge (3,4)" ]; then  ip netns exec 3 bash -c "ifconfig 3-1 $2 " ;  ip netns exec 4 bash -c "ifconfig 4-3 $2 " ;  elif [ "$1" == "edge (3,2)" ]; then  ip netns exec 3 bash -c "ifconfig 3-0 $2 " ;  ip netns exec 2 bash -c "ifconfig 2-1 $2 " ;  elif [ "$1" == "edge (1,0)" ]; then  ip netns exec 1 bash -c "ifconfig 1-0 $2 " ;  ip netns exec 0 bash -c "ifconfig 0-0 $2 " ;  elif [ "$1" == "edge (1,4)" ]; then  ip netns exec 1 bash -c "ifconfig 1-2 $2 " ;  ip netns exec 4 bash -c "ifconfig 4-1 $2 " ;  elif [ "$1" == "edge (1,2)" ]; then  ip netns exec 1 bash -c "ifconfig 1-1 $2 " ;  ip netns exec 2 bash -c "ifconfig 2-0 $2 " ;  elif [ "$1" == "edge (21,4)" ]; then  ip netns exec 21 bash -c "ifconfig 21-0 $2 " ;  ip netns exec 4 bash -c "ifconfig 4-4 $2 " ;  elif [ "$1" == "edge (12,0)" ]; then  ip netns exec 12 bash -c "ifconfig 12-0 $2 " ;  ip netns exec 0 bash -c "ifconfig 0-3 $2 " ;  elif [ "$1" == "edge (24,4)" ]; then  ip netns exec 24 bash -c "ifconfig 24-0 $2 " ;  ip netns exec 4 bash -c "ifconfig 4-7 $2 " ;  elif [ "$1" == "edge (13,0)" ]; then  ip netns exec 13 bash -c "ifconfig 13-0 $2 " ;  ip netns exec 0 bash -c "ifconfig 0-4 $2 " ;  elif [ "$1" == "edge (23,4)" ]; then  ip netns exec 23 bash -c "ifconfig 23-0 $2 " ;  ip netns exec 4 bash -c "ifconfig 4-6 $2 " ;  elif [ "$1" == "edge (4,22)" ]; then  ip netns exec 4 bash -c "ifconfig 4-5 $2 " ;  ip netns exec 22 bash -c "ifconfig 22-0 $2 " ;  elif [ "$1" == "edge (4,0)" ]; then  ip netns exec 4 bash -c "ifconfig 4-0 $2 " ;  ip netns exec 0 bash -c "ifconfig 0-1 $2 " ;  elif [ "$1" == "edge (4,3)" ]; then  ip netns exec 4 bash -c "ifconfig 4-3 $2 " ;  ip netns exec 3 bash -c "ifconfig 3-1 $2 " ;  elif [ "$1" == "edge (4,1)" ]; then  ip netns exec 4 bash -c "ifconfig 4-1 $2 " ;  ip netns exec 1 bash -c "ifconfig 1-2 $2 " ;  elif [ "$1" == "edge (4,21)" ]; then  ip netns exec 4 bash -c "ifconfig 4-4 $2 " ;  ip netns exec 21 bash -c "ifconfig 21-0 $2 " ;  elif [ "$1" == "edge (4,24)" ]; then  ip netns exec 4 bash -c "ifconfig 4-7 $2 " ;  ip netns exec 24 bash -c "ifconfig 24-0 $2 " ;  elif [ "$1" == "edge (4,23)" ]; then  ip netns exec 4 bash -c "ifconfig 4-6 $2 " ;  ip netns exec 23 bash -c "ifconfig 23-0 $2 " ;  elif [ "$1" == "edge (4,2)" ]; then  ip netns exec 4 bash -c "ifconfig 4-2 $2 " ;  ip netns exec 2 bash -c "ifconfig 2-2 $2 " ;  elif [ "$1" == "edge (14,0)" ]; then  ip netns exec 14 bash -c "ifconfig 14-0 $2 " ;  ip netns exec 0 bash -c "ifconfig 0-5 $2 " ;  elif [ "$1" == "edge (2,3)" ]; then  ip netns exec 2 bash -c "ifconfig 2-1 $2 " ;  ip netns exec 3 bash -c "ifconfig 3-0 $2 " ;  elif [ "$1" == "edge (2,1)" ]; then  ip netns exec 2 bash -c "ifconfig 2-0 $2 " ;  ip netns exec 1 bash -c "ifconfig 1-1 $2 " ;  elif [ "$1" == "edge (2,4)" ]; then  ip netns exec 2 bash -c "ifconfig 2-2 $2 " ;  ip netns exec 4 bash -c "ifconfig 4-2 $2 " ;  elif [ "$1" == "edge (11,0)" ]; then  ip netns exec 11 bash -c "ifconfig 11-0 $2 " ;  ip netns exec 0 bash -c "ifconfig 0-2 $2 " ;  fi;  exit;  fi 
set -x 


ip netns add 22
ip netns add 0
ip netns add 3
ip netns add 1
ip netns add 21
ip netns add 12
ip netns add 24
ip netns add 13
ip netns add 23
ip netns add 4
ip netns add 14
ip netns add 2
ip netns add 11
ip link add name 0-0 type veth peer name 1-0
ip link set 0-0 netns 0
ip link set 1-0 netns 1
ip link add name 1-1 type veth peer name 2-0
ip link set 1-1 netns 1
ip link set 2-0 netns 2
ip link add name 2-1 type veth peer name 3-0
ip link set 2-1 netns 2
ip link set 3-0 netns 3
ip link add name 0-1 type veth peer name 4-0
ip link set 0-1 netns 0
ip link set 4-0 netns 4
ip link add name 1-2 type veth peer name 4-1
ip link set 1-2 netns 1
ip link set 4-1 netns 4
ip link add name 2-2 type veth peer name 4-2
ip link set 2-2 netns 2
ip link set 4-2 netns 4
ip link add name 3-1 type veth peer name 4-3
ip link set 3-1 netns 3
ip link set 4-3 netns 4
ip link add name 11-0 type veth peer name 0-2
ip link set 11-0 netns 11
ip link set 0-2 netns 0
ip link add name 12-0 type veth peer name 0-3
ip link set 12-0 netns 12
ip link set 0-3 netns 0
ip link add name 13-0 type veth peer name 0-4
ip link set 13-0 netns 13
ip link set 0-4 netns 0
ip link add name 14-0 type veth peer name 0-5
ip link set 14-0 netns 14
ip link set 0-5 netns 0
ip link add name 4-4 type veth peer name 21-0
ip link set 4-4 netns 4
ip link set 21-0 netns 21
ip link add name 4-5 type veth peer name 22-0
ip link set 4-5 netns 4
ip link set 22-0 netns 22
ip link add name 4-6 type veth peer name 23-0
ip link set 4-6 netns 4
ip link set 23-0 netns 23
ip link add name 4-7 type veth peer name 24-0
ip link set 4-7 netns 4
ip link set 24-0 netns 24

# Commands for namespace 22
ip netns exec 22 bash -c 'ifconfig lo up'
ip netns exec 22 bash -c 'ip -6 ad ad fc00:2:0:1::1/64 dev lo'
ip netns exec 22 bash -c 'sysctl net.ipv6.conf.all.forwarding=1'
ip netns exec 22 bash -c 'sysctl net.ipv6.conf.all.seg6_enabled=1'
ip netns exec 22 bash -c '# Edge 22 - 4'
ip netns exec 22 bash -c 'ifconfig 22-0 add fc00:42:0:1a::1/64 up'
ip netns exec 22 bash -c 'sysctl net.ipv6.conf.22-0.seg6_enabled=1'
ip netns exec 22 bash -c 'tc qdisc add dev 22-0 root handle 1: htb'
ip netns exec 22 bash -c 'tc class add dev 22-0 parent 1: classid 1:1 htb rate 1000000kbit ceil 1000000kbit'
ip netns exec 22 bash -c 'tc filter add dev 22-0 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 22 bash -c 'tc qdisc add dev 22-0 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 22 bash -c 'ip -6 ro ad fc00:2:0:2::1/64 via fc00:42:0:1a::2 metric 9000 src fc00:2:0:1::1'
ip netns exec 22 bash -c 'ip -6 ro ad fc00:2:0:3::1/64 via fc00:42:0:1a::2 metric 8000 src fc00:2:0:1::1'
ip netns exec 22 bash -c 'ip -6 ro ad fc00:2:0:4::1/64 via fc00:42:0:1a::2 metric 10000 src fc00:2:0:1::1'
ip netns exec 22 bash -c 'ip -6 ro ad fc00:2:0:5::1/64 via fc00:42:0:1a::2 metric 2000 src fc00:2:0:1::1'
ip netns exec 22 bash -c 'ip -6 ro ad fc00:2:0:6::1/64 via fc00:42:0:1a::2 metric 12000 src fc00:2:0:1::1'
ip netns exec 22 bash -c 'ip -6 ro ad fc00:2:0:7::1/64 via fc00:42:0:1a::2 metric 2000 src fc00:2:0:1::1'
ip netns exec 22 bash -c 'ip -6 ro ad fc00:2:0:8::1/64 via fc00:42:0:1a::2 metric 10000 src fc00:2:0:1::1'
ip netns exec 22 bash -c 'ip -6 ro ad fc00:2:0:9::1/64 via fc00:42:0:1a::2 metric 2000 src fc00:2:0:1::1'
ip netns exec 22 bash -c 'ip -6 ro ad fc00:2:0:a::1/64 via fc00:42:0:1a::2 metric 1000 src fc00:2:0:1::1'
ip netns exec 22 bash -c 'ip -6 ro ad fc00:2:0:b::1/64 via fc00:42:0:1a::2 metric 10000 src fc00:2:0:1::1'
ip netns exec 22 bash -c 'ip -6 ro ad fc00:2:0:c::1/64 via fc00:42:0:1a::2 metric 10000 src fc00:2:0:1::1'
ip netns exec 22 bash -c 'ip -6 ro ad fc00:2:0:d::1/64 via fc00:42:0:1a::2 metric 10000 src fc00:2:0:1::1'
ip netns exec 22 bash -c 'nuttcp -6 -S'
ip netns exec 22 bash -c "${PYTHON_CURR_DIR}/throughput.py -o 22.throughput.json -s"
ip netns exec 22 bash -c 'sysctl net.ipv6.fib_multipath_hash_policy=1'

# Commands for namespace 0
ip netns exec 0 bash -c 'ifconfig lo up'
ip netns exec 0 bash -c 'ip -6 ad ad fc00:2:0:2::1/64 dev lo'
ip netns exec 0 bash -c 'sysctl net.ipv6.conf.all.forwarding=1'
ip netns exec 0 bash -c 'sysctl net.ipv6.conf.all.seg6_enabled=1'
ip netns exec 0 bash -c '# Edge 0 - 1'
ip netns exec 0 bash -c 'ifconfig 0-0 add fc00:42:0:2::2/64 up'
ip netns exec 0 bash -c 'sysctl net.ipv6.conf.0-0.seg6_enabled=1'
ip netns exec 0 bash -c 'tc qdisc add dev 0-0 root handle 1: htb'
ip netns exec 0 bash -c 'tc class add dev 0-0 parent 1: classid 1:1 htb rate 4000000kbit ceil 4000000kbit'
ip netns exec 0 bash -c 'tc filter add dev 0-0 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 0 bash -c 'tc qdisc add dev 0-0 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 0 bash -c '# Edge 0 - 4'
ip netns exec 0 bash -c 'ifconfig 0-1 add fc00:42:0:b::2/64 up'
ip netns exec 0 bash -c 'sysctl net.ipv6.conf.0-1.seg6_enabled=1'
ip netns exec 0 bash -c 'tc qdisc add dev 0-1 root handle 1: htb'
ip netns exec 0 bash -c 'tc class add dev 0-1 parent 1: classid 1:1 htb rate 12000kbit ceil 12000kbit'
ip netns exec 0 bash -c 'tc filter add dev 0-1 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 0 bash -c 'tc qdisc add dev 0-1 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 0 bash -c '# Edge 0 - 11'
ip netns exec 0 bash -c 'ifconfig 0-2 add fc00:42:0:13::1/64 up'
ip netns exec 0 bash -c 'sysctl net.ipv6.conf.0-2.seg6_enabled=1'
ip netns exec 0 bash -c 'tc qdisc add dev 0-2 root handle 1: htb'
ip netns exec 0 bash -c 'tc class add dev 0-2 parent 1: classid 1:1 htb rate 1000000kbit ceil 1000000kbit'
ip netns exec 0 bash -c 'tc filter add dev 0-2 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 0 bash -c 'tc qdisc add dev 0-2 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 0 bash -c '# Edge 0 - 12'
ip netns exec 0 bash -c 'ifconfig 0-3 add fc00:42:0:14::1/64 up'
ip netns exec 0 bash -c 'sysctl net.ipv6.conf.0-3.seg6_enabled=1'
ip netns exec 0 bash -c 'tc qdisc add dev 0-3 root handle 1: htb'
ip netns exec 0 bash -c 'tc class add dev 0-3 parent 1: classid 1:1 htb rate 1000000kbit ceil 1000000kbit'
ip netns exec 0 bash -c 'tc filter add dev 0-3 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 0 bash -c 'tc qdisc add dev 0-3 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 0 bash -c '# Edge 0 - 13'
ip netns exec 0 bash -c 'ifconfig 0-4 add fc00:42:0:15::1/64 up'
ip netns exec 0 bash -c 'sysctl net.ipv6.conf.0-4.seg6_enabled=1'
ip netns exec 0 bash -c 'tc qdisc add dev 0-4 root handle 1: htb'
ip netns exec 0 bash -c 'tc class add dev 0-4 parent 1: classid 1:1 htb rate 1000000kbit ceil 1000000kbit'
ip netns exec 0 bash -c 'tc filter add dev 0-4 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 0 bash -c 'tc qdisc add dev 0-4 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 0 bash -c '# Edge 0 - 14'
ip netns exec 0 bash -c 'ifconfig 0-5 add fc00:42:0:16::1/64 up'
ip netns exec 0 bash -c 'sysctl net.ipv6.conf.0-5.seg6_enabled=1'
ip netns exec 0 bash -c 'tc qdisc add dev 0-5 root handle 1: htb'
ip netns exec 0 bash -c 'tc class add dev 0-5 parent 1: classid 1:1 htb rate 1000000kbit ceil 1000000kbit'
ip netns exec 0 bash -c 'tc filter add dev 0-5 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 0 bash -c 'tc qdisc add dev 0-5 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 0 bash -c 'ip -6 ro ad fc00:2:0:1::1/64 metric 20000 src fc00:2:0:2::1 nexthop via fc00:42:0:b::1 weight 1 nexthop via fc00:42:0:2::1 weight 1 '
ip netns exec 0 bash -c 'ip -6 ro ad fc00:2:0:3::1/64 via fc00:42:0:2::1 metric 13000 src fc00:2:0:2::1'
ip netns exec 0 bash -c 'ip -6 ro ad fc00:2:0:4::1/64 via fc00:42:0:2::1 metric 1000 src fc00:2:0:2::1'
ip netns exec 0 bash -c 'ip -6 ro ad fc00:2:0:5::1/64 metric 20000 src fc00:2:0:2::1 nexthop via fc00:42:0:b::1 weight 1 nexthop via fc00:42:0:2::1 weight 1 '
ip netns exec 0 bash -c 'ip -6 ro ad fc00:2:0:6::1/64 via fc00:42:0:14::2 metric 3000 src fc00:2:0:2::1'
ip netns exec 0 bash -c 'ip -6 ro ad fc00:2:0:7::1/64 metric 20000 src fc00:2:0:2::1 nexthop via fc00:42:0:b::1 weight 1 nexthop via fc00:42:0:2::1 weight 1 '
ip netns exec 0 bash -c 'ip -6 ro ad fc00:2:0:8::1/64 via fc00:42:0:15::2 metric 1000 src fc00:2:0:2::1'
ip netns exec 0 bash -c 'ip -6 ro ad fc00:2:0:9::1/64 metric 20000 src fc00:2:0:2::1 nexthop via fc00:42:0:b::1 weight 1 nexthop via fc00:42:0:2::1 weight 1 '
ip netns exec 0 bash -c 'ip -6 ro ad fc00:2:0:a::1/64 metric 19000 src fc00:2:0:2::1 nexthop via fc00:42:0:b::1 weight 1 nexthop via fc00:42:0:2::1 weight 1 '
ip netns exec 0 bash -c 'ip -6 ro ad fc00:2:0:b::1/64 via fc00:42:0:16::2 metric 1000 src fc00:2:0:2::1'
ip netns exec 0 bash -c 'ip -6 ro ad fc00:2:0:c::1/64 via fc00:42:0:2::1 metric 2000 src fc00:2:0:2::1'
ip netns exec 0 bash -c 'ip -6 ro ad fc00:2:0:d::1/64 via fc00:42:0:13::2 metric 1000 src fc00:2:0:2::1'
ip netns exec 0 bash -c "${PYTHON_CURR_DIR}/throughput.py -o 0.throughput.json -s"
ip netns exec 0 bash -c 'sysctl net.ipv6.fib_multipath_hash_policy=1'

# Commands for namespace 3
ip netns exec 3 bash -c 'ifconfig lo up'
ip netns exec 3 bash -c 'ip -6 ad ad fc00:2:0:3::1/64 dev lo'
ip netns exec 3 bash -c 'sysctl net.ipv6.conf.all.forwarding=1'
ip netns exec 3 bash -c 'sysctl net.ipv6.conf.all.seg6_enabled=1'
ip netns exec 3 bash -c '# Edge 3 - 2'
ip netns exec 3 bash -c 'ifconfig 3-0 add fc00:42:0:6::1/64 up'
ip netns exec 3 bash -c 'sysctl net.ipv6.conf.3-0.seg6_enabled=1'
ip netns exec 3 bash -c 'tc qdisc add dev 3-0 root handle 1: htb'
ip netns exec 3 bash -c 'tc class add dev 3-0 parent 1: classid 1:1 htb rate 4000000kbit ceil 4000000kbit'
ip netns exec 3 bash -c 'tc filter add dev 3-0 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 3 bash -c 'tc qdisc add dev 3-0 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 3 bash -c '# Edge 3 - 4'
ip netns exec 3 bash -c 'ifconfig 3-1 add fc00:42:0:e::2/64 up'
ip netns exec 3 bash -c 'sysctl net.ipv6.conf.3-1.seg6_enabled=1'
ip netns exec 3 bash -c 'tc qdisc add dev 3-1 root handle 1: htb'
ip netns exec 3 bash -c 'tc class add dev 3-1 parent 1: classid 1:1 htb rate 12000kbit ceil 12000kbit'
ip netns exec 3 bash -c 'tc filter add dev 3-1 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 3 bash -c 'tc qdisc add dev 3-1 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 3 bash -c 'ip -6 ro ad fc00:2:0:1::1/64 via fc00:42:0:e::1 metric 19000 src fc00:2:0:3::1'
ip netns exec 3 bash -c 'ip -6 ro ad fc00:2:0:2::1/64 via fc00:42:0:6::2 metric 4000 src fc00:2:0:3::1'
ip netns exec 3 bash -c 'ip -6 ro ad fc00:2:0:4::1/64 via fc00:42:0:6::2 metric 3000 src fc00:2:0:3::1'
ip netns exec 3 bash -c 'ip -6 ro ad fc00:2:0:5::1/64 via fc00:42:0:e::1 metric 19000 src fc00:2:0:3::1'
ip netns exec 3 bash -c 'ip -6 ro ad fc00:2:0:6::1/64 via fc00:42:0:6::2 metric 7000 src fc00:2:0:3::1'
ip netns exec 3 bash -c 'ip -6 ro ad fc00:2:0:7::1/64 via fc00:42:0:e::1 metric 19000 src fc00:2:0:3::1'
ip netns exec 3 bash -c 'ip -6 ro ad fc00:2:0:8::1/64 via fc00:42:0:6::2 metric 5000 src fc00:2:0:3::1'
ip netns exec 3 bash -c 'ip -6 ro ad fc00:2:0:9::1/64 via fc00:42:0:e::1 metric 19000 src fc00:2:0:3::1'
ip netns exec 3 bash -c 'ip -6 ro ad fc00:2:0:a::1/64 via fc00:42:0:e::1 metric 18000 src fc00:2:0:3::1'
ip netns exec 3 bash -c 'ip -6 ro ad fc00:2:0:b::1/64 via fc00:42:0:6::2 metric 5000 src fc00:2:0:3::1'
ip netns exec 3 bash -c 'ip -6 ro ad fc00:2:0:c::1/64 via fc00:42:0:6::2 metric 2000 src fc00:2:0:3::1'
ip netns exec 3 bash -c 'ip -6 ro ad fc00:2:0:d::1/64 via fc00:42:0:6::2 metric 5000 src fc00:2:0:3::1'
ip netns exec 3 bash -c "${PYTHON_CURR_DIR}/throughput.py -o 3.throughput.json -s"
ip netns exec 3 bash -c 'sysctl net.ipv6.fib_multipath_hash_policy=1'

# Commands for namespace 1
ip netns exec 1 bash -c 'ifconfig lo up'
ip netns exec 1 bash -c 'ip -6 ad ad fc00:2:0:4::1/64 dev lo'
ip netns exec 1 bash -c 'sysctl net.ipv6.conf.all.forwarding=1'
ip netns exec 1 bash -c 'sysctl net.ipv6.conf.all.seg6_enabled=1'
ip netns exec 1 bash -c '# Edge 1 - 0'
ip netns exec 1 bash -c 'ifconfig 1-0 add fc00:42:0:2::1/64 up'
ip netns exec 1 bash -c 'sysctl net.ipv6.conf.1-0.seg6_enabled=1'
ip netns exec 1 bash -c 'tc qdisc add dev 1-0 root handle 1: htb'
ip netns exec 1 bash -c 'tc class add dev 1-0 parent 1: classid 1:1 htb rate 4000000kbit ceil 4000000kbit'
ip netns exec 1 bash -c 'tc filter add dev 1-0 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 1 bash -c 'tc qdisc add dev 1-0 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 1 bash -c '# Edge 1 - 2'
ip netns exec 1 bash -c 'ifconfig 1-1 add fc00:42:0:4::2/64 up'
ip netns exec 1 bash -c 'sysctl net.ipv6.conf.1-1.seg6_enabled=1'
ip netns exec 1 bash -c 'tc qdisc add dev 1-1 root handle 1: htb'
ip netns exec 1 bash -c 'tc class add dev 1-1 parent 1: classid 1:1 htb rate 4000000kbit ceil 4000000kbit'
ip netns exec 1 bash -c 'tc filter add dev 1-1 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 1 bash -c 'tc qdisc add dev 1-1 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 1 bash -c '# Edge 1 - 4'
ip netns exec 1 bash -c 'ifconfig 1-2 add fc00:42:0:c::2/64 up'
ip netns exec 1 bash -c 'sysctl net.ipv6.conf.1-2.seg6_enabled=1'
ip netns exec 1 bash -c 'tc qdisc add dev 1-2 root handle 1: htb'
ip netns exec 1 bash -c 'tc class add dev 1-2 parent 1: classid 1:1 htb rate 12000kbit ceil 12000kbit'
ip netns exec 1 bash -c 'tc filter add dev 1-2 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 1 bash -c 'tc qdisc add dev 1-2 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 1 bash -c 'ip -6 ro ad fc00:2:0:1::1/64 metric 19000 src fc00:2:0:4::1 nexthop via fc00:42:0:c::1 weight 1 nexthop via fc00:42:0:4::1 weight 1 '
ip netns exec 1 bash -c 'ip -6 ro ad fc00:2:0:2::1/64 via fc00:42:0:2::2 metric 1000 src fc00:2:0:4::1'
ip netns exec 1 bash -c 'ip -6 ro ad fc00:2:0:3::1/64 via fc00:42:0:4::1 metric 12000 src fc00:2:0:4::1'
ip netns exec 1 bash -c 'ip -6 ro ad fc00:2:0:5::1/64 metric 19000 src fc00:2:0:4::1 nexthop via fc00:42:0:c::1 weight 1 nexthop via fc00:42:0:4::1 weight 1 '
ip netns exec 1 bash -c 'ip -6 ro ad fc00:2:0:6::1/64 via fc00:42:0:2::2 metric 4000 src fc00:2:0:4::1'
ip netns exec 1 bash -c 'ip -6 ro ad fc00:2:0:7::1/64 metric 19000 src fc00:2:0:4::1 nexthop via fc00:42:0:c::1 weight 1 nexthop via fc00:42:0:4::1 weight 1 '
ip netns exec 1 bash -c 'ip -6 ro ad fc00:2:0:8::1/64 via fc00:42:0:2::2 metric 2000 src fc00:2:0:4::1'
ip netns exec 1 bash -c 'ip -6 ro ad fc00:2:0:9::1/64 metric 19000 src fc00:2:0:4::1 nexthop via fc00:42:0:c::1 weight 1 nexthop via fc00:42:0:4::1 weight 1 '
ip netns exec 1 bash -c 'ip -6 ro ad fc00:2:0:a::1/64 metric 18000 src fc00:2:0:4::1 nexthop via fc00:42:0:c::1 weight 1 nexthop via fc00:42:0:4::1 weight 1 '
ip netns exec 1 bash -c 'ip -6 ro ad fc00:2:0:b::1/64 via fc00:42:0:2::2 metric 2000 src fc00:2:0:4::1'
ip netns exec 1 bash -c 'ip -6 ro ad fc00:2:0:c::1/64 via fc00:42:0:4::1 metric 1000 src fc00:2:0:4::1'
ip netns exec 1 bash -c 'ip -6 ro ad fc00:2:0:d::1/64 via fc00:42:0:2::2 metric 2000 src fc00:2:0:4::1'
ip netns exec 1 bash -c "${PYTHON_CURR_DIR}/throughput.py -o 1.throughput.json -s"
ip netns exec 1 bash -c 'sysctl net.ipv6.fib_multipath_hash_policy=1'

# Commands for namespace 21
ip netns exec 21 bash -c 'ifconfig lo up'
ip netns exec 21 bash -c 'ip -6 ad ad fc00:2:0:5::1/64 dev lo'
ip netns exec 21 bash -c 'sysctl net.ipv6.conf.all.forwarding=1'
ip netns exec 21 bash -c 'sysctl net.ipv6.conf.all.seg6_enabled=1'
ip netns exec 21 bash -c '# Edge 21 - 4'
ip netns exec 21 bash -c 'ifconfig 21-0 add fc00:42:0:18::1/64 up'
ip netns exec 21 bash -c 'sysctl net.ipv6.conf.21-0.seg6_enabled=1'
ip netns exec 21 bash -c 'tc qdisc add dev 21-0 root handle 1: htb'
ip netns exec 21 bash -c 'tc class add dev 21-0 parent 1: classid 1:1 htb rate 1000000kbit ceil 1000000kbit'
ip netns exec 21 bash -c 'tc filter add dev 21-0 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 21 bash -c 'tc qdisc add dev 21-0 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 21 bash -c 'ip -6 ro ad fc00:2:0:1::1/64 via fc00:42:0:18::2 metric 2000 src fc00:2:0:5::1'
ip netns exec 21 bash -c 'ip -6 ro ad fc00:2:0:2::1/64 via fc00:42:0:18::2 metric 9000 src fc00:2:0:5::1'
ip netns exec 21 bash -c 'ip -6 ro ad fc00:2:0:3::1/64 via fc00:42:0:18::2 metric 8000 src fc00:2:0:5::1'
ip netns exec 21 bash -c 'ip -6 ro ad fc00:2:0:4::1/64 via fc00:42:0:18::2 metric 10000 src fc00:2:0:5::1'
ip netns exec 21 bash -c 'ip -6 ro ad fc00:2:0:6::1/64 via fc00:42:0:18::2 metric 12000 src fc00:2:0:5::1'
ip netns exec 21 bash -c 'ip -6 ro ad fc00:2:0:7::1/64 via fc00:42:0:18::2 metric 2000 src fc00:2:0:5::1'
ip netns exec 21 bash -c 'ip -6 ro ad fc00:2:0:8::1/64 via fc00:42:0:18::2 metric 10000 src fc00:2:0:5::1'
ip netns exec 21 bash -c 'ip -6 ro ad fc00:2:0:9::1/64 via fc00:42:0:18::2 metric 2000 src fc00:2:0:5::1'
ip netns exec 21 bash -c 'ip -6 ro ad fc00:2:0:a::1/64 via fc00:42:0:18::2 metric 1000 src fc00:2:0:5::1'
ip netns exec 21 bash -c 'ip -6 ro ad fc00:2:0:b::1/64 via fc00:42:0:18::2 metric 10000 src fc00:2:0:5::1'
ip netns exec 21 bash -c 'ip -6 ro ad fc00:2:0:c::1/64 via fc00:42:0:18::2 metric 10000 src fc00:2:0:5::1'
ip netns exec 21 bash -c 'ip -6 ro ad fc00:2:0:d::1/64 via fc00:42:0:18::2 metric 10000 src fc00:2:0:5::1'
ip netns exec 21 bash -c 'nuttcp -6 -S'
ip netns exec 21 bash -c "${PYTHON_CURR_DIR}/throughput.py -o 21.throughput.json -s"
ip netns exec 21 bash -c 'sysctl net.ipv6.fib_multipath_hash_policy=1'

# Commands for namespace 12
ip netns exec 12 bash -c 'ifconfig lo up'
ip netns exec 12 bash -c 'ip -6 ad ad fc00:2:0:6::1/64 dev lo'
ip netns exec 12 bash -c 'sysctl net.ipv6.conf.all.forwarding=1'
ip netns exec 12 bash -c 'sysctl net.ipv6.conf.all.seg6_enabled=1'
ip netns exec 12 bash -c '# Edge 12 - 0'
ip netns exec 12 bash -c 'ifconfig 12-0 add fc00:42:0:14::2/64 up'
ip netns exec 12 bash -c 'sysctl net.ipv6.conf.12-0.seg6_enabled=1'
ip netns exec 12 bash -c 'tc qdisc add dev 12-0 root handle 1: htb'
ip netns exec 12 bash -c 'tc class add dev 12-0 parent 1: classid 1:1 htb rate 1000000kbit ceil 1000000kbit'
ip netns exec 12 bash -c 'tc filter add dev 12-0 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 12 bash -c 'tc qdisc add dev 12-0 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 12 bash -c 'ip -6 ro ad fc00:2:0:1::1/64 via fc00:42:0:14::1 metric 21000 src fc00:2:0:6::1'
ip netns exec 12 bash -c 'ip -6 ro ad fc00:2:0:2::1/64 via fc00:42:0:14::1 metric 1000 src fc00:2:0:6::1'
ip netns exec 12 bash -c 'ip -6 ro ad fc00:2:0:3::1/64 via fc00:42:0:14::1 metric 14000 src fc00:2:0:6::1'
ip netns exec 12 bash -c 'ip -6 ro ad fc00:2:0:4::1/64 via fc00:42:0:14::1 metric 2000 src fc00:2:0:6::1'
ip netns exec 12 bash -c 'ip -6 ro ad fc00:2:0:5::1/64 via fc00:42:0:14::1 metric 21000 src fc00:2:0:6::1'
ip netns exec 12 bash -c 'ip -6 ro ad fc00:2:0:7::1/64 via fc00:42:0:14::1 metric 21000 src fc00:2:0:6::1'
ip netns exec 12 bash -c 'ip -6 ro ad fc00:2:0:8::1/64 via fc00:42:0:14::1 metric 2000 src fc00:2:0:6::1'
ip netns exec 12 bash -c 'ip -6 ro ad fc00:2:0:9::1/64 via fc00:42:0:14::1 metric 21000 src fc00:2:0:6::1'
ip netns exec 12 bash -c 'ip -6 ro ad fc00:2:0:a::1/64 via fc00:42:0:14::1 metric 20000 src fc00:2:0:6::1'
ip netns exec 12 bash -c 'ip -6 ro ad fc00:2:0:b::1/64 via fc00:42:0:14::1 metric 2000 src fc00:2:0:6::1'
ip netns exec 12 bash -c 'ip -6 ro ad fc00:2:0:c::1/64 via fc00:42:0:14::1 metric 3000 src fc00:2:0:6::1'
ip netns exec 12 bash -c 'ip -6 ro ad fc00:2:0:d::1/64 via fc00:42:0:14::1 metric 2000 src fc00:2:0:6::1'
ip netns exec 12 bash -c 'ip -6 route add fc00:2:0:1::1 metric 1 table 1 src fc00:2:0:6::1   nexthop via fc00:42:0:14::1  encap seg6 mode inline segs fc00:2:0:a::1  weight 100 '
ip netns exec 12 bash -c 'ip -6 rule add to fc00:2:0:1::1 iif lo table 1'
ip netns exec 12 bash -c 'printf "%s\n" "until ip netns exec 12 nuttcp -T120 -i1 -R10000 -N8 fc00:2:0:1::1 >>flow_12-22.txt 2>&1; do sleep 2; echo RTY: \$SECONDS >>flow_12-22.txt; done" | at now+2min'
ip netns exec 12 bash -c "${PYTHON_CURR_DIR}/throughput.py -o 12.throughput.json -s"
ip netns exec 12 bash -c 'sysctl net.ipv6.fib_multipath_hash_policy=1'

# Commands for namespace 24
ip netns exec 24 bash -c 'ifconfig lo up'
ip netns exec 24 bash -c 'ip -6 ad ad fc00:2:0:7::1/64 dev lo'
ip netns exec 24 bash -c 'sysctl net.ipv6.conf.all.forwarding=1'
ip netns exec 24 bash -c 'sysctl net.ipv6.conf.all.seg6_enabled=1'
ip netns exec 24 bash -c '# Edge 24 - 4'
ip netns exec 24 bash -c 'ifconfig 24-0 add fc00:42:0:1e::1/64 up'
ip netns exec 24 bash -c 'sysctl net.ipv6.conf.24-0.seg6_enabled=1'
ip netns exec 24 bash -c 'tc qdisc add dev 24-0 root handle 1: htb'
ip netns exec 24 bash -c 'tc class add dev 24-0 parent 1: classid 1:1 htb rate 1000000kbit ceil 1000000kbit'
ip netns exec 24 bash -c 'tc filter add dev 24-0 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 24 bash -c 'tc qdisc add dev 24-0 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 24 bash -c 'ip -6 ro ad fc00:2:0:1::1/64 via fc00:42:0:1e::2 metric 2000 src fc00:2:0:7::1'
ip netns exec 24 bash -c 'ip -6 ro ad fc00:2:0:2::1/64 via fc00:42:0:1e::2 metric 9000 src fc00:2:0:7::1'
ip netns exec 24 bash -c 'ip -6 ro ad fc00:2:0:3::1/64 via fc00:42:0:1e::2 metric 8000 src fc00:2:0:7::1'
ip netns exec 24 bash -c 'ip -6 ro ad fc00:2:0:4::1/64 via fc00:42:0:1e::2 metric 10000 src fc00:2:0:7::1'
ip netns exec 24 bash -c 'ip -6 ro ad fc00:2:0:5::1/64 via fc00:42:0:1e::2 metric 2000 src fc00:2:0:7::1'
ip netns exec 24 bash -c 'ip -6 ro ad fc00:2:0:6::1/64 via fc00:42:0:1e::2 metric 12000 src fc00:2:0:7::1'
ip netns exec 24 bash -c 'ip -6 ro ad fc00:2:0:8::1/64 via fc00:42:0:1e::2 metric 10000 src fc00:2:0:7::1'
ip netns exec 24 bash -c 'ip -6 ro ad fc00:2:0:9::1/64 via fc00:42:0:1e::2 metric 2000 src fc00:2:0:7::1'
ip netns exec 24 bash -c 'ip -6 ro ad fc00:2:0:a::1/64 via fc00:42:0:1e::2 metric 1000 src fc00:2:0:7::1'
ip netns exec 24 bash -c 'ip -6 ro ad fc00:2:0:b::1/64 via fc00:42:0:1e::2 metric 10000 src fc00:2:0:7::1'
ip netns exec 24 bash -c 'ip -6 ro ad fc00:2:0:c::1/64 via fc00:42:0:1e::2 metric 10000 src fc00:2:0:7::1'
ip netns exec 24 bash -c 'ip -6 ro ad fc00:2:0:d::1/64 via fc00:42:0:1e::2 metric 10000 src fc00:2:0:7::1'
ip netns exec 24 bash -c 'nuttcp -6 -S'
ip netns exec 24 bash -c "${PYTHON_CURR_DIR}/throughput.py -o 24.throughput.json -s"
ip netns exec 24 bash -c 'sysctl net.ipv6.fib_multipath_hash_policy=1'

# Commands for namespace 13
ip netns exec 13 bash -c 'ifconfig lo up'
ip netns exec 13 bash -c 'ip -6 ad ad fc00:2:0:8::1/64 dev lo'
ip netns exec 13 bash -c 'sysctl net.ipv6.conf.all.forwarding=1'
ip netns exec 13 bash -c 'sysctl net.ipv6.conf.all.seg6_enabled=1'
ip netns exec 13 bash -c '# Edge 13 - 0'
ip netns exec 13 bash -c 'ifconfig 13-0 add fc00:42:0:15::2/64 up'
ip netns exec 13 bash -c 'sysctl net.ipv6.conf.13-0.seg6_enabled=1'
ip netns exec 13 bash -c 'tc qdisc add dev 13-0 root handle 1: htb'
ip netns exec 13 bash -c 'tc class add dev 13-0 parent 1: classid 1:1 htb rate 1000000kbit ceil 1000000kbit'
ip netns exec 13 bash -c 'tc filter add dev 13-0 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 13 bash -c 'tc qdisc add dev 13-0 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 13 bash -c 'ip -6 ro ad fc00:2:0:1::1/64 via fc00:42:0:15::1 metric 21000 src fc00:2:0:8::1'
ip netns exec 13 bash -c 'ip -6 ro ad fc00:2:0:2::1/64 via fc00:42:0:15::1 metric 1000 src fc00:2:0:8::1'
ip netns exec 13 bash -c 'ip -6 ro ad fc00:2:0:3::1/64 via fc00:42:0:15::1 metric 14000 src fc00:2:0:8::1'
ip netns exec 13 bash -c 'ip -6 ro ad fc00:2:0:4::1/64 via fc00:42:0:15::1 metric 2000 src fc00:2:0:8::1'
ip netns exec 13 bash -c 'ip -6 ro ad fc00:2:0:5::1/64 via fc00:42:0:15::1 metric 21000 src fc00:2:0:8::1'
ip netns exec 13 bash -c 'ip -6 ro ad fc00:2:0:6::1/64 via fc00:42:0:15::1 metric 4000 src fc00:2:0:8::1'
ip netns exec 13 bash -c 'ip -6 ro ad fc00:2:0:7::1/64 via fc00:42:0:15::1 metric 21000 src fc00:2:0:8::1'
ip netns exec 13 bash -c 'ip -6 ro ad fc00:2:0:9::1/64 via fc00:42:0:15::1 metric 21000 src fc00:2:0:8::1'
ip netns exec 13 bash -c 'ip -6 ro ad fc00:2:0:a::1/64 via fc00:42:0:15::1 metric 20000 src fc00:2:0:8::1'
ip netns exec 13 bash -c 'ip -6 ro ad fc00:2:0:b::1/64 via fc00:42:0:15::1 metric 2000 src fc00:2:0:8::1'
ip netns exec 13 bash -c 'ip -6 ro ad fc00:2:0:c::1/64 via fc00:42:0:15::1 metric 3000 src fc00:2:0:8::1'
ip netns exec 13 bash -c 'ip -6 ro ad fc00:2:0:d::1/64 via fc00:42:0:15::1 metric 2000 src fc00:2:0:8::1'
ip netns exec 13 bash -c 'ip -6 route add fc00:2:0:9::1 metric 1 table 1 src fc00:2:0:8::1   nexthop via fc00:42:0:15::1  encap seg6 mode inline segs fc00:2:0:a::1  weight 100 '
ip netns exec 13 bash -c 'ip -6 rule add to fc00:2:0:9::1 iif lo table 1'
ip netns exec 13 bash -c 'printf "%s\n" "until ip netns exec 13 nuttcp -T120 -i1 -R10000 -N8 fc00:2:0:9::1 >>flow_13-23.txt 2>&1; do sleep 2; echo RTY: \$SECONDS >>flow_13-23.txt; done" | at now+2min'
ip netns exec 13 bash -c "${PYTHON_CURR_DIR}/throughput.py -o 13.throughput.json -s"
ip netns exec 13 bash -c 'sysctl net.ipv6.fib_multipath_hash_policy=1'

# Commands for namespace 23
ip netns exec 23 bash -c 'ifconfig lo up'
ip netns exec 23 bash -c 'ip -6 ad ad fc00:2:0:9::1/64 dev lo'
ip netns exec 23 bash -c 'sysctl net.ipv6.conf.all.forwarding=1'
ip netns exec 23 bash -c 'sysctl net.ipv6.conf.all.seg6_enabled=1'
ip netns exec 23 bash -c '# Edge 23 - 4'
ip netns exec 23 bash -c 'ifconfig 23-0 add fc00:42:0:1c::1/64 up'
ip netns exec 23 bash -c 'sysctl net.ipv6.conf.23-0.seg6_enabled=1'
ip netns exec 23 bash -c 'tc qdisc add dev 23-0 root handle 1: htb'
ip netns exec 23 bash -c 'tc class add dev 23-0 parent 1: classid 1:1 htb rate 1000000kbit ceil 1000000kbit'
ip netns exec 23 bash -c 'tc filter add dev 23-0 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 23 bash -c 'tc qdisc add dev 23-0 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 23 bash -c 'ip -6 ro ad fc00:2:0:1::1/64 via fc00:42:0:1c::2 metric 2000 src fc00:2:0:9::1'
ip netns exec 23 bash -c 'ip -6 ro ad fc00:2:0:2::1/64 via fc00:42:0:1c::2 metric 9000 src fc00:2:0:9::1'
ip netns exec 23 bash -c 'ip -6 ro ad fc00:2:0:3::1/64 via fc00:42:0:1c::2 metric 8000 src fc00:2:0:9::1'
ip netns exec 23 bash -c 'ip -6 ro ad fc00:2:0:4::1/64 via fc00:42:0:1c::2 metric 10000 src fc00:2:0:9::1'
ip netns exec 23 bash -c 'ip -6 ro ad fc00:2:0:5::1/64 via fc00:42:0:1c::2 metric 2000 src fc00:2:0:9::1'
ip netns exec 23 bash -c 'ip -6 ro ad fc00:2:0:6::1/64 via fc00:42:0:1c::2 metric 12000 src fc00:2:0:9::1'
ip netns exec 23 bash -c 'ip -6 ro ad fc00:2:0:7::1/64 via fc00:42:0:1c::2 metric 2000 src fc00:2:0:9::1'
ip netns exec 23 bash -c 'ip -6 ro ad fc00:2:0:8::1/64 via fc00:42:0:1c::2 metric 10000 src fc00:2:0:9::1'
ip netns exec 23 bash -c 'ip -6 ro ad fc00:2:0:a::1/64 via fc00:42:0:1c::2 metric 1000 src fc00:2:0:9::1'
ip netns exec 23 bash -c 'ip -6 ro ad fc00:2:0:b::1/64 via fc00:42:0:1c::2 metric 10000 src fc00:2:0:9::1'
ip netns exec 23 bash -c 'ip -6 ro ad fc00:2:0:c::1/64 via fc00:42:0:1c::2 metric 10000 src fc00:2:0:9::1'
ip netns exec 23 bash -c 'ip -6 ro ad fc00:2:0:d::1/64 via fc00:42:0:1c::2 metric 10000 src fc00:2:0:9::1'
ip netns exec 23 bash -c 'nuttcp -6 -S'
ip netns exec 23 bash -c "${PYTHON_CURR_DIR}/throughput.py -o 23.throughput.json -s"
ip netns exec 23 bash -c 'sysctl net.ipv6.fib_multipath_hash_policy=1'

# Commands for namespace 4
ip netns exec 4 bash -c 'ifconfig lo up'
ip netns exec 4 bash -c 'ip -6 ad ad fc00:2:0:a::1/64 dev lo'
ip netns exec 4 bash -c 'sysctl net.ipv6.conf.all.forwarding=1'
ip netns exec 4 bash -c 'sysctl net.ipv6.conf.all.seg6_enabled=1'
ip netns exec 4 bash -c '# Edge 4 - 0'
ip netns exec 4 bash -c 'ifconfig 4-0 add fc00:42:0:b::1/64 up'
ip netns exec 4 bash -c 'sysctl net.ipv6.conf.4-0.seg6_enabled=1'
ip netns exec 4 bash -c 'tc qdisc add dev 4-0 root handle 1: htb'
ip netns exec 4 bash -c 'tc class add dev 4-0 parent 1: classid 1:1 htb rate 12000kbit ceil 12000kbit'
ip netns exec 4 bash -c 'tc filter add dev 4-0 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 4 bash -c 'tc qdisc add dev 4-0 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 4 bash -c '# Edge 4 - 1'
ip netns exec 4 bash -c 'ifconfig 4-1 add fc00:42:0:c::1/64 up'
ip netns exec 4 bash -c 'sysctl net.ipv6.conf.4-1.seg6_enabled=1'
ip netns exec 4 bash -c 'tc qdisc add dev 4-1 root handle 1: htb'
ip netns exec 4 bash -c 'tc class add dev 4-1 parent 1: classid 1:1 htb rate 12000kbit ceil 12000kbit'
ip netns exec 4 bash -c 'tc filter add dev 4-1 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 4 bash -c 'tc qdisc add dev 4-1 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 4 bash -c '# Edge 4 - 2'
ip netns exec 4 bash -c 'ifconfig 4-2 add fc00:42:0:d::1/64 up'
ip netns exec 4 bash -c 'sysctl net.ipv6.conf.4-2.seg6_enabled=1'
ip netns exec 4 bash -c 'tc qdisc add dev 4-2 root handle 1: htb'
ip netns exec 4 bash -c 'tc class add dev 4-2 parent 1: classid 1:1 htb rate 12000kbit ceil 12000kbit'
ip netns exec 4 bash -c 'tc filter add dev 4-2 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 4 bash -c 'tc qdisc add dev 4-2 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 4 bash -c '# Edge 4 - 3'
ip netns exec 4 bash -c 'ifconfig 4-3 add fc00:42:0:e::1/64 up'
ip netns exec 4 bash -c 'sysctl net.ipv6.conf.4-3.seg6_enabled=1'
ip netns exec 4 bash -c 'tc qdisc add dev 4-3 root handle 1: htb'
ip netns exec 4 bash -c 'tc class add dev 4-3 parent 1: classid 1:1 htb rate 12000kbit ceil 12000kbit'
ip netns exec 4 bash -c 'tc filter add dev 4-3 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 4 bash -c 'tc qdisc add dev 4-3 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 4 bash -c '# Edge 4 - 21'
ip netns exec 4 bash -c 'ifconfig 4-4 add fc00:42:0:18::2/64 up'
ip netns exec 4 bash -c 'sysctl net.ipv6.conf.4-4.seg6_enabled=1'
ip netns exec 4 bash -c 'tc qdisc add dev 4-4 root handle 1: htb'
ip netns exec 4 bash -c 'tc class add dev 4-4 parent 1: classid 1:1 htb rate 1000000kbit ceil 1000000kbit'
ip netns exec 4 bash -c 'tc filter add dev 4-4 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 4 bash -c 'tc qdisc add dev 4-4 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 4 bash -c '# Edge 4 - 22'
ip netns exec 4 bash -c 'ifconfig 4-5 add fc00:42:0:1a::2/64 up'
ip netns exec 4 bash -c 'sysctl net.ipv6.conf.4-5.seg6_enabled=1'
ip netns exec 4 bash -c 'tc qdisc add dev 4-5 root handle 1: htb'
ip netns exec 4 bash -c 'tc class add dev 4-5 parent 1: classid 1:1 htb rate 1000000kbit ceil 1000000kbit'
ip netns exec 4 bash -c 'tc filter add dev 4-5 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 4 bash -c 'tc qdisc add dev 4-5 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 4 bash -c '# Edge 4 - 23'
ip netns exec 4 bash -c 'ifconfig 4-6 add fc00:42:0:1c::2/64 up'
ip netns exec 4 bash -c 'sysctl net.ipv6.conf.4-6.seg6_enabled=1'
ip netns exec 4 bash -c 'tc qdisc add dev 4-6 root handle 1: htb'
ip netns exec 4 bash -c 'tc class add dev 4-6 parent 1: classid 1:1 htb rate 1000000kbit ceil 1000000kbit'
ip netns exec 4 bash -c 'tc filter add dev 4-6 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 4 bash -c 'tc qdisc add dev 4-6 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 4 bash -c '# Edge 4 - 24'
ip netns exec 4 bash -c 'ifconfig 4-7 add fc00:42:0:1e::2/64 up'
ip netns exec 4 bash -c 'sysctl net.ipv6.conf.4-7.seg6_enabled=1'
ip netns exec 4 bash -c 'tc qdisc add dev 4-7 root handle 1: htb'
ip netns exec 4 bash -c 'tc class add dev 4-7 parent 1: classid 1:1 htb rate 1000000kbit ceil 1000000kbit'
ip netns exec 4 bash -c 'tc filter add dev 4-7 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 4 bash -c 'tc qdisc add dev 4-7 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 4 bash -c 'ip -6 ro ad fc00:2:0:1::1/64 via fc00:42:0:1a::1 metric 1000 src fc00:2:0:a::1'
ip netns exec 4 bash -c 'ip -6 ro ad fc00:2:0:2::1/64 via fc00:42:0:b::2 metric 8000 src fc00:2:0:a::1'
ip netns exec 4 bash -c 'ip -6 ro ad fc00:2:0:3::1/64 via fc00:42:0:e::2 metric 7000 src fc00:2:0:a::1'
ip netns exec 4 bash -c 'ip -6 ro ad fc00:2:0:4::1/64 via fc00:42:0:b::2 metric 9000 src fc00:2:0:a::1'
ip netns exec 4 bash -c 'ip -6 ro ad fc00:2:0:5::1/64 via fc00:42:0:18::1 metric 1000 src fc00:2:0:a::1'
ip netns exec 4 bash -c 'ip -6 ro ad fc00:2:0:6::1/64 via fc00:42:0:b::2 metric 11000 src fc00:2:0:a::1'
ip netns exec 4 bash -c 'ip -6 ro ad fc00:2:0:7::1/64 via fc00:42:0:1e::1 metric 1000 src fc00:2:0:a::1'
ip netns exec 4 bash -c 'ip -6 ro ad fc00:2:0:8::1/64 via fc00:42:0:b::2 metric 9000 src fc00:2:0:a::1'
ip netns exec 4 bash -c 'ip -6 ro ad fc00:2:0:9::1/64 via fc00:42:0:1c::1 metric 1000 src fc00:2:0:a::1'
ip netns exec 4 bash -c 'ip -6 ro ad fc00:2:0:b::1/64 via fc00:42:0:b::2 metric 9000 src fc00:2:0:a::1'
ip netns exec 4 bash -c 'ip -6 ro ad fc00:2:0:c::1/64 via fc00:42:0:e::2 metric 9000 src fc00:2:0:a::1'
ip netns exec 4 bash -c 'ip -6 ro ad fc00:2:0:d::1/64 via fc00:42:0:b::2 metric 9000 src fc00:2:0:a::1'
ip netns exec 4 bash -c "${PYTHON_CURR_DIR}/throughput.py -o 4.throughput.json -s"
ip netns exec 4 bash -c 'sysctl net.ipv6.fib_multipath_hash_policy=1'

# Commands for namespace 14
ip netns exec 14 bash -c 'ifconfig lo up'
ip netns exec 14 bash -c 'ip -6 ad ad fc00:2:0:b::1/64 dev lo'
ip netns exec 14 bash -c 'sysctl net.ipv6.conf.all.forwarding=1'
ip netns exec 14 bash -c 'sysctl net.ipv6.conf.all.seg6_enabled=1'
ip netns exec 14 bash -c '# Edge 14 - 0'
ip netns exec 14 bash -c 'ifconfig 14-0 add fc00:42:0:16::2/64 up'
ip netns exec 14 bash -c 'sysctl net.ipv6.conf.14-0.seg6_enabled=1'
ip netns exec 14 bash -c 'tc qdisc add dev 14-0 root handle 1: htb'
ip netns exec 14 bash -c 'tc class add dev 14-0 parent 1: classid 1:1 htb rate 1000000kbit ceil 1000000kbit'
ip netns exec 14 bash -c 'tc filter add dev 14-0 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 14 bash -c 'tc qdisc add dev 14-0 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 14 bash -c 'ip -6 ro ad fc00:2:0:1::1/64 via fc00:42:0:16::1 metric 21000 src fc00:2:0:b::1'
ip netns exec 14 bash -c 'ip -6 ro ad fc00:2:0:2::1/64 via fc00:42:0:16::1 metric 1000 src fc00:2:0:b::1'
ip netns exec 14 bash -c 'ip -6 ro ad fc00:2:0:3::1/64 via fc00:42:0:16::1 metric 14000 src fc00:2:0:b::1'
ip netns exec 14 bash -c 'ip -6 ro ad fc00:2:0:4::1/64 via fc00:42:0:16::1 metric 2000 src fc00:2:0:b::1'
ip netns exec 14 bash -c 'ip -6 ro ad fc00:2:0:5::1/64 via fc00:42:0:16::1 metric 21000 src fc00:2:0:b::1'
ip netns exec 14 bash -c 'ip -6 ro ad fc00:2:0:6::1/64 via fc00:42:0:16::1 metric 4000 src fc00:2:0:b::1'
ip netns exec 14 bash -c 'ip -6 ro ad fc00:2:0:7::1/64 via fc00:42:0:16::1 metric 21000 src fc00:2:0:b::1'
ip netns exec 14 bash -c 'ip -6 ro ad fc00:2:0:8::1/64 via fc00:42:0:16::1 metric 2000 src fc00:2:0:b::1'
ip netns exec 14 bash -c 'ip -6 ro ad fc00:2:0:9::1/64 via fc00:42:0:16::1 metric 21000 src fc00:2:0:b::1'
ip netns exec 14 bash -c 'ip -6 ro ad fc00:2:0:a::1/64 via fc00:42:0:16::1 metric 20000 src fc00:2:0:b::1'
ip netns exec 14 bash -c 'ip -6 ro ad fc00:2:0:c::1/64 via fc00:42:0:16::1 metric 3000 src fc00:2:0:b::1'
ip netns exec 14 bash -c 'ip -6 ro ad fc00:2:0:d::1/64 via fc00:42:0:16::1 metric 2000 src fc00:2:0:b::1'
ip netns exec 14 bash -c 'ip -6 route add fc00:2:0:7::1 metric 1 table 1 src fc00:2:0:b::1   nexthop via fc00:42:0:16::1  encap seg6 mode inline segs fc00:2:0:3::1,fc00:2:0:a::1  weight 100 '
ip netns exec 14 bash -c 'ip -6 rule add to fc00:2:0:7::1 iif lo table 1'
ip netns exec 14 bash -c 'printf "%s\n" "until ip netns exec 14 nuttcp -T120 -i1 -R10000 -N8 fc00:2:0:7::1 >>flow_14-24.txt 2>&1; do sleep 2; echo RTY: \$SECONDS >>flow_14-24.txt; done" | at now+2min'
ip netns exec 14 bash -c "${PYTHON_CURR_DIR}/throughput.py -o 14.throughput.json -s"
ip netns exec 14 bash -c 'sysctl net.ipv6.fib_multipath_hash_policy=1'

# Commands for namespace 2
ip netns exec 2 bash -c 'ifconfig lo up'
ip netns exec 2 bash -c 'ip -6 ad ad fc00:2:0:c::1/64 dev lo'
ip netns exec 2 bash -c 'sysctl net.ipv6.conf.all.forwarding=1'
ip netns exec 2 bash -c 'sysctl net.ipv6.conf.all.seg6_enabled=1'
ip netns exec 2 bash -c '# Edge 2 - 1'
ip netns exec 2 bash -c 'ifconfig 2-0 add fc00:42:0:4::1/64 up'
ip netns exec 2 bash -c 'sysctl net.ipv6.conf.2-0.seg6_enabled=1'
ip netns exec 2 bash -c 'tc qdisc add dev 2-0 root handle 1: htb'
ip netns exec 2 bash -c 'tc class add dev 2-0 parent 1: classid 1:1 htb rate 4000000kbit ceil 4000000kbit'
ip netns exec 2 bash -c 'tc filter add dev 2-0 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 2 bash -c 'tc qdisc add dev 2-0 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 2 bash -c '# Edge 2 - 3'
ip netns exec 2 bash -c 'ifconfig 2-1 add fc00:42:0:6::2/64 up'
ip netns exec 2 bash -c 'sysctl net.ipv6.conf.2-1.seg6_enabled=1'
ip netns exec 2 bash -c 'tc qdisc add dev 2-1 root handle 1: htb'
ip netns exec 2 bash -c 'tc class add dev 2-1 parent 1: classid 1:1 htb rate 4000000kbit ceil 4000000kbit'
ip netns exec 2 bash -c 'tc filter add dev 2-1 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 2 bash -c 'tc qdisc add dev 2-1 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 2 bash -c '# Edge 2 - 4'
ip netns exec 2 bash -c 'ifconfig 2-2 add fc00:42:0:d::2/64 up'
ip netns exec 2 bash -c 'sysctl net.ipv6.conf.2-2.seg6_enabled=1'
ip netns exec 2 bash -c 'tc qdisc add dev 2-2 root handle 1: htb'
ip netns exec 2 bash -c 'tc class add dev 2-2 parent 1: classid 1:1 htb rate 12000kbit ceil 12000kbit'
ip netns exec 2 bash -c 'tc filter add dev 2-2 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 2 bash -c 'tc qdisc add dev 2-2 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 2 bash -c 'ip -6 ro ad fc00:2:0:1::1/64 via fc00:42:0:d::1 metric 18000 src fc00:2:0:c::1'
ip netns exec 2 bash -c 'ip -6 ro ad fc00:2:0:2::1/64 via fc00:42:0:4::2 metric 2000 src fc00:2:0:c::1'
ip netns exec 2 bash -c 'ip -6 ro ad fc00:2:0:3::1/64 via fc00:42:0:6::1 metric 11000 src fc00:2:0:c::1'
ip netns exec 2 bash -c 'ip -6 ro ad fc00:2:0:4::1/64 via fc00:42:0:4::2 metric 1000 src fc00:2:0:c::1'
ip netns exec 2 bash -c 'ip -6 ro ad fc00:2:0:5::1/64 via fc00:42:0:d::1 metric 18000 src fc00:2:0:c::1'
ip netns exec 2 bash -c 'ip -6 ro ad fc00:2:0:6::1/64 via fc00:42:0:4::2 metric 5000 src fc00:2:0:c::1'
ip netns exec 2 bash -c 'ip -6 ro ad fc00:2:0:7::1/64 via fc00:42:0:d::1 metric 18000 src fc00:2:0:c::1'
ip netns exec 2 bash -c 'ip -6 ro ad fc00:2:0:8::1/64 via fc00:42:0:4::2 metric 3000 src fc00:2:0:c::1'
ip netns exec 2 bash -c 'ip -6 ro ad fc00:2:0:9::1/64 via fc00:42:0:d::1 metric 18000 src fc00:2:0:c::1'
ip netns exec 2 bash -c 'ip -6 ro ad fc00:2:0:a::1/64 via fc00:42:0:d::1 metric 17000 src fc00:2:0:c::1'
ip netns exec 2 bash -c 'ip -6 ro ad fc00:2:0:b::1/64 via fc00:42:0:4::2 metric 3000 src fc00:2:0:c::1'
ip netns exec 2 bash -c 'ip -6 ro ad fc00:2:0:d::1/64 via fc00:42:0:4::2 metric 3000 src fc00:2:0:c::1'
ip netns exec 2 bash -c "${PYTHON_CURR_DIR}/throughput.py -o 2.throughput.json -s"
ip netns exec 2 bash -c 'sysctl net.ipv6.fib_multipath_hash_policy=1'

# Commands for namespace 11
ip netns exec 11 bash -c 'ifconfig lo up'
ip netns exec 11 bash -c 'ip -6 ad ad fc00:2:0:d::1/64 dev lo'
ip netns exec 11 bash -c 'sysctl net.ipv6.conf.all.forwarding=1'
ip netns exec 11 bash -c 'sysctl net.ipv6.conf.all.seg6_enabled=1'
ip netns exec 11 bash -c '# Edge 11 - 0'
ip netns exec 11 bash -c 'ifconfig 11-0 add fc00:42:0:13::2/64 up'
ip netns exec 11 bash -c 'sysctl net.ipv6.conf.11-0.seg6_enabled=1'
ip netns exec 11 bash -c 'tc qdisc add dev 11-0 root handle 1: htb'
ip netns exec 11 bash -c 'tc class add dev 11-0 parent 1: classid 1:1 htb rate 1000000kbit ceil 1000000kbit'
ip netns exec 11 bash -c 'tc filter add dev 11-0 protocol ipv6 parent 1: prio 1 u32 match ip6 dst ::/0 flowid 1:1'
ip netns exec 11 bash -c 'tc qdisc add dev 11-0 parent 1:1 handle 10: netem delay 0.20ms'
ip netns exec 11 bash -c 'ip -6 ro ad fc00:2:0:1::1/64 via fc00:42:0:13::1 metric 21000 src fc00:2:0:d::1'
ip netns exec 11 bash -c 'ip -6 ro ad fc00:2:0:2::1/64 via fc00:42:0:13::1 metric 1000 src fc00:2:0:d::1'
ip netns exec 11 bash -c 'ip -6 ro ad fc00:2:0:3::1/64 via fc00:42:0:13::1 metric 14000 src fc00:2:0:d::1'
ip netns exec 11 bash -c 'ip -6 ro ad fc00:2:0:4::1/64 via fc00:42:0:13::1 metric 2000 src fc00:2:0:d::1'
ip netns exec 11 bash -c 'ip -6 ro ad fc00:2:0:5::1/64 via fc00:42:0:13::1 metric 21000 src fc00:2:0:d::1'
ip netns exec 11 bash -c 'ip -6 ro ad fc00:2:0:6::1/64 via fc00:42:0:13::1 metric 4000 src fc00:2:0:d::1'
ip netns exec 11 bash -c 'ip -6 ro ad fc00:2:0:7::1/64 via fc00:42:0:13::1 metric 21000 src fc00:2:0:d::1'
ip netns exec 11 bash -c 'ip -6 ro ad fc00:2:0:8::1/64 via fc00:42:0:13::1 metric 2000 src fc00:2:0:d::1'
ip netns exec 11 bash -c 'ip -6 ro ad fc00:2:0:9::1/64 via fc00:42:0:13::1 metric 21000 src fc00:2:0:d::1'
ip netns exec 11 bash -c 'ip -6 ro ad fc00:2:0:a::1/64 via fc00:42:0:13::1 metric 20000 src fc00:2:0:d::1'
ip netns exec 11 bash -c 'ip -6 ro ad fc00:2:0:b::1/64 via fc00:42:0:13::1 metric 2000 src fc00:2:0:d::1'
ip netns exec 11 bash -c 'ip -6 ro ad fc00:2:0:c::1/64 via fc00:42:0:13::1 metric 3000 src fc00:2:0:d::1'
ip netns exec 11 bash -c 'ip -6 route add fc00:2:0:5::1 metric 1 table 1 src fc00:2:0:d::1   nexthop via fc00:42:0:13::1  encap seg6 mode inline segs fc00:2:0:4::1,fc00:2:0:a::1  weight 100 '
ip netns exec 11 bash -c 'ip -6 rule add to fc00:2:0:5::1 iif lo table 1'
ip netns exec 11 bash -c 'printf "%s\n" "until ip netns exec 11 nuttcp -T120 -i1 -R10000 -N8 fc00:2:0:5::1 >>flow_11-21.txt 2>&1; do sleep 2; echo RTY: \$SECONDS >>flow_11-21.txt; done" | at now+2min'
ip netns exec 11 bash -c "${PYTHON_CURR_DIR}/throughput.py -o 11.throughput.json -s"
ip netns exec 11 bash -c 'sysctl net.ipv6.fib_multipath_hash_policy=1'
