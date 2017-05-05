% code used in the prelab and warm up sections


% Pre-lab 1.4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% loading in a saved .mat data file
load lighthouse

% check what variable name and info the original author saved lighthouse as
whos    % outputs ww and more info on its size etc

% if we used "who" instead of "whos" it will just list all active var names
who

% for indexing ":" usually means all indices if by itself. Syntax for range of
% vals. 
% creating a row vector holding all the pixels in the 200th row
ww200 = ww(200,:);

% vals 0 -> Black and 255 -> white (insert Umar's Physics Explaination here)
% above => smaller values are darker and larger values are lighter

% finding where the 200th row crosses the fence
% the following will plot the connected plot of the sampled pixel values
plot(ww200)



% Warm up 2.1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% outer product to create a matrix of cosine values
xpix = ones(256,1) * cos(2 * pi * (0:255) / 16);

% since we want 5 black bands w/ white band separations => 5 periods
% working with pixels => 400x400 matrix = 400x400 image
% 400 / 80 = 5 => use 80 as your period to get 5 periods in a 400px span
ypix = ones(400,1) * cos(2 * pi * (0:399) / 80);
ypix = ypix'; % transpose of vert lines gives horizontal lines
show_img(ypix);


% Warm up 2.3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% downsampling
wp = ww(1:2:end,1:2:end);
show_img(wp)
