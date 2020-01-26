function [outImg] = famousMe(inImg1,background,x,y)

%  inImg1 = imread('yinbo2.jpg');
%  background = imread('yoda.bmp');
 %for testing
 finishoutput =background;
 tempmy =background;
 
 
%  for block test x= 100;
% test y =100;
 temp = scaleNearest( inImg1, 0.8);
 %scale my picture
 RF = size(temp,1);
 CF = size(temp,2);
 RB = size(background,1);
 CB = size(background,2);
 %size of background image
 

 bw =binaryMaskCompared(temp,250);
 % call binaryMaskCompared with threholding value inputed by user
 mask = cat(3,bw,bw,bw);
 % testing imshow(mask)
%  mask_output = double(mask)/255.*double(temp)/255;
 mask_output =(mask >1).*double(temp);
 
 %mask conbines with frontimage
%   mask_output = uint8(mask_output);

 finishoutput(y:y+RF-1,x:x+CF-1,:)= mask_output;
 %matrix value transformation
 tempmy(y:y+RF-1,x:x+CF-1,:)= temp;

 background=double(background);
 
 for i = y:y+RF-1
     for j =x:x+CF-1
         if finishoutput(i,j,:) ==1
             finishoutput(i,j,:)= tempmy(i,j,:);
           elseif finishoutput(i,j,:) ==0
               finishoutput(i,j,:)= background(i,j,:);
         end
     end
 end
 outImg = uint8(finishoutput);
%  figure,imshow(finishoutput);       
 
end