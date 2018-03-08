target extended-remote /dev/serial/by-id/usb-Black_Sphere_Technologies_Black_Magic_Probe_7BAF9BA9-if00
monitor tpwr enable
monitor swdp_scan
attach 1
break main
load
run

