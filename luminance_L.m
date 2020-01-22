function [ outImg] = luminance_L( inImg)

for i = 1:size(inImg,1)
 %    row
     for j = 1:size(inImg,2)
 %         column        
         R = inImg(i,j,1);
         G = inImg(i,j,2);
         B = inImg(i,j,3);
         outImg(i,j,:) = 0.299*R + 0.587*G + 0.114*B;
         
     end
     
 end

end

