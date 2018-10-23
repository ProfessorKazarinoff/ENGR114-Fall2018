%% Km to mi or mi to km %%

%% Ask user for a number
num = input('Enter a number')
%% Ask user km to mi or mi to km
choice = input('enter 1 for km to mi, enter 2 for mi to km');
%% if km to mi, use the km2mi function
if choice == 1
   out = km2mi(num); 
end
%% if mi to km, use the mi2km function
if choice == 2
    out = mi2km(num);
end
%% write the output
fprintf('%4.2f',out)




