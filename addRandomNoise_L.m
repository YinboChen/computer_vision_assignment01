function [ outImg] = addRandomNoise_L ( inImg)
    inImg = double(inImg);
    for i = 1:size(inImg,1)
 %         row
        for j = 1:size(inImg,2)
%             column
%             redValue = inImg(i,j,1) + randi([-255 255],1);
%             greenValue = inImg(i,j,2) +randi([-255 255],1);
%             blueValue = inImg(i,j,3) + randi([-255 255],1);
            
%             outImg(i,j,:)=[redValue,greenValue,blueValue];
            outImg(i,j,:)= inImg(i,j,:)+randi([-255 255],[1 1 3]);
        end
     
    end
    outImg = uint8(outImg);
     
end