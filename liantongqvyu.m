figure;

I = imread('rice.png');

subplot(1, 2, 1);

imshow(I)

I1 = im2bw(I);

subplot(1, 2, 2);

imshow(I1)

[L, num] = bwlabel(I1);

str = sprintf('连通块个数为：%d', num);

xlabel(str);
