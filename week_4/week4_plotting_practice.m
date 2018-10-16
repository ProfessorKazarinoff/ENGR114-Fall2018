%% Week 4 Plotting Practice

%% simple line plot
figure('Name','simple line plot figure window')
x = 0:0.1:4*pi
y = sin(x)

plot(x,y)
xlabel('x-values')
ylabel('sin(x)')
title('Sine of x from 0 to 4pi')

%% Mulit-line plot
figure(2)
x = 0:0.1:4*pi
y1 = sin(x)
y2 = sin(x/2)
y3 = sin(2*x)
%y = [y1' y2' y3']

plot(x,y1,'^r',x,y2,'-r',x,y3,'*k')
xlabel('x values')
ylabel('f(x)')
title('Three trig functions')
legend('sin(x)','sin(x/2)','sin(2x)')

%% A plot with text
figure(3)
x = 0:0.1:2*pi
y = sin(x)
plot(x,y)
text(0,0,'Text in 0, 0 location')

%% Plot a histogram
figure(4)
x = randn(100)
hist(x(:))

%% semilog plots
x = 0:0.1:50
y = 20*2.^(x./2)
y2 = 3*log(2*x)
%plot(x,y)
%semilogy(x,y)
%semilogx(x,y2)
loglog(x,y2)

%% 4 subplots
x = 0:0.1:50
y = 20*2.^(x./2)
y2 = 3*log(2*x)

figure(6)
subplot(2,2,1)
plot(x,y)
title('Linear')
subplot(2,2,2)
semilogy(x,y)
title('Log y')
subplot(2,2,3)
semilogx(x,y2)
title('Log x')
subplot(2,2,4)
loglog(x,y2)
title('Log Log')
%% Build a y-y plot (a plot with two different y axis)
x = linspace(0,10,100)
y1 = 0.5*x
y2 = 1000*x
figure(7)
a = plotyy(x,y1,x,y2)   %a is a figure handle
ylabel(a(1),'y1 label')
ylim(a(1),[0 5])
ylabel(a(2),'y2 label')




















































