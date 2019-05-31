clc
clear all
k=imread('Lenna_std.jpg');
k=rgb2gray(k);
figure
imshow(k);

[M,N]=size(k);
F=fft2(k);
REDcut=100;
GREENcut=200;
BLUEcenter=150;
BLUEwidth=100;
BLUEu0=10;
BLUEv0=10;
for u=1:M
    for v=1:N
        D(u,v)=sqrt(u^2+v^2);
        REDH(u,v)=1/(1+(sqrt(2)-1)*(D(u,v)/REDcut)^2);
        GREENH(u,v)=1/(1+(sqrt(2)-1)*(GREENcut/D(u,v))^2);
        BLUED(u,v)=sqrt((u-BLUEu0)^2+(v-BLUEv0)^2);
        BLUEH(u,v)=1-1/(1+BLUED(u,v)*BLUEwidth/((BLUED(u,v))^2-(BLUEcenter)^2)^2);
    end
end

RED=REDH.*F;
REDcolor=ifft2(RED);
GREEN=GREENH.*F;
GREENcolor=ifft2(GREEN);
BLUE=BLUEH.*F;
BLUEcolor=ifft2(BLUE);

REDcolor=real(REDcolor)/256;
GREENcolor=real(GREENcolor)/256;
BLUEcolor=real(BLUEcolor)/256;

for i=1:M
    for j=1:N
        OUT(i,j,1)=REDcolor(i,j);
        OUT(i,j,2)=GREENcolor(i,j);
        OUT(i,j,3)=BLUEcolor(i,j);
    end
end
OUT=abs(OUT);
figure
imshow(OUT);
