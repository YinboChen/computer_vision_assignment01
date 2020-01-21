function [outImg] = binaryMask (inImg)
inImg = imread('sully.bmp');
     if size(inImg,3) ~= 1
               inImg = luminance_NL (inImg);   
     end
     
  inImg = im2double(inImg);
  [R,C]=size(inImg);
  A = sum(inImg);
  A1 = A(1,3)
  th = A1/(R*C)
  inImg(inImg(:,3) > th);
%   [R,C]= size(inImg);
%   for r = 1:size(inImg,1)
%       for c =1:size(inImg,2)
% %             inImg(:,3)
%             I = inImg(r,c,1);
%             if I>= th
%                 outImg(r,c,:)=0;
%             elseif I < th
%                 outImg(r,c,:)=1;
%             
%             end
%           
%       end
      
%   end
  
end