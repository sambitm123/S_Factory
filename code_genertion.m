% Load or create a Simulink model
modelName = input('enter the model name\n');
open_system(modelName);
 
% Configure model for code generation
set_param(modelName, 'SystemTargetFile', 'ert.tlc'); % Target for code generation (Embedded Real-Time)
set_param(modelName, 'Solver', 'FixedStepDiscrete'); % Specify solver settings
set_param(modelName, 'FixedStep', '0.1'); % Set fixed-step size
 
% Generate code
rtwbuild(modelName);