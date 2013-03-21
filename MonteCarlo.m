%Monte Carlo (Random Search) realizacija
%1. Sugeneruojame 100 atsitiktiniu tasku int [-10.10]
%2. Surandame, kuriame funkcija igyja didziausia (maziausia) reiksme
a=-10;
b=10;
x=a + (b-a).*rand(100,1);
f=sincos(x);
[fMin,indMin]=min(f);
[fMax,indMax]=max(f);
xMin=x(indMin);
xMax=x(indMax);
fprintf('Surastas min=%6.4f taske x=%6.4f \n',fMin,xMin);
fprintf('Surastas max=%6.4f taske x=%6.4f \n',fMax,xMax);
grafikas