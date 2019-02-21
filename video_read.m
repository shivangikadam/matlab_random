clc;
clear all;

fvid=VideoReader('/home/sagar/Downloads/test.mp4');

for i=1:500
    invid=readFrame(fvid);
    path=strcat('/home/sagar/Desktop/svg/',int2str(i),'.jpg');
    imwrite(invid, path);
end