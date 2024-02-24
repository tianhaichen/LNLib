%This is a main routine to run Bezier curve
clear;

%determine the order of the function
n = input('Enter the order of the Bezier curve: ');
n = n +1;
% u = input('Enter the value of u: ');

%we should add n points (vectors) to the system
A = zeros(n,4);
w = zeros(n,1);

for i=1:n
    fprintf('Enter x-coordinate of point %d : ',i); A(i,1) = input('');
    fprintf('Enter y-coordinate of point %d : ',i); A(i,2) = input('');
    fprintf('Enter z-coordinate of point %d : ',i); A(i,3) = input('');
end
for i=1:n
    fprintf('Enter w1 for point 1 :'); w(i) = input('');
end
for i=1:n
    A(i,:) = A(i,:) * w(i);
    A(i,4) = w(i);
end
PX = zeros(100,1);
PY = zeros(100,1);
PZ = zeros(100,1);
% [B] = AllBernstein(n,u);
for i=1:101
    u0 = (i-1)/100;
    [C] = PointOnRationalBezierCurve(A,n,u0);
    PX(i) = C(1) / C(4);
    PY(i) = C(2) / C(4);
    PZ(i) = C(3) / C(4);
end

plot3(PX,PY,PZ);