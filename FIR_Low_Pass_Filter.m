% JOHN RENNER - 00269141
% DSP I
% FINAL PROJECT
% MATLAB program to plot frequency response

clear all;
close all;
clc;

N = 21;             % filter length
Ftype = 1;          % LPF
fc = 1500;          % cutoff freq
fs = 12000;         % sampling freq

WnL = 2*pi*fc/fs;   % normalized angular cutoff (rad/sample)
WnH = 0;            % not used for LPF
Wtype = 5;          % Blackman window

%% ______________ Filter Calculation___________________________________
B = firwd(N, Ftype, WnL, WnH, Wtype);   % get b coefficients

[h, f] = freqz(B, 1, 512, fs);          % h = H(f), f=freq. vector

mag_db = 20* log10(abs(h));


%% ________________ Filter Plots _________________________________________
figure;                         % Create plot for freq. response
subplot(3,1,1);
plot(f, mag_db);
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Frequency Response');
grid on;

subplot(3,1,2);                         % create plot for phase response                         
plot(f, unwrap(angle(h))*(180/pi));
xlabel('Frequency (Hz)');
ylabel('Phase (Degrees)');
title('Phase Response');
grid on;

%% _________Filtering a Noisy Signal ___________________________________

t = linspace(-2*pi,2*pi,1000);          % time vector for noisy signal
x = sin(t) + 0.25*rand(size(t));        % define noisy signal
y = conv(x,B);                          % apply filter to signal 
y = y(1:length(x));                     % needed to adjust length to avoid error



subplot(3,1,3);                         % create noisy signal plot
plot(t, x, 'Color', [0.6, 0.6, 0.6]); hold on;
plot(t, y, 'b', 'LineWidth', 1.2);
legend('Noisy Signal', 'Filtered Signal');
xlabel('Time (s)');
ylabel('Amplitude');
title('Noisy vs. Filtered Signal');
grid on;