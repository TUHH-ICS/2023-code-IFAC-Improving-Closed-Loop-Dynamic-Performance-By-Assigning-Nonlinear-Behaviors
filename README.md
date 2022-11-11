[](url)![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7314513.svg)](https://doi.org/10.5281/zenodo.7314513)

This repository contains the code for
"Improving Closed-Loop Dynamic Performance By Assigning Nonlinear Behaviors: Taking Advantages of Concavity Based on Lyapunov Function Methods ".

Reminder:
The simulations contain two case, a linear case and a nonlinear case. 

%% linear case
The main simulink file `linear_simulation.slx` contains the all simulation model for the linear case. One can use `linear_optimal.m` to calculate the optimal gain, and the optimization framework is implemented as presented in `CLDBNA_OPTIMAL.m `.

%% nonlinear case
For the nonlinear case, the file `NONLINEAR_CASE_simulation.slx` contains everything in one file.

The simulation code in this repository was tested in the following environment:

Windows 11 22H2
Matlab 2022b
