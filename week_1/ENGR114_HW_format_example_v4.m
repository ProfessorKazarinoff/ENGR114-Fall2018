%% Homework #1 - Peter Kazarinoff
% * Problems Ch 1: 1.5, 1.8, 1.22
% * Date: 09-27-18
% * Author: Peter Kazarinoff
% * Course: ENGR114 Fall 2018
%% Problem 1.5
% * (a) The area of a circle is pi r^2 . Define r as 5, then find the area of 
% a circle, using MATLAB.
% * (b) The surface area of a sphere is 4 pi r^2 . Find the surface area of a 
% sphere with a radius of 10 ft.

clc, clear
r = 5;              % radius of the circle is 5
a = pi*r^2          % formula for the area of a circle
r = 10;             % given a radius of 10
sa = 4*pi*r^2       % formula for the surface area of a sphere


%% Problem 99.17
% The moon and earth have masses of 6^24 kg and 7.4^22 kg.
% Given an average distance between the moon and earth is 3.9^8 m,
% what is the gravitational force between the earth and moon?

clc,clear
% e is used to show a power of 10, ex: 6.02 x 10^23 --> 6.02e23
G = 6.673e-11;                  % gradivational constant, in m3?kg?1?s?2
m_earth = 6e24;                 % mass of the earth, in kg 
m_moon = 7.4e22;                % mass of the moon, in kg
r = 3.9e8;                      % earth-moon distance, in m
F = G*m_earth*m_moon/r^2        % gravitational force, in N


%% Problem 99.20
% Square your results from Problem 99.5

clc, clear
% pasted code from previous problem showing area and surface area of two
% radii
r = 5;
a = pi*r^2;
r = 10;
sa = 4*pi*r^2;

sq_a = a^2        % square the area, don't need to use .^ with scalars

sq_sa = sa^2      % squre the surface area, again, .^ is not needed
