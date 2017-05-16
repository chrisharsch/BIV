%% Aufgabe 1a
shading_image = double(imread('shading.jpg'))/255;
shading_image = shading_image(:,:,1);
folding_mask = [1 2 1];
result = conv2(shading_image, (folding_mask*0.6));
figure;
imshow(result);

%% Aufgabe 1b

shading_image = double(imread('shading.jpg'))/255;
shading_image = shading_image(:,:,1);
folding_mask = [1 2 1];
result = shading_image;
for m = 1:50
    result = conv2(result, (folding_mask*0.6), "valid");
end
figure;
imshow(result);

%% Aufgabe 1c

shading_image = double(imread('shading.jpg'))/255;
shading_image = shading_image(:,:,1);
folding_mask = [1 2 1];
result = shading_image;
for m = 1:50
    result = conv2(result, (folding_mask'), "valid");
end
figure;
imshow(result);

%% Aufgabe 1d

shading_image = double(imread('shading.jpg'))/255;
shading_image = shading_image(:,:,1);
folding_mask = [1 2 1];
result = shading_image;
for m = 1:50
    result = conv2(result, (folding_mask), "valid");
end
for m = 1:50
    result = conv2(result, (folding_mask'), "valid");
end
figure;
imshow(result);

%% Aufgabe 1e

folding_mask = [1 2 1];
result = conv2(folding_mask, folding_mask')

%% Aufgabe 2a



