%% Aufgabe 1a
Triangle = imread('Dreieck.png');

GradientX = [0,0,0; 1,0,-1; 0,0,0];
GradientY = GradientX';

TriangleVerticalEdge = conv2(Triangle, GradientX, 'same');
TriangleHorizontalEdge = conv2(Triangle, GradientY, 'same');

figure('Name', 'TriangleVerticalEdge');
imshow(TriangleVerticalEdge, []);
figure('Name', 'TriangleHorizontalEdge');
imshow(TriangleHorizontalEdge, []);

%% Aufgabe 1b

Triangle = imread('Dreieck.png');

GradientX = [0,0,0; 1,0,-1; 0,0,0];
GradientY = GradientX';
TriangleVerticalEdge = conv2(Triangle, GradientX, 'same');
TriangleHorizontalEdge = conv2(Triangle, GradientY, 'same');

AmountVertical = abs(TriangleVerticalEdge);
AmountHorizontal = abs(TriangleHorizontalEdge);

figure('Name', 'Amount Vertical');
imshow(AmountVertical, []);
figure('Name', 'Amount Horizontal');
imshow(AmountHorizontal, []);

%% Aufgabe 1c

Triangle = imread('Dreieck.png');
LaPlace = [0,1,0; 1,-4,1; 0,1,0];
Result = conv2(Triangle, LaPlace, 'same');
figure('Name','Triangle Laplace');
imshow(Result);

%% Aufgabe 1d

Moon = imread('Mond.png');
figure('Name','Moon original');
imshow(Moon);
LaPlace = [0,1,0; 1,-4,1; 0,1,0];
LaPlace2 = LaPlace.*0.3;
MoonDouble = im2double(Moon);
Result = conv2(MoonDouble, LaPlace2, 'same');
figure('Name','Moon LaPlace');
imshow(Result);
MoonResult = MoonDouble - Result;
figure('Name','Moon Result');
imshow(MoonResult);


%% Aufgabe 2a
biv = imread('BIVn.png');
figure('Name','Original');
imshow(biv, []);
bivDouble = im2double(biv)*255;
disp(bivDouble);
% Anzal der Grauwerte: 2 ( 0, 255)

%% Aufgabe 2b

biv = imread('BIVn.png');
bivDouble = im2double(biv)*255;
GradientX = [1 0 -1];
GradientY = GradientX';
bivVerticalEdge = conv2(bivDouble, GradientX, 'same');
bivHorizontalEdge = conv2(bivDouble, GradientY, 'same');
VerticalGrad = (bivVerticalEdge).^2;
HorizontalGrad = (bivHorizontalEdge).^2;
EdgePic =  sqrt( VerticalGrad + HorizontalGrad);
figure('Name','Edges BIV');
imshow(EdgePic, []);

%% Aufgabe 2c

Gauss = [1 2 1; 2 4 2; 1 2 1];
biv = imread('BIVn.png');
bivDouble = im2double(biv)*255;
bivGauss10 = bivDouble;
for m=1:10
    bivGauss10 = conv2(bivGauss10, Gauss, 'same');
end
figure('Name', 'BIV Gauss 10Loops');
imshow(bivGauss10, []);

bivGauss15 = bivDouble;
for m=1:15
    bivGauss15 = conv2(bivGauss15, Gauss, 'same');
end
figure('Name', 'BIV Gauss 15Loops');
imshow(bivGauss15, []);

bivGauss30 = bivDouble;
for m=1:30
    bivGauss30 = conv2(bivGauss30, Gauss, 'same');
end
figure('Name', 'BIV Gauss 30Loops');
imshow(bivGauss30, []);

bivGauss60 = bivDouble;
for m=1:60
    bivGauss60 = conv2(bivGauss60, Gauss, 'same');
end
figure('Name', 'BIV Gauss 60Loops');
imshow(bivGauss60, []);

bivGauss120 = bivDouble;
for m=1:120
    bivGauss120 = conv2(bivGauss120, Gauss, 'same');
end
figure('Name', 'BIV Gauss 120Loops');
imshow(bivGauss120, []);

%% Aufgabe 2d
bivGauss10VertEdge = conv2(bivGauss10, GradientX, 'same');
bivGauss10HoriEdge = conv2(bivGauss10, GradientY, 'same');
bivGauss10GradVert = (bivGauss10VertEdge).^2;
bivGauss10GradHorz = (bivGauss10HoriEdge).^2;
EdgePicGauss10 = sqrt( bivGauss10GradVert + bivGauss10GradHorz );
figure('Name','BIV Gauss 10 Loops');
imshow(EdgePicGauss10, []);

