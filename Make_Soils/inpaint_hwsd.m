% Fills missing data in HWSD soil texture data
% Reduces extrapolation error by setting any values higher than the highest
% observed value to the highest observed value, and same for low values
%
% Eliminates negative values and values over 100%

function Y = inpaint_hwsd(X, landmask, censor)

minval = nanmin(X(:));
maxval = nanmax(X(:));

Y = inpaint_nans(X);
Y(~landmask) = NaN;

Y(Y>maxval) = maxval;
Y(Y<minval) = minval;

if censor
    Y(Y<0) = 0;
    Y(Y>100) = 100;
end

return