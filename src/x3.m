% script for question 3.1

load lighthouse

p = 3;
xx3 = ww(1:3:end, 1:p:end);

SIZE = size(xx3);

R = SIZE(1);
C = SIZE(2);

out = zeros(p * R, p * C);

% time step tt1 and tt2

n1 = 1:C;
n2 = 1:R;
tt1 = 1:.3310:C;
tt2 = 1:.3310:R;

for i = 1:R
    xr1linear = interp1(n1, xx3(i,:), tt1);
    out(i,:) =  xr1linear;
end

for i = 1:3*C
    xrlinear = interp1(n2, out(1:R,i), tt2); 
    out(:,i) = xrlinear;
end