bivGauss15VertEdge = conv2(bivGauss15, GradientX, 'same');
bivGauss15HoriEdge = conv2(bivGauss15, GradientY, 'same');
bivGauss15GradVert = (bivGauss15VertEdge).^2;
bivGauss15GradHorz = (bivGauss15HoriEdge).^2;
EdgePicGauss15 = sqrt( bivGauss15GradVert + bivGauss15GradHorz );
figure('Name','BIV Gauss 15 Loops');
imshow(EdgePicGauss15, []);

bivGauss30VertEdge = conv2(bivGauss30, GradientX, 'same');
bivGauss30HoriEdge = conv2(bivGauss30, GradientY, 'same');
bivGauss30GradVert = (bivGauss30VertEdge).^2;
bivGauss30GradHorz = (bivGauss30HoriEdge).^2;
EdgePicGauss30 = sqrt( bivGauss30GradVert + bivGauss30GradHorz );
figure('Name','BIV Gauss 30 Loops');
imshow(EdgePicGauss30, []);

bivGauss60VertiEdge = conv2(bivGauss60, GradientX, 'same');
bivGauss60HoriEdge = conv2(bivGauss60, GradientY, 'same');
bivGauss60GradVert = (bivGauss60VertiEdge).^2;
bivGauss60GradHorz = (bivGauss60HoriEdge).^2;
EdgePicGauss60 = sqrt( bivGauss60GradVert + bivGauss60GradHorz );
figure('Name','BIV Gauss 60 Loops');
imshow(EdgePicGauss60, []);

bivGauss120VertiEdge = conv2(bivGauss120, GradientX, 'same');
bivGauss120HoriEdge = conv2(bivGauss120, GradientY, 'same');
bivGauss120GradVert = (bivGauss120VertiEdge).^2;
bivGauss120GradHorz = (bivGauss120HoriEdge).^2;
EdgePicGauss120 = sqrt( bivGauss120GradVert + bivGauss120GradHorz );
figure('Name','BIV Gauss 120 Loops');
imshow(EdgePicGauss120, []);

%% Aufgabe 3a
HNoisy = imread('HausNoisy.png');
HDouble = im2double(HNoisy);
figure('Name','HausNoisy Original');
imshow(HDouble, []);
HMed = medfilt2(HNoisy,[5 5]);
figure('Name','HausNoisy - Median Filter');
imshow(HMed, []);

gaussfilter = fspecial('gaussian', [5 5]);
HGauss = imfilter(HDouble, gaussfilter, 'same');
figure('Name','HausNoisy - Gauss Filter');
imshow(HGauss, []);

avgfilter = fspecial('average', [5 5]);
HAverage = imfilter(HDouble, avgfilter, 'same');
figure('Name','HausNoisy - Average Filter');
imshow(HAverage, []);

%% Aufgabe3b
% 1) Gradientenberechnung
HNoisyX = conv2(HDouble, GradientX, 'same'); 
HNoisyY = conv2(HDouble, GradientY, 'same');
HNoisyEdgePic = sqrt(HNoisyX.^2 + HNoisyY.^2);
figure('Name','HausNoisy Edges');
imshow(HNoisyEdgePic,[]);

% 2)
HBinary = im2bw(HNoisyEdgePic, 0.2);
figure('Name','HausNoisy BinaryPic');
imshow(HBinary);

% 3)
HNurKanten = HDouble .* HBinary;
HBinaryInverted = imcomplement(HBinary);
HGaussMinusKanten = HGauss .* HBinaryInverted;
HGlatt = HNurKanten + HGaussMinusKanten;

% 4)
figure('Name','HausNoisy Gauss Filtered');
imshow(HGauss, []);
figure('Name','HausNoisy Inhomogeneous Filtered');
imshow(HGlatt, []);



%% Aufgabe4a
Ringe = imread('ringe.png');
RingeDbl = im2double(Ringe);
figure('Name','Ringe Original');
imshow(RingeDbl, []);
RingeKleiner = imresize(RingeDbl, 0.1, 'nearest');
figure('Name','Ringe resized');
imshow(RingeKleiner, []);

%% Aufgabe4b
GaussMaske = [1 2 1; 2 4 2; 1 2 1];
RingeGlatt = RingeDbl(:,:,1);

for m=1:40
RingeGlatt = conv2(RingeGlatt, GaussMaske, 'same');
end
figure('Name','Ringe Gauss geglättet 40 Loops');
imshow(RingeGlatt, []);






