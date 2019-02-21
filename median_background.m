clc;
clear all;
close all;

img_read=rgb2gray(imread(strcat('/home/sagar/Desktop/svg/1.jpg')));
[row, col]=size(img_read);
temp=zeros(row, col, 500);
[row, col, i]=size(temp);
%Background
for no=1:i
    img_read=rgb2gray(imread(strcat('/home/sagar/Desktop/svg/',int2str(no),'.jpg')));
    img_read=double(img_read);
        for j=1:row
            for k=1:col
                temp(j, k, no)=img_read(j, k);
                
            end
        end
end

median_bg=zeros(row, col);

for j=1:row
    for k=1:col
        temp(j, k, :) = sort(temp(j, k, :));
        median_bg(j, k) = median(temp(j, k, :));
    end
end

imshow(median_bg, []);

%Foreground
foreground=zeros(row, col);
for no=1:i
    img_read=rgb2gray(imread(strcat('/home/sagar/Desktop/svg/',int2str(no),'.jpg')));
    img_read=double(img_read);
    for j=1:row
        for k=1:col
            foreground(j, k) = foreground(j, k) + abs(median_bg(j, k) - img_read(j, k));
        end
    end
    %for recursive method: median_bg = 0.9 * median_bg + 0.1 * img_read
end

figure
imshow(foreground, []);
    


