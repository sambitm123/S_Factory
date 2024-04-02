clc
clear all

f = input("Enter the name of the file: ");
open_system(f)

if(is_simulink_loaded)
     fprintf("open successfully\n");
end

is_loaded = bdIsLoaded(f);
if(is_loaded)
     fprintf("Model is loaded successfully\n ");
else
      disp("Model load is not successful");
end

run(f);
simOut=sim(f);
set_param(f,"SimulationCommand","start");

%if simOut.get('Error') == 0
%    disp("No errors");
%end

if isempty(simOut)
    disp('No simulation results found. Check for errors or warnings.');
else
    disp('Simulation completed successfully.');
end