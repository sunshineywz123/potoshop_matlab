clear all
I=imread('tupian.jpg');
J=imadjust(I,[0.3 0.7],[],0.4);
%imshow(J);
imwrite(J,'mytu.bmp')


I=imread('rice.png');
figure,imshow(I);
figure,imcontour(I);


I=imread('rice.png');
J=histeq(I);
figure,imshow(I);
figure,imshow(J);
figure,imhist(I);
figure,imhist(J);

