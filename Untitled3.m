I=imread('C:\Users\air\Desktop\Test.jpg');
figure
imshow(I);

B=I(:,:,3);
figure
imshow(B);

k=find(B<10);
B(k)=255;
Y=im2bw(B,0.2);
figure
imshow(Y);