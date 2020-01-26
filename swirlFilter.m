function [ ] = swirlFilter(inImg, factor, ox, oy)
%c = c1*cosa-r1*sina;
%r = c1*sina-r1*cosa;
%|AB|= squrt((x1-x2)^2+(y1-y2)^2);


inImg = imread('yoda.bmp');
inImg = uint8(inImg);
% imshow(inImg);
ox =150;
oy =150;
% f =factor;
f =40;
%define factor value from -100 to 100
R = size(inImg,1);
C = size(inImg,2);
output = zeros(R,C,3);
outImg = uint8(output);
u = C - ox;
v = R - oy;
radi1 = min(ox,oy);
radi2 = min(u,v);
radi = min(radi1,radi2);
%min distance = define the radius value
theta = 1*f;

for i = 1: R
        for j =1:C
               
                AB = abs(sqrt((j-ox)^2+(i-oy)^2));
                %mapping all pixels out of circle                
            if AB > radi
                
               outImg(i,j,:)= inImg(i,j,:);
           
            elseif AB <= radi
   

                thetaT = AB/radi*theta;
                
                if i == oy && j == ox
                    outImg(i,j,:) = inImg(i,j,:);
                else 
                       m = max(floor(abs(j*sin(thetaT) + i*cos(thetaT))),1);
                  
                       n = max(floor(abs(j*cos(thetaT) - i*sin(thetaT))),1);
                    
                    
                        
                    outImg(i,j,:) = inImg(m ,n,:);
                end
                               
            end
              
        end
end
imshow(outImg);

end