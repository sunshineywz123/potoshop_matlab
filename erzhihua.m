data=imread('tupian.jpg');
subplot(1,2,1);
imshow(data);
xlabel(' Width: 640');
ylabel(' Height: 863');

lev=graythresh(data);
BW=im2bw(data,lev);
subplot(1,2,2);
imshow(BW);
info=imfinfo('tupian.jpg');
R=data(:,:,1);
G=data(:,:,2);
B=data(:,:,3);

figure;
subplot(1,3,1)
imshow(R);
subplot(1,3,2)
imshow(G);
subplot(1,3,3)
imshow(B);
