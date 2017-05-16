%% Aufgabe 1a
doubleBild = double(imread('blueten.jpg'))/255;
% Bild einlesen und in Double umwandeln, dazu noch werte Zwischen [0,1]
% erzeugen

%% Aufgabe 1b
figure;
hist1 = imhist(doubleBild(:,:,1));
hist2 = imhist(doubleBild(:,:,2));
hist3 = imhist(doubleBild(:,:,3));
plot(hist1, 'r');
hold on
plot(hist2, 'b');
plot(hist3, 'g');
title('Histogramm');
% Histogramme mit den einzelnen Kanälen erstellen, diese anschliesend auf
% der figure plotten. Dem Figure den namen Histogramm geben

%% Aufgabe 1c
hsi_bluete = rgb2hsi(imread('blueten.jpg'));
hsi_channel_3 = hsi_bluete(:,:,3);
hist_brightness = imhist(hsi_channel_3);
plot(hist_brightness, 'black');
% HSI liefert die Intensität der Farbkanäle und durch das Histogramm wird
% diese dargestellt

%% Aufgabe 1d
hsi_bluete = rgb2hsi(imread('blueten.jpg'));
hsi_bluete_channel_3 = hsi_bluete(:,:,3);
min_brightness = min(hsi_bluete_channel_3(:));
max_brightness = max(hsi_bluete_channel_3(:));

%% Aufgabe 1e
gray_blueten = rgb2gray(imread('blueten.jpg'));
Low_High = stretchlim(gray_blueten);

%% Aufgabe 1f
hist_minmax = imhist(Low_High);
plot(hist_minmax, 'blue');

%% Aufgabe 2a
gray_blueten = rgb2gray(imread('blueten.jpg'));
Low_High = stretchlim(gray_blueten)*255;
Low_high_min = min(Low_High);
Low_high_max = max(Low_High);
new_gray_blueten = (((gray_blueten - Low_high_min) * (255/(Low_high_max - Low_high_min))));
imshow(new_gray_blueten);

%% Aufgabe 2b
gray_blueten = rgb2hsi(imread('blueten.jpg'));
gamma_gray = 255*((gray_blueten(:,:,3)/255).^0.98);
imshow(gamma_gray);