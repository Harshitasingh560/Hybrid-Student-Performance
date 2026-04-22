% Input Data (sample training data)
inputs = [
    20 30 40;
    50 60 55;
    80 75 90;
    30 40 35;
    70 80 85
]';

% Target Output (1=Poor, 2=Average, 3=Good)
targets = [1 2 3 1 3];

% Create Neural Network
net = feedforwardnet(10);

% Train
net = train(net, inputs, targets);

% Test
output = net([85; 80; 90]);
disp(output);