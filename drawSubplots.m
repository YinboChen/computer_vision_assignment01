function [] = drawSubplots(current_img,output_img,name)        
        subplot(1,2,1),imshow(current_img),title('The original image')
        subplot(1,2,2),imshow(output_img),title(name);
end