%% Make the Matrix

% C = [ 5  6  7  8 ;
%       0 -1 -2 -3 ]

A =[]
for i=5:8
    A(end+1)=i
end

B = []
for i = 0:-1:-3
    B(end+1)=i
end

C = [A ; B]

%% Validate User input

% ensure user inputs a value between 0 and 5
a = -1      % start with invalid input
while ~(a>0 & a<5)      % while loop with not (what we want)
    a = input('Enter a number between 0 and 5')      % ask for input
end% end the while loop






