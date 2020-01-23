function [ outImg ] = frosty( inImg, n, m)
R = size(inImg,1);
C = size(inImg,2);

output = zeros(size(inImg));
outImg = uint8(output);
cx =floor((n-1)/2);
% define the distance between middle pixel to top-left pixel)
cy = floor((m-1)/2);
% define the distance between middle pixel to top top-right pixel
for i = 1: R
    for j = 1: C
            rmin = max(1,i- cx);
            rmax = min(R,i+ cx);
            cmin = max(1,j- cy);
            cmax = min(C,j+ cy);
            randr = randi([rmin,rmax],1);
            %randon y coordinate in n*m window             
            randc = randi([cmin,cmax],1);
            %randon x coordinate in n*m window  
            outImg(i,j,:) = inImg(randr,randc,:);
            
    end
end

end