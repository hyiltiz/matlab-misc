function [Fn Fmat] = fibbonacci(n)

if n < 0
  isNegative = 1;
  n = abs(n);
elseif n == 0
  Fn = 0;
  return;
else
  isNegative = 0;
end

Fmat = eye(n,n);
Fmat(2:end,1:end-1) = Fmat(2:end,1:end-1)+ eye(n-1);
Fmat(1:end-1,2:end) = Fmat(1:end-1,2:end)-1*eye(n-1);
Fmat = Fmat(1:n,1:n);
Fn = det(Fmat);

if isNegative
  Fn = (-1)^(n-1) .* Fn;
end

% % using a loop
% N = n;
% F = zeros(1,N);
% F(1:2) = 1;
% for n = 3:N
%   F(n) = F(n-1) + F(n-2);
% end
% Fn = F(n);
end