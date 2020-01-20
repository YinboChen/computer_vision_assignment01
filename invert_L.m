function[ outImg ] = invert_L (inImg)
    for i = 1:size(inImg,1)
 %    row
        for j = 1:size(inImg,2)
 %         column        
             redValue   = 255 - inImg(i,j,1);
             greenValue = 255 - inImg(i,j,2);
             blueValue  = 255 - inImg(i,j,3);
             outImg(i,j,:)=[redValue,greenValue,blueValue];
         
        end
     
    end

end