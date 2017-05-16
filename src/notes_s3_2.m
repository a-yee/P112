% script for question 3.1

load lighthouse

% interpolation factor 
p = 3;
xx3 = ww(1:3:end, 1:p:end);
show_img(xx3)
title('downsample p=3 lighthouse')
xlabel('column index (n)')
ylabel('row index (m)')
% screen2jpeg('test.jpg')

% downsample matrix size, R = rows, C = cols
SIZE = size(xx3);

R = SIZE(1);
C = SIZE(2);

% interpolated output, preallocate storage
xxlinear = zeros(p * R, p * C);

% time step tt1 and tt2
% (end - begin) / N = time_step where N = # elem
n1 = 1:C;
n2 = 1:R;

% tt1 = (C - 1) / 3*R
tt1 = 1:.3310:C;

% tt2 = (R - 1) / 3*C
tt2 = 1:.3310:R;

% expanding the rows <- R -> row interp
for i = 1:R
    row_temp = interp1(n1, xx3(i,:), tt1);
    xxlinear(i,:) =  row_temp;
end

% expanding the cols, column interp
for i = 1:3*C
    column_temp = interp1(n2, xxlinear(1:R,i), tt2); 
    xxlinear(:,i) = column_temp;
end

show_img(xxlinear)
title('interp1 p=3 approximation of lighthouse')
xlabel('column index (max size = 3*n)')
ylabel('row index (max size = 3*m)')
% screen2jpeg('interp1_pic.jpg')
