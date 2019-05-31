I = imread('liftingbody.png');
S = qtdecomp(I,.27);%����ֵceil(0.27*255)=69��ͼ��I�����Ĳ�ֽ�
blocks = repmat(uint8(0),size(S));%�õ�һ����Iͬ�ߴ�ĺ�ɫ����blocks
for dim = [512 256 128 64 32 16 8 4 2 1];    %�ֿ�ȫ��2���������ݣ�ע��
  numblocks = length(find(S==dim));    %��numblocks���ߴ�Ϊdim�ķֿ飬ע��
  if (numblocks > 0)       
    values = repmat(uint8(1),[dim dim numblocks]);%����һ��dim x dim x numblocks����ά1ֵ���󣨻�˵
                 %  numblocks���ߴ�Ϊdim x dim��1ֵblock��
    values(2:dim,2:dim,:) = 0;
    blocks = qtsetblk(blocks,S,dim,values);%blocks���������п鱻�滻��Ľ����ע��
  end
end
blocks(end,1:end) = 1;
blocks(1:end,end) = 1;
imshow(I), figure, imshow(blocks,[])