function [ outImg ] = makeBright_L(inImg, brightness)
% test image 
% outImg = zeros(size(inImg));


 for i = 1:size(inImg,1)
 %    row
     for j = 1:size(inImg,2)
 %    column        
         redValue   = inImg(i,j,1) + brightness;
         greenValue = inImg(i,j,2) + brightness;
         blueValue  = inImg(i,j,3) + brightness;
         outImg(i,j,:)=[redValue,greenValue,blueValue];
         
     end
     
 end

% subplot(1,2,1),imshow(inImg)
% subplot(1,2,2),imshow(outImg);

   
end