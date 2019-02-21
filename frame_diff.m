clc;
clear all;
ref=rgb2gray(imread('/home/sagar/Desktop/svg/1.jpg'));

[row, col]=size(ref);
diff = zeros(row, col);

for k=1:150
mid=rgb2gray(imread(strcat('/home/sagar/Desktop/svg/',int2str(k),'.jpg')));
%for consecutive frame diff: mid2=rgb2gray(imread(strcat('/home/sagar/Desktop/svg/',int2str(k+1),'.jpg'))); 
for i=1:row
    for j=1:col 
        %for consecutive frame diff: diff(i, j) = mid(i, j) - mid2(i, j);
        diff(i, j) = ref(i, j) - mid(i, j);
    end
end
imshow(diff);
imwrite(diff, strcat('/home/sagar/Desktop/svg/diff',int2str(k),'.jpg'));
end
