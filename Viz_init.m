% Ship Northern Clipper
% Visual control experiments
% First, open posi_vizual,
% then run this file!
% It will set and run the model!

clear all;

global m L m11 m22 m33 d11 d22 d33 d23 d32;

% Ship parameters setting
m = 4.591e6;                % Weight [kg]
L = 76.2;                   % Length [m]

d = 1e4*[1 2 10];
tau = [0 0 0];

% Inertial matrix and parameters
M = diag([5.3122e6  8.2831e6 3.7454e9]); 
M1 = inv(M);
m11 = M1(1,1);
m22 = M1(2,2);
m33 = M1(3,3);

% Damping matrix and parameters 
D  = [5.0242e4      0          0;
          0      2.7229e5  -4.3933e6;
          0     -4.3933e6   4.1894e8];
D1 = M1 * D;
d11 = D1(1,1);
d22 = D1(2,2);
d23 = D1(2,3);  
d32 = D1(3,2);
d33 = D1(3,3);

% Model start
sim('posi_vizual');
