function [outImg] = binaryMaskCompared (inImg,threhold)
% inImg = imread('yinbo2.jpg');
% for testing
     if size(inImg,3) ~= 1
               inImg = luminance_NL (inImg);   
     end
     
     
 
  inImg = uint8(inImg);
  
%   A = sum(sum(inImg)); 
%    th = sum(sum(inImg))/(size(inImg,1)*size(inImg,2));
    th = threhold ;
  th = 10;
  [R,C]= size(inImg);
  for r = 1:R
        for c =1:C
              I = inImg(r,c,1);         
               if I>= th
                   outImg(r,c,:)=255;
               elseif I < th
                   outImg(r,c,:)=0;
               
               end
            
        end
       
  end
    outImg = uint8(outImg);
    
end