set terminal postscript color eps enhanced 'Helvetica,20'
set xrange[-pi:pi]
set xlabel "{/Symbol f}" font "Helvetica,30"
set ylabel "V({/Symbol f)"  font "Helvetica,30"
set key box
set key at  .750 ,6.5
set xtics ( "-{/Symbol p}" -pi,  "-{/Symbol p}/2" -pi/2,"0" 0,  "{/Symbol p}/2" pi/2,"{/Symbol p}" pi)
set border linewidth 4
pl (-0.0*cos(x)-cos(2*x))  w l lt 1 linewidth 2 lc rgb "red"  ti "P=0.0"
#repl  (-0.50*cos(x)-cos(2*x))  w l lt 1 linewidth 2 lc rgb "blue" ti "P=0.5"
#repl  (-0.25*cos(x)-cos(2*x)) w l lt 1 linewidth 2 lc rgb "green" ti "P=0.25"
repl  (-1.0*cos(x)-cos(2*x)) w l lt 1 linewidth 2 lc rgb "green" ti "P=1.0"
#repl  (-2.0*cos(x)-cos(2*x)) w l lt 1 linewidth 2 lc rgb "magenta" ti "P=2.0"
repl  (-4.0*cos(x)-cos(2*x)) w l lt 1 linewidth 4 lc rgb "blue" ti "P=4.0"
set output 'potential-vs-thetapitopi.eps'
repl  (-8.0*cos(x)-cos(2*x)) w l  lt 1 linewidth 2 lc rgb "black" ti "P=8.0"


