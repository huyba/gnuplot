#!/usr/bin/gnuplot
  
set title "Fix number of events, vary number of predicates"
set xlabel "Number of Predicates"
set ylabel "Time(ms)"
set label 1 "O" at 60,290 center front tc rgb "white"
set label "#Events=8, Levels=5, ArrayLen=3, #Properties=3" at 0,0 front
set xrange [256:16384]
set yrange [2:64]
set ytics (2,4,8,16,32,64)
set xtics (256,512,1024,2048,4096,8192,16384)
set logscale x
set logscale y
set term postscript color enhanced
set output 'test1.eps'
plot 'test1.txt' using 1:2 w linespoints lc rgb "blue" lw 3 title "Execution time (ms)"
