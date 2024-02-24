function [C] = PointOnRationalBezierCurve(P,n,u)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[B] = AllBernstein(n,u);
C = zeros(4,1);
for k=1:n
    C(:) = C(:) + B(k)*transpose(P(k,:));
end
end