%% Pratice with loops for exam review

%% Write a section of MATLAB code that will produce a matrix A which contains the values 1 to 10.
% Do this using a for loop.

A = []
for i=1:10
   A(end+1)=i 
end

A = zeros(10,1)
for i=1:10
    A(i)=i
end

%% Write a section of MATLAB code that asks a user 
% for a number between 0 and 5 using the input() function.
% Use a while loop to ensure the user puts in a valid number.

num = -1
while ~(num>0 & num<5)
    num = input('Enter a number between 0 and 5: ')
end

%% Produce the matrix B which contains the values 10 20 30 40. 
% Do this using a while loop.

B = []
i = 1;
while i<5
   B(end + 1) = i*10
   i = i+1; 
end

%% Create the matrix C using a for loop or while loop
% C = [ 5  6  7  8 ;
%       0 -1 -2 -3 ]

C = zeros(2,4)
for i=1:4
    C(1,i)=i+4
    C(2,i)=1-i
end

%% Write a section of MATLAB code that asks a user for their test score and tells the user if they passed or not
% You can use the disp() function to display text to the user. Set a score of 100 to 65 as passing and
% anything below 65 as failing, and assume the user enters a text score between 0 and 100.

grade = input('Enter a grade between 0 and 100: ')
if grade>=65
    disp('You passed!')
else
    disp('Better luck next time!')
end















