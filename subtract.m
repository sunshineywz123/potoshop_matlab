I=imread('rice.png');
background=imopen(I,strel('disk',15));
subplot(1,3,1);
imshow(I);
subplot(1,3,2);
imshow(background);
Ip=imsubtract(I,background);
subplot(1,3,3);
imshow(Ip,[]);
