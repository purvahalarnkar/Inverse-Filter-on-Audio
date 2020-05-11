clc
clear all
close all
%moving average filter
[x,Fs]=audioread('Avengers.wav');
N=10;
a=(1);
b=ones(1,N)/N;
x1=filter(b,a,x);

audiowrite('ProcessedAudio.wav',x1,Fs) %save processed audio
y=filter(a,b,x1); %inverse filter

%pole zero plot
subplot(1,2,1)
zplane(b,a)
title('Pole Zero plot: Moving average filter')
subplot(1,2,2)
zplane(a,b)
title('Pole Zero plot: Inverse filter')
%frequency response
figure
freqz(b,a)
title('Frequency Response: Moving average filter')
grid on
figure
freqz(a,b)
title('Frequency Response: Inverse filter')
grid on