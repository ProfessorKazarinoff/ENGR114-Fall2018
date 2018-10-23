function [ km ] = mi2km( mi )
%mi2km() This function converts km to miles
%   input: mi, float or int
%   output: km, float
%
%   Example:
%
%        mi2km(5)
%   
%  ans = 8.04672
out = mi * 1.60934;    % 1 mile = 1.60934 km

km = out;
end

