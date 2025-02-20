function [outImg] = swirlFilter(inImg, factor, ox, oy)
%c = c1*cosa-r1*sina;
%r = c1*sina-r1*cosa;
%|AB|= squrt((x1-x2)^2+(y1-y2)^2);


% inImg = imread('yoda.bmp');
inImg = uint8(inImg);
% imshow(inImg);
f = factor;
ox = ox;
oy = oy;
%define factor value from ? to ?
R = size(inImg,1);
C = size(inImg,2);

 if ox > C || oy >R
     disp('value is out of rage.');
     ox = 1/2*C;
     oy = 1/2*R;
 end

output = zeros(R,C,3);
outImg = uint8(output);
u = C - ox;
v = R - oy;
radi1 = min(ox,oy);
radi2 = min(u,v);
radi = min(radi1,radi2);
%min distance = define the radius value
theta = abs(acos((radi-1)/2));

for i = 1: R
        for j =1:C
               
                AB = abs(sqrt((j-ox)^2+(i-oy)^2));
                %mapping all pixels out of circle                
            if AB > radi
                
               outImg(i,j,:)= inImg(i,j,:);
           
            elseif AB <= radi
   

                    thetaT = (AB/radi)*(theta)*f;
%                   thetaT = (AB/radi^f)*theta;
                
                if i == oy && j == ox
                    outImg(i,j,:) = inImg(i,j,:);
                else 
                       m = min(round(abs(j*sin(thetaT) + i*cos(thetaT)))+1,R);
                  
                       n = min(round(abs(j*cos(thetaT) - i*sin(thetaT)))+1,C);
                        
                      outImg(i,j,:) = inImg(m ,n,:);
                end
                               
            end
              
        end
end
% imshow(outImg);

end