close all
clear all
clc
Rs = 100;
R1 = 1E3;
L1 = 4.7E-3;
C1 = 0,1E-6;
Resr = 6,5;          % Induktor-Serienwiderstand in Ohm
Vin = 1;
f = 100:100:1E6;     % Frequenzbereich für die Berechnung

%% Berechnung von Z
Y1 = 1/R1;
Y2 = i*2*pi.*f*C1;
Y3 = 1./(Resr+i*2*pi.*f*L1);
Y = Y1 + Y2 + Y3;
Z = 1./Y;

%% Plotting
ax = plotyy(f,real(Z),f,imag(Z),'semilogx','semilogx','semilogx');
ylabel(ax(1), 'Realteil von Z / Ohm');
ylabel(ax(2), 'Realteil von Z / Ohm');
xlabel('Frequenz / Hz');
grid on
