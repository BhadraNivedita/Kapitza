#code to plot amp vs max dev. for different values of Lambda for many body Kapitza pendulum

set term postscript eps color enhanced

set xlabel "{/Symbol w}" font "Time Roman,30" offset   0,-1,0
set ylabel "max. initial deviation from {/Symbol p}" font "Time Roman,30"  offset -0.5,0.0,0

set key box
set key font "Time Roman,20"
set key spacing 1.25
set key box width .7
set tic font ",20"
set xtics border offset   0,-0.5,0
set ytics border offset   -0.5,0.0,0
set border linewidth 3

#set xrange[5:16]
#set yrange[0:0.55]

set bmargin 6
set lmargin 10
set tmargin 2


 pl for[ii=0:0] 'SingleKP_gam.dat' every:::ii::ii u 3:2 w lp pt 15 lw 3 title "g_1=10"
    
 set output 'SingleKP_gam.eps'
 repl for[ii=1:1] 'SingleKP_gam.dat' every:::ii::ii u 3:2 w lp pt 15 lw 3 title "g_1=15"
 


