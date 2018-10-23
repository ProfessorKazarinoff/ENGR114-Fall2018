%% Functions in MATLAB

%% Some functions are built-in to MATLAB
ret = cosd(60)      % function name: cosd   input argument: 60  function output: ret

%% Some functions do not accect input arguments
number_pi = pi()    % function name: pi     input arguments: NONE fuction output: number_pi

%% Some functions accept multiple input arguments

sum_number = sum(4,5) % function name: sum  input arguments: 4, 5 function output to sum_number

%% Some functions can produce multiple outputs
a=1:10
b=1:5
[mata matb] = meshgrid(a,b) % function name: meshgrid input arguments: a, b function output mata, matb

%% Some functions can have one or many input arguments
c = sum(5)
d = sum([5,6,7])

%% Some functions have have one or many outpus
c = magic(5)
col_max = max(c)  % function name: max  input arguments: c
[col_max row_max] = max(c)

%% Most fuctions have documentation
help max

% max    Largest component.
%     For vectors, max(X) is the largest element in X. For matrices,
%     max(X) is a row vector containing the maximum element from each
%     column. For N-D arrays, max(X) operates along the first
%     non-singleton dimension.
%  
%     [Y,I] = max(X) returns the indices of the maximum values in vector I.
%     If the values along the first non-singleton dimension contain more
%     than one maximal element, the index of the first one is returned.
%  
%     max(X,Y) returns an array with the largest elements taken from X or Y.
%     X and Y must have compatible sizes. In the simplest cases, they can be
%     the same size or one can be a scalar. Two inputs have compatible sizes
%     if, for every dimension, the dimension sizes of the inputs are either
%     the same or one of them is 1.
%  
%     [Y,I] = max(X,[],DIM) operates along the dimension DIM. 

%% can call user-defined functions in .m-file scripts

dist_mi = km2mi(5)

%% call any global variable in a script

a
dist_mi
col_max

%% local variables are only used within a function
% local variables are not avaiable to other scripts or functions
% local variables can not be called from the MATLAB command line

%calling these local variables returns an error. mi and km are only
%available in the body of the km2mi function.
%mi
%km











