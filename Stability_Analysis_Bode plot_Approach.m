clc;
clear;
close all;

% Transfer Function G(s) = 40 / [s(s+2)(s+20)]
num = [40];
den = conv([1 0], conv([1 2], [1 20]));

G = tf(num, den);

% Bode Plot
figure;
bode(G);
grid on;
title('Bode Plot');

% Stability Margins
[gm, pm, wcg, wcp] = margin(G);

disp(['Gain Margin (dB): ', num2str(20*log10(gm))]);
disp(['Phase Margin (deg): ', num2str(pm)]);
disp(['Gain crossover frequency: ', num2str(wcg)]);
disp(['Phase crossover frequency: ', num2str(wcp)]);