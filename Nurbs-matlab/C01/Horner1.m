function [C] = Horner1(A, n, u0)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
C = zeros(3,1);
C(:) = A(n+1,:);
for i=n:-1:1
    C(:) = C(:)*u0+transpose(A(i,:));
end
end

