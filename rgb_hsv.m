%从RGB空间到HSV空间转换,以及查看H,S,V分量的Matlab程序实现
a=imread('Lenna_std.png'); 
hsv=rgb2hsv(a); 
%可以通过下面的程序看一幅图的HSV三个通道 
H=hsv(:,:,1);
S=hsv(:,:,2);
V=hsv(:,:,3);

figure;
subplot(1,2,1);imshow(a);title('原始图像'); 
subplot(1,2,2);imshow(hsv);title('HSV空间I图像');

figure;
subplot(1,3,1);imshow(H);title('HSV空间H分量图像');
subplot(1,3,2);imshow(S);title('HSV空间S分量图像');
subplot(1,3,3);imshow(V);title('HSV空间V分量图像');