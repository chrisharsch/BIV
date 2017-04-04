%% Blatt 1 Aufgabe 1
x=[ 1 2 3 4 ]
x'
x*x'
x.*x
[x x]
M=[x;2*x];
M=[M;M];
M
M(2,3)
M(2,:) % hier bedeutet der ":" alle Spalten
M(:,3) % hier bedeutet der ":" alle Zeilen
M(2:4,1:2) % "2:4" bedeutet "2 bis 4"
M>3 % vergleichen Sie die Ausgabe mit der Ausgabe der nächsten Zeile
M(M>3)
M(M>3)=17
M
%% Blatt 1 Aufgabe 2a
moewe=imread('moewex.jpg');
figure;
imshow(moewe);
size(moewe);
moewe_red = moewe;
moewe_red(:,:,2:3)=1;
moewe_green = moewe;
moewe_green(:,:,[1 3])=1;
moewe_blue = moewe;
moewe_blue(:,:,1:2)=1;
showQuadView(moewe, moewe_red, moewe_green, moewe_blue);
%% Blatt 1 Aufgabe 2b
% HSI =  hue saturation intensity
moewe=imread('moewex.jpg');
hsi_moewe = rgb2hsi(moewe);
moewe_hsi_hue = hsi_moewe;
moewe_hsi_hue(:,:,2:3)=1;
moewe_hsi_saturation = hsi_moewe;
moewe_hsi_saturation(:,:,[1 3])=1;
moewe_hsi_intensity = hsi_moewe;
moewe_hsi_intensity(:,:,1:2)=1;
showQuadView(moewe, moewe_hsi_hue, moewe_hsi_saturation, moewe_hsi_intensity);
%% Blatt 1 Aufgabe 2c
% In moewe_hsi_green hebt sich die Moewe am beten vom Hintergrund ab
%% Blatt 1 Aufgabe 2d
moewe=imread('moewex.jpg');
hsi_moewe = rgb2hsi(moewe);
moewe_hsi_saturation = hsi_moewe;
moewe_hsi_saturation(:,:,[1 3])=1;
moewe_hsi_saturation(moewe_hsi_saturation(:,:,2)<0.7)=0;
imshow(moewe_hsi_saturation);

%% Blatt 1 Aufgabe 2e
moewe=imread('moewex.jpg');
hsi_moewe = rgb2hsi(moewe);
moewe_hsi_saturation = hsi_moewe;
moewe_hsi_saturation(:,:,[1 3])=1;
moewe_hsi_saturation(moewe_hsi_saturation(:,:,:)>0.7)=0;
imshow(moewe_hsi_saturation);
moewe_binary = repmat(moewe_hsi_saturation, [1 1 3]);