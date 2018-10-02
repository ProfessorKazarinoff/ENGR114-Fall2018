%% Example 2.2 from textbook
% * Author: Peter Kazarinoff
% * Date: 2018-09-27
% * Course: ENGR114
% * Quarter: Fall 2018
%% Clear variables and command window

clc;                      %clears the command window
clear;                    %clears all workspace variables

%% Define the lbf to N conversion factor

% conversion factor: 1 lbf = 4.4482216 N
conversion_factor = 4.4482216;

%% Create a matrix of lbf values

% matrix of lbf values, start at 0, count by 100, upto 1000
lbf = [0:100:1000];       %[start,step,stop]

%% Using lbf values, create matrix of N values

% lbf * conversion factor = N
N = lbf * conversion_factor;

%% Combine the lbf matrix with the N matrix

% combine 1x11 lbf matrix with the 1x11 N to make a 2x11 c_table matrix
c_table = [lbf; N];     %lbf in first row, N in second row

%% Format it nicely and print out to command window

% transpose c_table to turn 2x11 into a 11x2 (rows to cols, cols to rows)
c_table = c_table';    % the quote symbol transposes c_table

% format the c_table to look pleasing to humans
format short g;       %short format with no extra zeros shown
c_table               %show the final table