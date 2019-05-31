I=imread('tupian.jpg');
subplot(1,2,1);
imshow(I);

I_fz=255-I;
subplot(1,2,2)
imshow(I_fz,[]);
