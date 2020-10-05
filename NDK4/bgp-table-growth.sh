#!/usr/bin/env gnuplot -persist
set grid
set xdata time
set timefmt "%s"
set format x "%Y"
set title "BGP-Table Growth"
set ylabel "num-prefixes"
set xlabel "date"
plot "<curl http://bgp.potaroo.net/as2.0/bgp-active.txt" using 1:2 title "bgp-table growth" with lines
