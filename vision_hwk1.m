% This script creates a menu driven application

%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Yinbo Chen
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
clc;

% Display a menu and get a choice
choice = menu('Choose an option', 'Exit Program', 'Load Image', ...
    'Display Image', 'Mean Filter',' makeBright_L',' makeBright_NL','Invert_L','invert_NL','addRandomNoise_L', ...
    'addRandomNoise_NL','luminance_L','luminance_NL','redFilter','binaryMask','Task11','Task12',...
    'Task13','Task14','Task15','Task16','Task17');  % as you develop functions, add buttons for them here
 
% Choice 1 is to exit the program
while choice ~= 1
   switch choice
       case 0
           disp('Error - please choose one of the options.')
           % Display a menu and get a choice
           choice = menu('Choose an option', 'Exit Program', 'Load Image', ...
    'Display Image', 'Mean Filter',' makeBright_L',' makeBright_NL','Invert_L','invert_NL','addRandomNoise_L',...
    'addRandomNoise_NL','luminance_L','luminance_NL','redFilter','binaryMask');  % as you develop functions, add buttons for them here
        case 2
           % Load an image
           image_choice = menu('Choose an image', 'lena1', 'mandril1', 'sully', 'yoda', 'shrek','redBaloon',...
               'wrench1.jpg');
           switch image_choice
               case 1
                   filename = 'lena1.jpg';
               case 2
                   filename = 'mandrill1.jpg';
               case 3
                   filename = 'sully.bmp';
               case 4
                   filename = 'yoda.bmp';
               case 5
                   filename = 'shrek.bmp';
               case 6
                   filename = 'redBaloon.jpg';           
               case 7
                   filename = 'wrench1.jpg';
               
               % fill in cases for all the images you plan to use
           end
           current_img = imread(filename);
       case 3
           % Display image
           figure
           imagesc(current_img);
           if size(current_img,3) == 1
               colormap gray
           end
           
       case 4
           % Mean Filter
           
           % 1. Ask the user for size of kernel
           
           % 2. Call the appropriate function
           newImage = meanFilter(current_img, k_size); % create your own function for the mean filter
           
           % 3. Display the old and the new image using subplot
           % ....
           %subplot(...)
           %imagesc(current_img)
           
           % subplot(...)
           %imagesc(newImage)
           
           
           % 4. Save the newImage to a file
           
              
       case 5
           %Brighten: individually modifies the RGB channels of an image, 
           %brightening or darkening it. Use Loops! (Task1)
            brightness1 = 0;
           %reset brighten to zero
            prompt = {'Enter Brighten value between -255 to 255:'};
            dlgtitle = 'Brighten Input';
            dims = 1;
           %input dim 
            answer = inputdlg(prompt,dlgtitle,dims);
            brightness1 = str2num(answer{1});
            %input strings to int
            output_L = makeBright_L(current_img,brightness1);
            %call a function
            drawSubplots(current_img,output_L);
            %side by side plot picture
            
       case 6
           %Brighten: individually modifies the RGB channels of an image, 
           %brightening or darkening it. Use No Loops! (Task2)
            brightness2 = 0;
            prompt = {'Enter Brighten value between -255 to 255:'};
            dlgtitle = 'Brighten Input';
            dims = 1;
            answer = inputdlg(prompt,dlgtitle,dims);
            brightness2 = str2num(answer{1})
            output_NL= makeBright_NL(current_img, brightness2);
            drawSubplots(current_img,output_NL);             
        
       case 7
           %Inverts the colors of an image. Use Loops! (Task3)
           outputInvert_L =  invert_L (current_img);
           drawSubplots(current_img,outputInvert_L);
           
      
       case 8
           %Inverts the colors of an image. Use No Loops! (Task4)
           outputInvert_NL =  invert_NL (current_img);
           drawSubplots(current_img,outputInvert_NL);
            
       case 9
           %Adds random noise to an image. Use Loops! (Task5)
           outputAddNoise_L = addRandomNoise_L (current_img);
           drawSubplots(current_img,outputAddNoise_L);
           
           
       case 10
            %Adds random noise to an image. Use  No Loops! (Task6)
           outputAddNoise_NL = addRandomNoise_NL (current_img);
           drawSubplots(current_img,outputAddNoise_NL);
          
           
       case 11
           %Changing a color image to a gray image. Use Loops! (Task7)
           outputLuminance_L = luminance_L (current_img);
           drawSubplots(current_img,outputLuminance_L);
           
           
       case 12
           %Changing a color image to a gray image. Use No Loops! (Task8)
           outputLuminance_NL = luminance_NL (current_img);
           drawSubplots(current_img,outputLuminance_NL);
           
       case 13
            redVal =0.299;
            prompt = {'Enter Red Filter value between 0 to 1:'};
            dlgtitle = 'Red Filter Input';
            dims = 1;
            answer = inputdlg(prompt,dlgtitle,dims);
            redVal = str2num(answer{1});  
            outputRedFilter = redFilter (current_img,redVal);
            drawSubplots(current_img,outputRedFilter);
      
       case 14
            outputBinaryMask = binaryMask (current_img);
            outputBinaryMaskCompared = binaryMaskCompared (current_img);
            subplot(1,3,1),imshow(current_img)
            subplot(1,3,2),imshow(outputBinaryMaskCompared)
            subplot(1,3,3),imshow(outputBinaryMask);
%           drawSubplots(current_img,outputBinaryMask);

       case 15
           
         
           

   end
   % Display menu again and get user's choice
%    choice = menu('Choose an option', 'Exit Program', 'Load Image', ...
%     'Display Image', 'Mean Filter');  % as you develop functions, add buttons for them here
    choice = menu('Choose an option', 'Exit Program', 'Load Image', ...
    'Display Image', 'Mean Filter',' makeBright_L',' makeBright_NL','Invert_L','invert_NL','addRandomNoise_L', ...
    'addRandomNoise_NL','luminance_L','luminance_NL','redFilter','binaryMask','Task11','Task12',...
    'Task13','Task14','Task15','Task16','Task17');  % as you develop functions, add buttons for them here
end
