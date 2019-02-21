clc;
clear all;
close all;

img_read=rgb2gray(imread(strcat('/home/sagar/Desktop/svg/1.jpg')));
[row, col]=size(img_read);
mean_bg = zeros(row, col);
%Background
for i=1:500
    img_read=rgb2gray(imread(strcat('/home/sagar/Desktop/svg/',int2str(i),'.jpg')));
    img_read=double(img_read);
        for j=1:row
            for k=1:col
                mean_bg(j, k) = mean_bg(j, k) + img_read(j, k);
                
            end
        end
end
mean_bg=mean_bg/500;
imshow(mean_bg, []);

%Foreground
foreground=zeros(row, col);
for i=1:500
    img_read=rgb2gray(imread(strcat('/home/sagar/Desktop/svg/',int2str(i),'.jpg')));
    img_read=double(img_read);
    for j=1:row
        for k=1:col
            %avoiding -ve values using abs()
            foreground(j, k) = foreground(j, k) + abs(mean_bg(j, k) - img_read(j, k));
        end
    end
    %for recursive method: mean_bg = 0.9 * mean_bg + 0.1 * img_read
end

figure
imshow(foreground, []);
    


