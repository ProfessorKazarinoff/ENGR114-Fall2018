%% multiplication table
% name: Peter
% data: 10/9/18
% class:ENGR114
% quarter: Fall 2018
% desciption: A MATLAB script to build a multiplication table
% for the numbers 1 to 10. Then find the answer to 4*9 using the table
%
%% clc, clear
clc, clear; %clears commandline and all workspace variables

%% Construct matricies 1:10 for top row and first col
x = [1:1:10];    %matrix x: start at 1 count by 1 up to 10, 1 row x 10 col vector
y = [1:1:10];    %matrix y: start at 1 count by 1 up to 10, 1 row x 10 col vector
%% Use meshgrid() to build 10x10 matricies from the 2D vectors
[x_mat y_mat] = meshgrid(x,y);   % create 2 matrices each 10 row x 10 col.
% one matrix has values of x in each row, the other matrix has values of y
% in each col.
%% Combine 10x10 matrices to produce the multiplication table
% element-wise multiplication to produce the 10 x 10 multiplication table
mult_table_mat = x_mat .* y_mat;

%% Solve the problem 4*9 using our table
%sol = mult_table_mat(4,9)
%find the location in the first col, where 4 is
sol_col = find(mult_table_mat(:,1)==4);  %what location in the first col has the value 4
%find the location in the first row, where 9 is
sol_row = find(mult_table_mat(1,:)==9);  %what location in the first row has the value 9

% pull out the value that in the sol_row,sol_col location which is 4*9
sol = mult_table_mat(sol_row,sol_col)


%% fill in the top row, and first col
% put a new row across the top with values 1 to 10 by 1's
mult_table_mat = [x; mult_table_mat];   % add a top row of 1 to 10 by 1's
% make a first col with 11 elements, zero at top then 1 to 10 by 1's
first_col = [0; y'];
% insert the first_col before the rest of the mult_table_mat
mult_table_mat = [first_col mult_table_mat] 








