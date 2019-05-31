clc
clear all
I=imread('rice.png');
figure
imshow(I);

E=edge(I,'sobel');
figure
imshow(E)

E=edge(I,'roberts');
figure
imshow(E)

E=edge(I,'prewitt');
figure
imshow(E)


E=edge(I,'log');
figure
imshow(E)

E=edge(I,'canny');
figure
imshow(E)

E=edge(I,'zerocross');
figure
imshow(E)
