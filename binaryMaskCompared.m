function [outImg] = binaryMaskCompared (inImg)
% inImg = imread('sully.bmp');
% for testing
     if size(inImg,3) ~= 1
               inImg = luminance_NL (inImg);   
     end
     
  inImg = im2double(inImg);
  [R,C]=size(inImg);
%   A = sum(sum(inImg)); 
  th = sum(sum(inImg))/(R*C);
  
   [R,C]= size(inImg);
  for r = 1:R
        for c =1:C
              I = inImg(r,c,1);         
               if I>= th
                   outImg(r,c,:)=0;
               elseif I < th
                   outImg(r,c,:)=1;
               
               end
            
        end
       
    end
  
end