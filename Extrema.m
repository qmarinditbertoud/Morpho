clear all;close all;
I=imread('blobs2.png');
figure(1);
imshow(I);
title('Image de base');
D=bwdist(I); %affichage de la carte des distances

figure(2);
subimage(mat2gray(D));
title('Carte des distances');

BW=imextendedmax(D,2);%obtention des maxima et affichage sur l'image précédente
figure(3);
imshow(BW);
title('Maxima');

figure(4);

R = imreconstruct(D,D+3 ); %reconstruction par marqueur (marker,mask), +3 pour dilater la courbe et la réhausser
%sinon sommet est un point
imagesc(D+3-R);%on récupére que le sommet qui a été élargi par reconstruction


