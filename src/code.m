% code used in the prelab and warm up sections


% Pre-lab 1.4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% loading in a saved .mat data file
load lighthouse

% check what variable name and info the original author saved lighthouse as
whos    % outputs ww and more info on its size etc

% if we used "who" instead of "whos" it will just list all active var names
who

% shows the original lighthouse img
show_img(ww)
title('Original Lighthouse Img')
xlabel('column index (n)')
ylabel('row index (m)')
%screen2jpeg('lighthouse.jpg')


% for indexing ":" usually means all indices if by itself. Syntax for range of
% vals. 
% creating a row vector holding all the pixels in the 200th row
ww200 = ww(200,:);

% vals 0 -> Black and 255 -> white (insert Umar's Physics Explaination here)
% above => smaller values are darker and larger values are lighter

% finding where the 200th row crosses the fence
% the following will plot the connected plot of the sampled pixel values
plot(ww200)
title('Values of 1 line of horizontal pixels in lighthouse')
xlabel('vector index')
ylabel('grayscale intensity value')
%screen2jpeg('show_ww.jpg')

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
%screen2jpeg('xpix.jpg')

xpix = xpix';
show_img(xpix)
title('Transpose of xpix img')
xlabel('row index (m)')
ylabel('column index (n)')
%screen2jpeg('xpix_transpose.jpg')

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
wp = ww(1:2:end,1:2:end);
show_img(wp)
title('p=2 Down Sampled Lighthouse')
xlabel('column index (n)')
ylabel('row index (m)')
%screen2jpeg('downsample2.jpg')

down_size = size(wp);

% Lab 3.2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% get the down 2 sample version

wp = ww(1:3:end, 1:3:end);
xx3 = ww(1:3:end, 1:3:end);
