%% Loops Practice

%% For loops run for a sepcified number of times

for i=1:3           % numbers times through the loop is 3
     fprintf('%d',i)%code that runs as part of the loop 
end

%% For loops can used indicies that don't start at 1
clc
% loop will run the same number of times 
% as there are elements in the matrix i
for i=-1:1:1                
    fprintf('\n %d \n',i)
end

%% Calculation on the inside of a for loop

for i = 2:4
    k = i + 2;
    fprintf('%d',k)
end

%% loop in calculation where the index run "backwards"
clc
for i = 2:-1:-1
    n = i-1;
    fprintf('%d \n',n)
end

%% loop with a hard coded index
clc
for i = [-2 0 1]
   fprintf('%d \n',i) 
end

%% Running a for loop with a scalar, will only run the loop once
clc
for i = 5
    fprintf('%d \n',i)
end

%% While loops. 
% while loops run a section of code as long as
% a logical condition is true
a = 0
while a<2         % logical condition
     fprintf('%d \n',a)
     a = a + 1;   %code block the runs as part of the loop 
end

%% Another while loop example
clc
z = 2
while z>-1
    fprintf('%d \n',z)
    z = z - 1;
end

%% while loops can be used to validate user input
% user must input a positive number
n = -1 % invalid input
while ~(n>0) % negate the condition we want (we want n>0)
    n = input('Enter a positive number: ')
end

%% Ask the user for a whole number
clc
n = 0.5 % invalid input
while ~(mod(n,1)==0)   %negate the condition we want (whole number)
   n = input('Enter a whole number: ') 
end
fprintf('You entered a whole number')

%% Two common error cases for loops

% a logical condition is used to define a for loop
for n == 1                 % need to have a matrix or number of times through loop
    n = n + 1;
fprintf('%d \n',n)
end

%% a number or matrix is used to define a while loop
clc
while mat = [1 3 4]       % need a logical condition
    n = input('Enter a number')
end
fprintf('You entered a number')











    
    
    
    
    
    
    
    




























































