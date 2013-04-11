%Monte Carlo3 (Random Search) realizacija
%1. Sugeneruojame 100 atsitiktiniu tasku int [-10.10]^2
%2. Surandame, kuriame funkcija igyja didziausia (maziausia) reiksme
a1=-10;
b1=10;
n=2;% Dimensija (matavimas)
k1=50;% tasku (vektoriu) skaicius
x1=a1 + (b1-a1).*rand(k1,n);% Perdaryti kad generuotu dvimacius
f1=[];
hold on;
for i=1:k1
  f1(i)=sincos2(x1(i,:));
end
[fMin1,indMin1]=min(f1);
%[fMax,indMax]=max(f);
xMin1=x1(indMin1,:);
%xMax=x(indMax,:);
fprintf('Surastas min1=%6.4f taske x1=(%6.4f,%6.4f)\n',fMin1,xMin1(1),xMin1(2));
%fprintf('Surastas max=%6.4f taske x=(%6.4f,%6.4f)\n',fMax,xMax(1),xMax(2));
scatter(x1(:,1),x1(:,2),'b.');
scatter(xMin1(1),xMin1(2),'r*');
text(xMin1(1)+0.3,xMin1(2),num2str(fMin1));
rectangle('Position',[-10.0,-10.0,20.0,20.0],...
    'LineWidth',5,'LineStyle','--')
%grafikas2
%kitus 50 atliekam sumazintoje srityje
k2=50;% tasku (vektoriu) skaicius
a2=xMin1(1)-2;% sumazinta sritis
b2=xMin1(1)+2;
a3=xMin1(2)-2;% sumazinta sritis
b3=xMin1(2)+2;

x2(:,1)=a2 + (b2-a2).*rand(k2,1);% Perdaryti kad generuotu dvimacius
x2(:,2)=a3 + (b3-a3).*rand(k2,1);
f2=[];
hold on;
for i=1:k2
  f2(i)=sincos2(x2(i,:));
end
[fMin2,indMin2]=min(f2);
%[fMax,indMax]=max(f);
xMin2=x2(indMin2,:);
%xMax=x(indMax,:);
fprintf('Surastas min2=%6.4f taske x2=(%6.4f,%6.4f)\n',fMin2,xMin2(1),xMin2(2));
%fprintf('Surastas max=%6.4f taske x=(%6.4f,%6.4f)\n',fMax,xMax(1),xMax(2));
scatter(x2(:,1),x2(:,2),'y.');
scatter(xMin2(1),xMin2(2),'g*');