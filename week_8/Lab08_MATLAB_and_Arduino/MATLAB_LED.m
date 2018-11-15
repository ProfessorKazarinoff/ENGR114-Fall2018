%% Blink Arudino LED on and off by typing L or H in command window
% P. Kazarinoff, 2018

%% Open the serial port
Port = 'COM4'; % Port the Arduino is connected to
delete(instrfindall); % deletes any connected ports
a = serial(Port); % connect to the Arduino in order to read information
fopen(a); % opens the serial port
pause(1); % pause () for 1 second to make sure a connection is made
out = instrfind ('Port', Port ) ; % see if the port you specified is open
disp ('Serial Port is Open')

%% Send H and L over the serial line to blink the Arduino LED 10 times
% for i =1:10
% send_str = 'H';
% fprintf(a, '%s', send_str); pause (1)
% send_str = 'L';
% fprintf(a, '%s', send_str); pause (1)
% end

%% Ask for user input, H for on, L for off, q for quit

while true
    
   user_input = input('Type H to turn on the LED , L to turn off the LED or q to quit : ','s');
   if strcmp(user_input,'H')
       send_str = 'H';
        fprintf(a, '%s', send_str);
        pause (0.5);
   elseif strcmp(user_input,'L')
       send_str = 'L';
        fprintf(a, '%s', send_str);
        pause (0.5)
   elseif strcmp(user_input,'q')
       break
   end
    
end

%% Close the serial port
fclose(a);
delete(a);
clear a;
disp('Serial Port is closed')
