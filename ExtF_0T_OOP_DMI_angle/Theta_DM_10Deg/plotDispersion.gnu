# Gnuplot script for mapping NCI color code over NCI diagrams
set terminal jpeg size 1600,1200 enhanced
set encoding utf8
set output "plotDispersion.jpg"
set pm3d map interpolate 1,1
set pm3d depthorder
set xlabel 'k - momentum vector' font ",25" offset 0,-3,0
set ylabel 'ω[meV]' font ",25" offset -5,0,0
set title 'Heisenberg-J123-BQ-DMI - θ_{DM} = 10 Deg' font ",25"
# Define a color gradient palette used by pm3d
set palette defined (-0.04 "#042333",0.00 "#de7065", 0.04 "#e8fa5b")
set format y "%.0f"
set format x "%.1f"
#set format cb "%.1f"
set border lw 4
set xtics ("Γ" 0, "M" 1, "K'" 2, "Γ" 3)
set ytic -50.0,5.,50.0 mirror
set tics font ",20"
set mytics 5
# set the color bar tics
set cbtic 0,500,5000 nomirror
unset cbtics
set xrange [-0*1:3]
# y range [0, h_plack*coulomb/PI/timestep=0.0413612], timestep = 5*10^-16
freq_limit = 0.0413612*1000
set yrange [-0*freq_limit:20]
set zrange [0.0:5000]
set cbrange [0:5000]
set view map
set hidden3d front
n_xsteps=300
n_tsteps=600
splot 'FFT_G-M.csv' matrix using ((0+$1/n_xsteps)):(2*freq_limit*($2/n_tsteps-0.5)):3 t "" with pm3d,\
'FFT_M-K.csv' matrix using ((1+$1/n_xsteps)):(2*freq_limit*($2/n_tsteps-0.5)):3 t "" with pm3d,\
'FFT_K-G.csv' matrix using ((2+$1/n_xsteps)):(2*freq_limit*($2/n_tsteps-0.5)):3 t "" with pm3d,\
