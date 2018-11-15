%% Read a potentiometer over serial
% P. Kazarinoff, 2018

%%
clc, clear, close all;

%% Open the serial port
Port = 'COM5'; % Port the Arduino is connected to
delete(instrfindall); % deletes any connected ports
a = serial(Port); % connect to the Arduino in order to read information
fopen(a); % opens the serial port
pause(1); % pause () for 1 second to make sure a connection is made
out = instrfind ('Port', Port ) ; % see if the port you specified is open
disp ('Serial Port is Open')

%% Ask user for number of seconds

user_input = 'none';

while ~(mod(user_input,1)==0 & user_input>1 & user_input<101)
    user_input = input('How many seconds to you want to record data (0-60): ');
    user_input = int64(user_input);
end

%% Read the potentiometer value
serial_data = [];
startTime = datetime ('now'); % saves the current time
time_interval = user_input % number of seconds to record data
% run loop until seconds timer runs out
while datetime ('now') < startTime + seconds(time_interval)
    serial_read = fscanf (a ,'%f') % read the serial input as a float
    serial_data(end+1) = serial_read ; % save the serial input
    pause(.01) % wait 10 milliseconds before next serial reading
end

%% Close the serial port
fclose(a);
delete(a);
clear a;
disp('Serial Port is closed')

%% Plot
x = linspace(0,double(user_input),numel(serial_data));
plot(x,serial_data)
xlabel('Time (seconds)')
ylabel('Potentiometer Reading (0-1024)')
title('Potentiometer Reading vs. Time')
