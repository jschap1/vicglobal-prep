function xyz = raster2xyz(xcoords, ycoords, M)
%
% INPUTS
% xcoords, nx by 1 vector of x coordinates
% ycoords, ny by 1 vector of y coordinates
% M, nx by ny grid
%
% OUTPUTS
% xyz, nx*ny by 3 matrix with coordinates and values

% lat
% lon
% nrow = length(lat);
% ncol = length(lon);

[X, Y] = meshgrid(xcoords, ycoords);
xyz = [X(:) Y(:) M(:)];

return