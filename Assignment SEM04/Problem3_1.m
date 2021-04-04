echo off                    %turns off the echoing 
t0=.4;                      % signal duration
ts=0.0001;                  % sampling interval
fc=250;                     % carrier frequency
snr=20;                     % SNR in dB (logarithmic)
fs=1/ts;                    % sampling frequency
df=0.3;                     % required freq. resolution 
t=[0:ts:t0];                % time vector
snr_lin=10^(snr/10);        % linear SNR
m=sinc(100*t);              % the message signal
c=cos(2*pi*fc.*t);          % the carrier signal
u=m.*c;                     % the DSB-AM modulated signal
[M,m,df1]=fftseq(m,ts,df);  % Fourier transform
M=M/fs;                     % scaling
[U,u,df1]=fftseq(u,ts,df);  % Fourier transform
U=U/fs;                     % scaling
f=[0:df1:df1*(length(m)-1)]-fs/2; % frequency vector 

% plot the message signal
figure;
plot(t,m(1:length(t)))
xlabel('Time')

% plot the modulated signal.
figure;
plot(t,u(1:length(t)))
xlabel('Time')

% plot the magnitude of the message and the modulated signal 
figure;
plot(f,abs(fftshift(M)))
xlabel('Frequency')
axis([-1000 1000 0 9*10^(-3)]);
figure;
plot(f,abs(fftshift(U)))
xlabel('Frequency')
axis([-1000 1000 0 4.5*10^(-3)]);