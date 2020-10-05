#!/usr/bin/env gnuplot -persist
# output: following commands for file-output
set terminal pdf color enhanced solid
set output "bgp-growth.pdf"
# /output
set grid
set xdata time
set timefmt "%s"
set format x "%Y"
set title "BGP-Table Growth"
set ylabel "num-prefixes"
set xlabel "date"
plot "bgp-active.txt" using 1:2 title "smoothed" smooth csplines lw 10 lc 2 with lines, "" using 1:2 title "raw data" lc 1 with lines 
# plot "<curl http://bgp.potaroo.net/as2.0/bgp-active.txt" using 1:2 title "bgp-table growth" with lines
