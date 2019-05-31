clc
clear all
I=imread('p.jpg');
I=rgb2gray(I);
[f1,f2]=freqspace(size(I),'meshgrid');
D=0.4;
n=4;
Hd=ones(size(I));
r=sqrt(f1.^2+f2.^2);
for i=1:size(I,1)
    for j=1:size(I,2)
        t=r(i,j)/(D*D);
        Hd(i,j)=1/(t^n+1);
    end
end
Y=fft2(double(I));
Y=fftshift(Y);
Ya=Y.*Hd;
Ya=ifftshift(Ya);
Ia=ifft2(Ya);
figure
imshow(Ia,[])
        