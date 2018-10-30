%% Inclass Week 6 Exam Practice
% * Name
% * Course and quarter
% * Date
% * Description
%
%% clc, clear, close all
clc; % clear the command window
clear; % clears the workspace of all variables
close all; %closes all open plot windows
format short g; %set a more human readable format
% %% Import data
% load('x_y_z.mat')
% 
% %% Make two 17 x 17 meshgrids from x and y
% [x_mat y_mat] = meshgrid(x,y) % run meshgrid function, x is 1 row 17 col, y is 1 row 17 col
% combo_mat = 2*x_mat + y_mat
% 
% %% output all locations that store the value zero
% loc = find(combo_mat == 0)
% 
% %% print the first value in the loc matrix to the user
% fprintf('\n First value in loc matrix is %4.0f \n',loc(1))

%% import a .csv file
filename = 'grade_data.csv';
grade_mat = csvread(filename);

% %% plot a histogram of the grade data
% figure(1)
% edges = [50:10:100];
% min(grade_mat);
% histogram(grade_mat,edges)
% xticks([50:10:100]);
% xlabel('Grade Range (in %)')
% ylabel('Number of Grades (# of students)')
% title('Histogram of Grades')
% 
% %% find min grade, max grade and median grade
% min_grade=min(grade_mat)
% max_grade=max(grade_mat)
% median_grade = median(grade_mat)
% min_grade_str = num2str(min_grade)
% max_grade_str = num2str(max_grade)
% median_grade_str = num2str(median_grade)
% statement = ('The min, max and median grades are: ')
% disp(strcat(statement,min_grade_str, ', ',max_grade_str,', ',median_grade_str))
%% Import the stress-strain .xlsx data file
data_mat = xlsread('stress_strain.xlsx');

%% Pull out the stress and strain from data_mat

% stress is in the 2nd col
stress = data_mat(:,2);

% strain is in the 3rd col
strain = data_mat(:,3);

%% Plot a stress-strain curve, axis labels and title
figure(3)
plot(strain,stress)
xlabel('strain (in/in)')
ylabel('stress (ksi)')
title('stress-strain curve')
grid on
legend(['Al 6061'])

%% Print the tensile strength (max stress) and strain where tensile strenght occurs
max_stress = max(stress);
% find the location of the max stress value in the stress matrix
loc_max_stress = find(stress==max_stress);
% pull out the strain value
% in the same position where the max stress value occurs
strain_at_max_stress = strain(loc_max_stress);

%% Print out to the user
% 'The tensile strenght is 4200 ksi and it occurs at strain = 18.2 %'
fprintf('The tensile strenght is %4.0f ksi and it occurs at strain = %4.1f %%',max_stress,strain_at_max_stress)
text(strain_at_max_stress,max_stress+1000,'\downarrow tensile strength')















































