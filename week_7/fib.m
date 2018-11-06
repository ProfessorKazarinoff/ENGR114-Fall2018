function [ fib_mat ] = fib( N )
%fib() Produces a martix of fibanacci numbers
%   A sequence of fibanacci numbers is:
%   1 1 2 3 5 8 13 ...
%   This function returns a matrix of fibanacci numbers of length N
%
%   input: whole number greater than zero (ex: 1 or 2 or 3 ...), an integer
%   output: matrix of fibanacci numbers (ex: [ 1 1 2 3 ]), a matrix of integers 
%
%   Example:
%     
%       fib(6)
%
%            ans = [ 1 1 2 3 5 8 ]
%
%

%% validate user input, user has to enter a positive whole number
if ~(mod(N,1)==0 & N > 0)
    error('input argument is invalid, N must be a positive integer')
end
%% if N = 1, then fib_mat = [1]
if N == 1
    fib_mat = [1];
end

%% if N = 2, then fib_mat = [1 1]
if N == 2
    fib_mat = [1 1];
end

%% if N>2, then use for loop to make fib_mat
if N > 2
    fib_mat = [1 1];
    for i=3:N
        fib_mat(end+1) = fib_mat(end) + fib_mat(end-1);
    end
end
end

