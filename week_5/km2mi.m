function [ mi ] = km2mi( km )
%km2mi() This function converts km to miles
%   input: km, float or int
%   output: mi, flost
%
%   Example:
%
%        km2mi(5)
%   
%  ans = 3.10686
out = km / 1.60934;    % 1 mile = 1.60934 km

mi = out;
end

