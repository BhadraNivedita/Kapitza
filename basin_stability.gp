set term postscript eps color enhanced


set xlabel "amplitude"  font ",30"  offset 0,-1.5,0
set ylabel "basin stability" font ",30"  offset -2.8,0,0

set xrange[0.1:0.5]
set yrange[0:0.65]

set key box
set key font ",15"
set key spacing 1.25
set key box width 1.0
set border linewidth 3

set tics font ",25" 
set xtics border offset   0,-0.5,0
set ytics border offset   -0.5,0.0,0

set lmargin 12 
set bmargin 5.5

pl 'basinstability_w5.dat' u 1:3 w lp pt 8 lw 2  title "w=5"
repl 'basinstability_w6.dat' u 1:2 w lp pt 7 lw 2  title "w=6"
repl 'basinstability_w7.dat' u 1:2 w lp pt 10 lw 2  title "w=7"
repl 'basinstability_w8.dat' u 1:2 w lp pt 3 lw 2  title "w=8"
repl 'basinstability_w9.dat' u 1:2 w lp pt 4 lw 2  title "w=9"

set output 'basinstability.eps'
repl 'basinstability_w10.dat' u 1:2 w lp pt 2 lw 2  title "w=10"