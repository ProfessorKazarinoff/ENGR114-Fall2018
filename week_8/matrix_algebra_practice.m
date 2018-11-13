%% Matrix Algebra Practice
clc, clear, close all;

%% Sum of forces
F1 = [5*cosd(30), 5*sind(30)]
F2 = [7*cosd(110), 7*sind(110)]
% sum F = F1 + F2 + F3 = 0
% F3 = -F1 - F2
F3 = -F1 - F2
% find magnitude of F1, use norm() function
mag_F3 = norm(F3)

%% dot product and cross product
F1 = [5*cosd(30), 5*sind(30), 0]
F2 = [7*cosd(110), 7*sind(110), 0]
% dot product
F1_dot_F2 = dot(F1,F2)
% cross product (must have x, y, z components)
F1_cross_F2 = cross(F1,F2)

%% Calculate the torque in a gear (torque is the moment)
F =[-10, 0 , 0]
r = [0.52*cosd(25), 0.52*sind(25), 0]
% torque T = r x F  (cross product)
% momement M = r x F
T = cross(r,F)
M = cross(r,F)
%% Solve 3 equations for 3 unknows
A = [3 2 1; -1 3 2; 1 -1 -1]
B = [10; 5; -1]
% solve for x [ x , y, z]
x = inv(A)*B
x = A\B
C = [3 2 1 10; -1 3 2 5; 1 -1 -1 -1]
answer_matrix =  rref(C)
answer = answer_matrix(:,4)




















