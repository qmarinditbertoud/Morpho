clear all;
close all;


I=imread('Recit_b.png');
colormap('gray');
figure(1);
imshow(I);
title('Image de base');

mark=strel('line',25,90);

Erod=imerode(I,mark); %erode de I avec mark
Dila=imdilate(Erod,mark); %dilatation de l'erodée avec mark (ouverture)

Dila=min(Dila,I); 

mark2=[0,1,0;1,1,1;0,1,0];

while ~isequal(Dila,Erod)
    Erod=Dila;
    Dila=imdilate(Erod,mark2);
    Dila=min(Dila,I);
end

figure(2)
imagesc(Dila);
colormap('gray');



