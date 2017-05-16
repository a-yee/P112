load lighthouse

% Warm up 2.1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% outer product to create a matrix of cosine values
xpix = ones(256,1) * cos(2 * pi * (0:255) / 16);

% look at one row of the cosine matrix
% we do this since each row is the same. Fix the row index. I chose 1
% arbitrarily.
twne = xpix(1,1:17);
plot(twne)
title('Plot of values for one row vector of xpix')
xlabel('1 <= n <= 17 (truncated set, 1 period + 1 value)')
ylabel('cosine values')

show_img(xpix) % zoom in to see the pixel colors
title('Image of xpix, stack of cosines matrix')
xlabel('column index (n)')
ylabel('row index (m)')

xpix = xpix';
show_img(xpix)
title('Transpose of xpix img')
xlabel('row index (m)')
ylabel('column index (n)')

% twne will have 1 period of values, plus one extra value to verify that we
% indeed cycle back to the starting value.

% since we want 5 black bands w/ white band separations => 5 periods
% working with pixels => 400x400 matrix = 400x400 image
% 400 / 80 = 5 => use 80 as your period to get 5 periods in a 400px span
ypix = ones(400,1) * cos(2 * pi * (0:399) / 80);
ypix = ypix'; % transpose of vert lines gives horizontal lines

show_img(ypix);
title('400x400 horizontal band image')
xlabel('column index (n)')
ylabel('row index (m)')


% Warm up 2.3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% downsampling
p = 2;
wp = ww(1:p:end,1:p:end);
show_img(wp)
title('p=2 Down Sampled Lighthouse')
xlabel('column index (n)')
ylabel('row index (m)')

down_size = size(wp);
