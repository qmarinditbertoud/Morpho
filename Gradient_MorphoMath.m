clear all;close all;
I=imread('Ampoule.gif');
colormap('gray');
figure(1);
imagesc(I);
title('Image de base');

disk=strel('disk',3);
V4=[0,1,0;1,1,1;0,1,0];

Ero=imerode(I,V4);
Dil=imdilate(I,V4);

Sym=Dil-Ero;
Int=I-Ero;
Ext=Dil-I;


figure(2);
colormap('gray');
imagesc(Sym);
title('Gradient Symétrique');


figure(3);
colormap('gray');
imagesc(Int);
title('Gradient Intérieur');


figure(4);
colormap('gray');
imagesc(Ext);
title('Gradient Extéri  eur');

B=strel('disk',8,4);
I2=imopen(I,B);
I2=I-(I-I2);
figure(5);
%colormap('gray');
imshow(I2);
title('White top hat');

