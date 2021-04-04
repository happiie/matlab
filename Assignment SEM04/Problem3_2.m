t0=.4;                              % signal duration
n=0:1000;
ts=0.0001;                          % sampling interval
df=0.2;                             % frequency resolution
fs=1/ts;                            % sampling frequency
fc=250;                             % carrier frequency
a=0.8;                              % modulation index
t=[0:ts:t0];                        % time vector
m = sinc(100*t);                    % message signal
c=cos(2*pi*fc.*t);                  % carrier signal
m_n=m/max(abs(m));                  % normalized message signal
[M,m,df1]=fftseq(m,ts,df);           % Fourier transform
M=M/fs;                              % scaling
f=[0:df1:df1*(length(m)-1)]-fs/2;    % frequency vector
u=(1+a*m_n).*c;                      % modulated signal
[U,u,df1]=fftseq(u,ts,df);           % Fourier transform
U=U/fs;                                 % scaling

figure;
plot(t,m(1:length(t))) 
xlabel('Time')
figure;
plot(t,u(1:length(t)))
axis([0 t0 -2.1 2.1])
xlabel('Time')
figure;
plot(f,abs(fftshift(M)))
xlabel('Frequency')
axis([-1000 1000 0 0.01]);
figure; 
plot(f,abs(fftshift(U)))
xlabel('Frequency')
axis([-1000 1000 0 0.06]);



