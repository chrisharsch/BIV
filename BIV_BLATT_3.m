%% Blatt 3 Aufgabe 1a
shading_image = double(imread('shading.jpg'))/255;
shading_image_one = padarray(shading_image(:,:,1),[1 2 1],'circular','pre');
imshow(shading_image_one);
% funktioniert nicht