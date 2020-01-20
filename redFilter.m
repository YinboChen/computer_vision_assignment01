function [ outImg ] = redFilter(inImg,redVal) 
% inImg = imread('yoda.bmp');
rv = redVal;
col1 =1;
col2 = floor(size(inImg,2)/3);
col3 = col2 +1;
col4 = floor(2*size(inImg,2)/3);
col5 = col4 +1;

  for i = 1:size(inImg,1)
        for j = col1:col2      
          R1 = inImg(i,j,1);
          G1 = inImg(i,j,2);
          B1 = inImg(i,j,3);
          I = 0.299*R1+0.587*G1+0.114*B1;
          outImg(i,j,:) = [I,I,I];
          
        end
        for j = col3:col4      
          R2 = inImg(i,j,1);
          G2 = inImg(i,j,2);
          B2 = inImg(i,j,3);
          outImg(i,j,:) =[R2,G2,B2];
          
        end
        for j = col5:size(inImg,2)      
          R3 = inImg(i,j,1);
          G3 = inImg(i,j,2);
          B3 = inImg(i,j,3);
          m =(1-rv*R3)/(B3+G3);
          I = rv*R3+m*G3+m*B3;
          outImg(i,j,:) =[I,I,I];
          
        end
         
   end

end