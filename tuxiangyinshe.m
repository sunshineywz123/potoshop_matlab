clc
clear all
k=imread('abc.jpg');
%k=imresize(k,0.3);
figure
imshow(k);
[x,y,z]=size(k);
k=double(k);
for i=1:x
    for j=1:y
        if k(i,j)>=0&&k(i,j)<50
            m(i,j,1)=k(i,j)+5;
            m(i,j,2)=k(i,j)+50;
            m(i,j,3)=k(i,j)+10;
        end
        if k(i,j)>=50&&k(i,j)<100
            m(i,j,1)=k(i,j)+10;
            m(i,j,2)=k(i,j)+20;
            m(i,j,3)=k(i,j)+40;
        end
        if k(i,j)>=100&&k(i,j)<150
            m(i,j,1)=k(i,j)+52;
            m(i,j,2)=k(i,j)+30;
            m(i,j,3)=k(i,j)+15;
        end
        if k(i,j)>=150&&k(i,j)<200
            m(i,j,1)=k(i,j)+80;
            m(i,j,2)=k(i,j)-100;
            m(i,j,3)=k(i,j)-100;
        end
        if k(i,j)>=200&&k(i,j)<=256
            m(i,j,1)=k(i,j)+120;
            m(i,j,2)=k(i,j)+60;
            m(i,j,3)=k(i,j)+45;
        end
    end
end
figure
imshow(uint8(m),[]);
