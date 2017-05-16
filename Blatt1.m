%% Aufgabe 1 

x = [1 2 3 4 ];
x' %#ok<NOPTS>
x*x'%#ok<NOPTS>
x.*x%#ok<NOPTS>

[x x]%#ok<NOPTS>
M=[x;2*x];
M%#ok<NOPTS>
M=[M;M];
M%#ok<NOPTS>
M(2,3)
M(2,:)      % hier bedeutet der ":" alle Spalten
M(:,3)      % hier bedeutet der ":" alle Zeilen
M(2:4,1:2)  % "2:4" bedeutet "2 bis 4"
M>3%#ok<NOPTS>         % vergleichen Sie die Ausgabe mit der Ausgabe der nächsten Zeile
M(M>3)
M(M>3)=17%#ok<NOPTS>
M%#ok<NOPTS>

%% Aufgabe 2a

source=imread('moewex.jpg');
figure;
imshow(source);
size(source)
source_red = source;
source_red(:,:,2:3)=1;
source_green = source;
source_green(:,:,[1 3])=1;
source_blue = source;
source_blue(:,:,1:2)=1;
showQuadView(source, source_red, source_green, source_blue);

%% Aufgabe 2b

source=imread('moewex.jpg');
hsi_source=rgb2hsi(source);
hsi_source_hue=hsi_source;
hsi_source_hue(:,:,2:3)=1;
hsi_source_saturation=hsi_source;
hsi_source_saturation(:,:,[1 3])=1;
hsi_source_intensity=hsi_source;
hsi_source_intensity(:,:,1:2)=1;
showQuadView(hsi_source, hsi_source_hue, hsi_source_saturation, hsi_source_intensity);

% Aufgabe 2c
% In moewe_hsi_green hebt sich die Moewe am beten vom Hintergrund ab

%% Aufgabe 2d
source=imread('moewex.jpg');
hsi_source = rgb2hsi(source);
hsi_source_saturation = hsi_source;
hsi_source_saturation(:,:,[1 3])=1;
hsi_source_saturation(hsi_source_saturation(:,:,2)<0.7)=0;
imshow(hsi_source_saturation);

%% Aufgabe 2e
source=imread('moewex.jpg');
hsi_source = rgb2hsi(source);
hsi_source_saturation = hsi_source;
hsi_source_saturation(:,:,[1 3])=1;
hsi_source_saturation(hsi_source_saturation(:,:,:)>0.7)=0;
imshow(hsi_source_saturation);
source_binary = repmat(hsi_source_saturation, [1 1 3]);
