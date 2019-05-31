clc
clear all
I=imread('rice.png');
figure
imshow(I);

Inew=im2bw(I,120/255);
figure
imshow(Inew);