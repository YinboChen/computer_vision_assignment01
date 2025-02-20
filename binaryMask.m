function [outImg] = binaryMask (inImg)
% inImg = imread('yinbo2.jpg');
% for testing
     if size(inImg,3) ~= 1
        inImg = luminance_NL (inImg);   
     end
     
  inImg = im2double(inImg);
  [R,C]=size(inImg);
%   A = sum(sum(inImg)); 
  th = sum(sum(inImg))/(R*C);
%   th= the mean threshold value

  Max0 = inImg(inImg >= th);
  Min0 = inImg(inImg < th);
%   split inImg to two parts,1 great equ than initial th; 2, small 
  
%   meanBlack = sum(B)/size(B,1);
%   meanWhite = sum(C)/size(C,1);
  mean = (sum(Max0)/size(Max0,1) + sum(Min0)/size(Min0,1))/2;
  
  while abs(th - mean)>= 0.0001
      if th >= mean
          th = th - 0.0001;
          Max1 = inImg(inImg >= th);
          Min1 = inImg(inImg < th);
          mean = (sum(Max1)/size(Max1,1) + sum(Min1)/size(Min1,1))/2;
      elseif th < mean
          th = th + 0.0001;
          Max1 = inImg(inImg >= th);
          Min1 = inImg(inImg < th);
          mean = (sum(Max1)/size(Max1,1) + sum(Min1)/size(Min1,1))/2;
      end
     
  end
%   using while loop to get mini(D-value)
  autoValue = th;
%   autoValue
%   [R,C]= size(inImg);
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
%   imshow(outImg);
end