set title "Lost Frame Rate Test, Length 64,UDP,Test Frame"

set xlabel "Test Rate / Max Rate(1%)"
set ylabel "Lost Frame Rate(1%)"

set xtics ("0" 0, "10" 1, "20" 2, "30" 3, "40" 4, "50" 5, "60" 6, "70" 7, "80" 8, "90" 9, "100" 10) 

set key box
set key center at 1,40

plot "frameLostRate.dat" using 1:2  title "64" with linespoints pointtype 1
replot "frameLostRate.dat" using 1:3 title "128" with linespoints pointtype 2
replot "frameLostRate.dat" using 1:4 title "256" with linespoints pointtype 3
replot "frameLostRate.dat" using 1:5 title "512" with linespoints pointtype 4
replot "frameLostRate.dat" using 1:6 title "1024" with linespoints pointtype 5
replot "frameLostRate.dat" using 1:7 title "1280" with linespoints pointtype 6
replot "frameLostRate.dat" using 1:8 title "1518" with linespoints pointtype 7

reset

