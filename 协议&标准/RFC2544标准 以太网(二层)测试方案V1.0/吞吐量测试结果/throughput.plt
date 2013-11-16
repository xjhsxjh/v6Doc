set title "Throughput with 1000Mbps, Test Frame"

set xlabel "Frame Size(Bytes)"
set ylabel "Throughput(pps)"
set xtics ("64" 0, "128" 1, "256" 2, "512" 3, "1024" 4, "1280" 5, "1518" 6) 

set key box

plot "throughput.dat" using 1:2  title "ideal" with linespoints pointtype 13
replot "throughput.dat" using 1:3 title "real test" with linespoints pointtype 12

reset

