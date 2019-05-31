clc
 rgb=imread('car.jpg');
 gray=rgb2gray(rgb);
 gray1=imadjust(gray,[0.2 0.7],[]);
 bw=im2bw(gray1);
 [m n]=size(bw);
 ymin=0;
 ymax=0;
 for i=1:m
      k=0;
     for j=1:n-1
         if bw(i,j)~=bw(i,j+1)
             k=k+1;
         end
     end
     if ymin==0
           if k>=14
               ymin=i;
           end
       end
     if ymin~=0
         if k<14
             ymax=i;
         end
     end
     if (ymax-ymin)>=30
         break;
     else
         ymax=0;
     end
 end
 bw1=bw(ymin:ymax,:); 
 xmin=0;
 xmax=0;
 [m n]=size(bw1);
 for i=1:n
     k=0;
     for j=1:m-1;
         if bw1(j,i)~=bw1(j+1,i)
             k=k+1;
         end
     end
     if xmin==0
           if k>=2
               xmin=i;
           end
       end
     if xmin~=0
         if k<2
             xmax=i;
         end
     end
     if (xmax-xmin)>=180
         break;
     else
         xmax=0;
     end
 end
 Chepai=bw(ymin:ymax+5,(xmin-8):(xmax+8));
 subplot(2,1,1),imshow(rgb)
 subplot(2,1,2),imshow(Chepai)