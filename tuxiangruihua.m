I=imread('rice.png');
h=fspecial('sobel');
J=filter2(h,I);
%BW1=imfilter(I,h);

%BW2=edge(I,'sobel');

figure
imshow(I)
figure
%imshow(BW1)

%imshow(BW2)

imshow(J);

I=imread('rice.png');
J=im2double(I);
figure 
imshow(J);

h=[0 -1 0;-1 5 -1;0 -1 0];
A=conv2(J,h);
%figure 
%imshow(A);

h=[-1 -1 -1;-1 9 -1;-1 -1 -1];
B=conv2(J,h);
%figure 
%imshow(B);

h=[1 -2 0;-2 5 -2;1 -2 1];
C=conv2(J,h,'same');
figure 
imshow(C,[]);

h=[1 -2 0;-2 5 -2;1 -2 1];
C=conv2(J,h);
D=B-C;
figure 
imshow(D,[]);


