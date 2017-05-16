% 3.1 used prelab code for analysis

% 3.2(a) given code

xr1 = (-2).^(0:6);
L = length(xr1);
nn = ceil((0.999:1:4*L)/4); %<-- Round up to the integer part
xr1hold = xr1(nn);

% 3.2(b) & 3.2(c) code

load lighthouse;
p = 3;
xx3 = ww(1:p:end, 1:p:end);
SIZE = size(xx3);

R = SIZE(1); % rows
C = SIZE(2); % columns
xholdrows = zeros(p, p*C); % 3.2(b)
xhold = zeros(p*R, p*C); % 3.2(c)

for i = 1:R
    nn = ceil((0.999:1:p*C)/p);
    temp = xx3(i,:);
    xr1hold = temp(nn);
    xholdrows(i,:) = xr1hold; % result for 3.2(b)
    xhold(i,:) = xr1hold;
end

for i = 1:p*C
    mm = ceil((0.999:1:p*R)/p);
    temp = xhold(:, i);
    xr2hold = temp(mm)';
    xhold(:,i) = xr2hold; % result for 3.2(c)
end

% 3.2(d) MATLAB Interp1 given code

n1 = 0:6;
xr1 = (-2).^n1;
tti = 0:0.1:6; %-- locations between the n1 indices
xr1linear = interp1(n1,xr1,tti); %-- function is INTERP-ONE
stem(tti,xr1linear)

% 3.2(e) Our interp1 on Lighthouse

load lighthouse;
p = 3;
xx3 = ww(1:p:end, 1:p:end);
SIZE = size(xx3);

R = SIZE(1);
C = SIZE(2);
xxlinear = zeros(p*R, p*C); % 3.2(e)
n1 = 1:C;
n2 = 1:R;
tt1 = 1:.3310:C;
tt2 = 1:.3310:R;

for i = 1:R
    xr1linear = interp1(n1, xx3(i,:), tt1);
    xxlinear(i,:) = xr1linear;
end

for i = 1:p*C
    xrlinear = interp1(n2, xxlinear(1:R,i), tt2);
    xxlinear(:,i) = xrlinear; % result for 3.2(e)
end

% show_img(xxlinear) % shows our interpolated image
