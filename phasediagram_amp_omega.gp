 set terminal postscript color eps enhanced "Helvetica" 20
 
set key box 
#unset key
 #set xlabel  "amplitude of drive"
 #set ylabel "deviation from inverted position"
 
 
 set xlabel "Excitation amplitude"
 set ylabel "maximum initial angle({/Symbol f})"
 
 pl for[i=0:0] 'stability_amp_deviation.dat' every:::i::i  u 3:2 w lp  title "w=5"
repl for[i=1:1] 'stability_amp_deviation.dat' every:::i::i  u 3:2 w lp  title     "w=10"
repl for[i=2:2] 'stability_amp_deviation.dat' every:::i::i  u 3:2 w lp  title     "w=15"
repl for[i=3:3] 'stability_amp_deviation.dat' every:::i::i  u 3:2 w lp  title     "w=20"
repl for[i=4:4]  'stability_amp_deviation.dat' every:::i::i  u 3:2 w lp  title     "w=25"
repl for[i=5:5] 'stability_amp_deviation.dat' every:::i::i  u 3:2 w lp  title     "w=30"
repl for[i=6:6] 'stability_amp_deviation.dat' every:::i::i  u 3:2 w lp  title     "w=35"
set output 'phasedia_amp_deviation.eps'
 
repl  for[i=7:7] 'stability_amp_deviation.dat' every:::i::i  u 3:2 w lp  title     "w=40"






