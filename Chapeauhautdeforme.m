clear all;close all;
I=imread('angiogram.png');

figure(1);
imshow(I);
title('Image de base');

disk=strel('disk',3);
V4=[0,1,0;1,1,1;0,1,0];
I2=imtophat(I,disk);

figure(2);
imshow(I2);
title('Image avec amélioration des contrastes de image de base');

% I=imread('rice.jpg');
% I=rgb2gray(I);
% figure(1);
% imshow(I);
% title('Image de base');
% 
% disk=strel('disk',20);
% V4=[0,1,0;1,1,1;0,1,0];
% I2=imtophat(I,disk);
% 
% %I3=imadjust(I2);
% 
% figure(2);
% imshow(I2);
% title('Image avec amélioration des contrastes de image de base');

%figure(3)
%surfc(I3(1:4:250,1:4:250));

% figure(4)
% surfc(I2(1:4:250,1:4:250));

