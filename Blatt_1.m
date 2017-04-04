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
%% Blatt 1 Aufgabe 2
