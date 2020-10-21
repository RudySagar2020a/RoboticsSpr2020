%% MAIN 

% Initialising parameters, calling functions and running code

%% Setup

workspace = [-10 10 -5 5 0 5];

%% Initialise Parameters



%% Environment Setup



%%Kuka Robot Setup
kuka = Kuka(false);

kukabasepose = [0,0,0];

kuka.model.base = transl(kukabasepose)*trotx(pi/2);
kuka.PlotAndColourRobot();

%% Main Executable
