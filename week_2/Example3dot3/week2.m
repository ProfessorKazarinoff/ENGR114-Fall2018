%% Example 3.3 - Peter Kazarinoff
% Description: complete code for Example 3.3 from text

%% Clear command window and all workspace variables
clc;     % clears command window
clear;   % clears workspace variables
%% Import data
% imports the excel file into weather_data matrix
weather_data = xlsread('weather_data.xlsx');    %months in rows, days in cols
% change all -99999 values into zeros
weather_data(weather_data<0)=0;   % assign the value zero to each location where there is a negative number
%% Total Precipitation in each month
%transpose so months are in cols, run sum() to find sum of each col
monthly_total = sum(weather_data') 
%% Total Precipitation for the year
yearly_total = sum(sum(weather_data))
%% Month and day on which the maximum precipitation occured
max_precipitation = max(max(weather_data)); %find the value for the max precip
[row, col] = find(weather_data == max_precipitation);    %find the location where the max recip is saved
month_of_max_precip = row      % month of max precip is the row location where the max value resides
day_of_max_precip = col        % day of max precip is the col location where the max value resides






