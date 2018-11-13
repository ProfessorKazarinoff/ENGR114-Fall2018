%% Fiz Buzz, a progam to play the game
% Description: Count starting at 1
% if divisible by 5 say buzz
% if divisible by both 3 and 5 say fiz buzz
% if not divisible by either, just say the number
%% clc, clear, close all
clc, clear, close all;   %clears command window, clears workspace variables, closes all plot windows
%% User Input, limit the user to between 0 and 100 and integer
n = -1     % set invalid input
while ~(n>0 & n<100  & mod(n,1)==0)           % while not(what we want)
    n = input('\n Enter an integer between 0 and 100: ')     % ask for input
end      % end the while loop

%% Loop to play game
for i = 1:n                 % run the loop the number of times the user specifies
   if (mod(i,3)==0 & mod(i,5)==0) % if i is divisible by 3 and 5, print fizz buzz
       fprintf('\n Fizz Buzz')
   elseif mod(i,3)==0 % else if i is divisible by 3, print fizz
       fprintf('\n Fizz')
   elseif mod(i,5)==0% else if i is divisible by 5, print buzz
       fprintf('\n Buzz')
   else
       fprintf('\n %d%',i) % else print the number i
   end             % end the if statement
   
end                % end for loop
fprintf('\n') % add a new line so the last number does not have >>> after it



