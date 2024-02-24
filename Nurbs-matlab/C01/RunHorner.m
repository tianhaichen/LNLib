%This is a main routine to run Horner's Algorithm
clear;

%determine the order of the function
n = input('Enter the order of the polynomial: ');

%we should add n points (vectors) to the system
A = zeros(n+1,3);

for i=1:n+1
    fprintf('Enter x-coordinate of point %d : ',i); A(i,1) = input('');
    fprintf('Enter y-coordinate of point %d : ',i); A(i,2) = input('');
    fprintf('Enter z-coordinate of point %d : ',i); A(i,3) = input('');
end
PX = zeros(100,1);
PY = zeros(100,1);
PZ = zeros(100,1);
for i=1:100
    u0 = i/100;
    [C] = Horner1(A, n, u0);
    PX(i) = C(1);
    PY(i) = C(2);
    PZ(i) = C(3);
end

plot3(PX,PY,PZ);