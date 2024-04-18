# CrI3_Scripts
Scripts to calculate ground state and spin excitation of the monolayer of CrI3

In the above folders, you can find the input files for VAMPIRE Software for atomistic simulations (https://vampire.york.ac.uk/)
The results were published in the paper: .....

ExtF_0T_OOP - contains the input files for OOP spin configuration for Heisenberg-BQ-DM and Kitaev models
ExtF_0T_OOP_DMI_angle - contains the input files for OOP spin configuration for Heisenberg-BQ-DM model with different DMI vector angle
ExtF_angle - contains the input files for different angles of  spin configuration for Heisenberg-BQ-DM and Kitaev models. The angles of 71 and 90 external applied field strength are 6.5T to fully saturate sample.

inputGroundState - copy this file and name as "input". Run the script with this input file to find the ground state of the system.
After that copy "inputThermalExcitation" and name it "input". Run the script. It will read the ground state spin configuration and output spin configuration state in the thermal excitation.

You can process output data using FFT to get dispersion relations.

*.csv - files contain the dispersion spectra.
*.gnu - gnuplot file to plot the dispersion relation


If you require any further information, mail to:
pawel.sobieszczyk@ifj.edu.pl
