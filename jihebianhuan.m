n=2;
I0=imread('tupian.jpg');
I=uint8(I0);
imshow(I);

I_1=imresize(I,20);
figure
imshow(I_1);

figure
I_2=imrotate(I,180);
imshow(I_2);

[I2, rect] = imcrop(I);
figure
imshow(I2);

figure
I3=imcrop(I,[10 25 100 300]);
imshow(I3);
