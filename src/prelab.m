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

