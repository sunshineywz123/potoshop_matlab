I=imread('C:\Users\air\Desktop\Test.jpg');
I=imcrop(I);
figure
imshow(I);

B=I(:,:,3);
figure
imshow(B);

imhist(B);