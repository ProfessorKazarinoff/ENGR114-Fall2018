%% week 2 - Notes
% notes for week 2
% notes on MATLAB functions and indexing
%
%% clc, clear
clc
clear

%% Create matrices in MATLAB
% a = 1:10    %start:end (count by 1's)
% b = 1:2:20  %start:count by:end
% c = linspace(0,360,10)
% d = ones(5) %matrix of one's with 5 row, 5 cols
% e = ones(1,5) % matrix of one's with 1 row x 5 cols
% f = zeros(3,4) % matrix of zero's with 3 rows x 4 cols
%
%% Matrix indexing
A = [8 1 10; 4 7 9]   % semi colon denotes a new row
%A(1)  % indexing down 1st col, back up to top of 2nd col
%A(2)
%A(3)
%A(4)
% A(2,3)    %index the 2nd row, 3rd col
% A(1,2)    %index the 1st row, 2nd col
% A(end)      %index the end value in the matrix (col down, over col and down, over col and down)
% A(end-1)    %2nd to last value in the matrix
% A(1:3)        %index elements 1 to 3 (counting by 1's)
% A(1:2,2:3)    %rows 1 to 2 and cols 2 to 3 (counting by 1's)
% A(1,:)        %1st row and all cols
% A(:)          %all elements of the matrix (each element 1 by one in it's own row)
%% Useful functions run on matricies
% A = [8 1 10; 4 7 9]
% max(A)               %max of each col
% max(max(A))          %find max of (max of each col)
% [col_max, row] = max(A)
% max(col_max)
% numel(A)       % number of elements in A
B = [1 2 3]
% B(end+1) = 4     % add a position to the matrix, put the value for in that position
% B(end)=[]        % set a position to the empty matrix, remove that position
% B(1) = []        % take position 1 out of the matrix
%
%% The find() function
A = [8 1 10; 4 7 9]
%find(A==10) % find the POSITION, LOCATION, INDEX of the value 10
%A==10   %boolean matrix which is false, except for where A==10
%A(A==10)% pull the value 10 out
%find(A>5)
%A(A>5)   %pull out all the values greater than 10
%[row, col] = find(A==4)    %which row and col is the value 4 in?

%% Trigonometry in MATLAB
%sin(90);         % sin of 90 radians
%sind(90)         % sin of 90 degrees
%cos(pi);         % cos of pi radians
%cosd(180)        % cos of 180 degress


 







