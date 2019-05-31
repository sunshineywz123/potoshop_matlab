clear all
I=imread('rice.png');
I=double(I);
[IX,IY]=gradient(I);
GM=sqrt(IX.^2+IY.^2);

OUT1=GM;
figure
imshow(OUT1,[]);

OUT2=I;
k=find(GM>40);
OUT2(k)=GM(k);
figure
imshow(OUT2,[])

OUT3=I;
k=find(GM>10);
OUT3(k)=255;
figure
imshow(OUT3,[])

OUT4=I;
k=find(GM<10);
OUT4(k)=255;
figure
imshow(OUT4,[])


