function [B] = AllBernstein(n,u)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
B = zeros(n,1);
B(1) = 1; 
u1 = 1-u;
for j=2:n
    saved = 0;
    for k=1:j-1
        temp = B(k);
        B(k) = saved + u1*temp;
        saved = u*temp;
    end
    B(j) = saved;
end
end

