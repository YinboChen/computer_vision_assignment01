function [outImg] = binaryMask (inImg)
% inImg = imread('sully.bmp');
% for testing
     if size(inImg,3) ~= 1
               inImg = luminance_NL (inImg);   
     end
     
  inImg = im2double(inImg);
  [R,C]=size(inImg);
%   A = sum(sum(inImg)); 
  th = sum(sum(inImg))/(R*C);
%   th= the mean threshold value

  B = inImg(inImg >= th);
  C = inImg(inImg < th);
%   split inImg to two parts,1 great equ than initial th; 2, small 
  
%   meanBlack = sum(B)/size(B,1);
%   meanWhite = sum(C)/size(C,1);
  mean = (sum(B)/size(B,1) + sum(C)/size(C,1))/2;
  
  while abs(th - mean)>= 0.0001
      if th >= mean
          th = th - 0.0001;
          B1 = inImg(inImg >= th);
          C1 = inImg(inImg < th);
          mean = (sum(B1)/size(B1,1) + sum(C1)/size(C1,1))/2;
      elseif th < mean
          th = th + 0.0001;
          B1 = inImg(inImg >= th);
          C1 = inImg(inImg < th);
          mean = (sum(B1)/size(B1,1) + sum(C1)/size(C1,1))/2;
      end
     
  end
%   using while loop to get mini(D-value)
  autoValue = th;
%   autoValue
   [R,C]= size(inImg);
  for r = 1:R
        for c =1:C
              I = inImg(r,c,1);         
               if I>= autoValue
                   outImg(r,c,:)=0;
               elseif I < autoValue
                   outImg(r,c,:)=1;
               
               end
            
        end
       
   end
  
end