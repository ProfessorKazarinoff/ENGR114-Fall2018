%% College Savings

%% clc, clear, close all
clc, clear, close all;    %comment
%% Initial Savings
savings = [1000]
%% For loop, calculate savings each month
for i = [1:1:18*12]
    new_balance = savings(end) + savings(end)*0.005 + 100
    savings(end+1)= new_balance
end
%% tell user how much they saved
fprintf('\n In 18 years you saved: %4.2f \n',savings(end))

%% Plot savings vs. months
plot(savings)
xlabel('Number of Months')
ylabel('Savings in $')
title('College Savings Over Time')






