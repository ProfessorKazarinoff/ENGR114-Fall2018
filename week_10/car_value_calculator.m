%% Header
% Name: ENGR114 Student
% Class: ENGR224, Fall 2018
% Date: 12/04/18
% Description: This script asks a user for a car value and number of years
% It then calculates the car's value over time and 
% plots the car value over time
%% clc, clear
% clears command window, clears all workspace variables and closes all plot windows
clc, clear, close all 
%% Ask user for input and validate
% user must input a value between 0 and 24,000
% user must input a number years between 0 and 20
value=-1;   %initialize the value variable with invalid input
num_years = -1; % initialize the num_years variable with invalid input
while ~((value>0&value<=24000)&(num_years>0&num_years<=20&mod(num_years,1)==0))
    value = input('Enter the car value: '); % ask user for car's initial value
    num_years = input('Enter the number of years you will keep the car: '); % ask user for number of years
end
%% Calculate the car's value each year
% new_value = old_value - old_value*rate
% set rate of depreciation at 19%
rate = 0.19; % set the depreciation rate to 19% or 0.19
value_mat = value;
for i=1:num_years  % run the for loop for the number of years the user specifies
    % calculate the car's value each year
    value_mat(end+1)=value_mat(end) - value_mat(end)*rate; 
end % end the for loop

%% Tell the user how much there car is worth after x number of years
% in fprintf %1.2f will keep the field width at 1 unless the number is 10
% or bigger then it expands to show all the digits
fprintf('\n After %d years your car is worth $%1.2f \n',num_years,value_mat(end))

%% Plot the car's value over time
x = [0:numel(value_mat)-1]; % x matrix for number of years the car has been owned, starting at zero
plot(x,value_mat) % plot x matrix vs car's value
xlabel('Number of Years your have owned the car') %x-axis label
ylabel('The car value in dollars') % y-axis label
title('Car depreciation over time') % add a title
legend(['trade in value']) %add a legend





