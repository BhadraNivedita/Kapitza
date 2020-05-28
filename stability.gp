 set terminal postscript color eps enhanced "Helvetica" 20
 set output 'stability.eps'
set key box 
#unset key
 #set xlabel  "amplitude of drive"
 #set ylabel "deviation from inverted position"
 
 
 
 
 pl 'stabilityw_4new.dat' u 3:2 w lp  title "w=4",'stabilityw_8new.dat' u 3:2 w lp title "w=8",'stabilityw_10new.dat' u 3:2 w lp title "w=10",'stabilityw_15new.dat' u 3:2 w lp title "w=15"
