clc
clear all
I=imread('12.png');
I=rgb2gray(I);
I=imresize(I,[256,256]);
figure
imshow(I);

S = qtdecomp(I,.27);
dim=5;
I0=qtsetblk(I,S);
I1=full(I0);
figure
imshow(I1,[]);