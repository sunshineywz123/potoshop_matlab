%��RGB�ռ䵽HSV�ռ�ת��,�Լ��鿴H,S,V������Matlab����ʵ��
a=imread('Lenna_std.png'); 
hsv=rgb2hsv(a); 
%����ͨ������ĳ���һ��ͼ��HSV����ͨ�� 
H=hsv(:,:,1);
S=hsv(:,:,2);
V=hsv(:,:,3);

figure;
subplot(1,2,1);imshow(a);title('ԭʼͼ��'); 
subplot(1,2,2);imshow(hsv);title('HSV�ռ�Iͼ��');

figure;
subplot(1,3,1);imshow(H);title('HSV�ռ�H����ͼ��');
subplot(1,3,2);imshow(S);title('HSV�ռ�S����ͼ��');
subplot(1,3,3);imshow(V);title('HSV�ռ�V����ͼ��');