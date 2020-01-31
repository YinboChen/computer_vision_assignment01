function [ outImg] = addRandomNoise_NL( inImg)
    inImg = double(inImg);
    R = randi([-255 255],size(inImg,1),size(inImg,2),3);
    outImg = inImg + R;
    outImg = uint8(outImg);
end