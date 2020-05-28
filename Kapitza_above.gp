#set terminal epslatex color
set terminal postscript color eps enhanced "Helvetica" 30 
#set term jpeg 
unset key
#set key borderwidth 4
set xlabel "Angular displacement"  #offset 0,-1.,0 font "Helvetica,30"; 
set ylabel  "Angular velocity" #offset -2,0,0  font "Helvetica,30";
#set xrange[0:2*pi];
set tics font ", 20"
#set yrange[3.1395:3.1435]
#set xrange[.1:1]
set border linewidth 1.5
set output 'Kapitza_above_phasespace.eps'
plot    'Timeseries_above_threshold.dat'  u 2:3




 












