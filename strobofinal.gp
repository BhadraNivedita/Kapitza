#set term eps color enhanced 
set term png #color enhanced "Helvetica,20"
unset key
set autoscale
set xrange[0:2*pi]
set yrange[-2*pi:2*pi]
set xlabel 'Angular displacement'
set ylabel 'Angular velocity' 
#set yrange[-10:10]

set output 'Strobo-above.png'
#set output 'Strobo-above.eps'

plot for[i=0:49] 'Strobo-above.dat' every:::i::i u ($2 - (floor(($2)/(2*pi))*(2*pi) )):3 w d

