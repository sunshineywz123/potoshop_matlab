
clc
clear all
n=20;
k=imread('p.jpg');
k=rgb2gray(k);
figure
imshow(k);

m=grayslice(k,n);
figure
imshow(m,jet(n));