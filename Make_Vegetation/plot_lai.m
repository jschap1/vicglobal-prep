% Plots monthly LAI for each vegetation cover class

function plot_lai(LAI, lon, lat, LC, R, outdir)

monthnames = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
nclasses = 17;

for i=1:nclasses
                
    for m=1:12

        LAI_values = LAI.(monthnames{m}).(LC.class_names{LC.alphabetical_order(i)});
        LAI_map = xyz2grid(lon, lat, LAI_values);
        
        % LAI
        outname = fullfile(outdir, ['LAI_', LC.class_names{LC.alphabetical_order(i)} '_' monthnames{m}, '.tif']);
        geotiffwrite(outname, LAI_map, R)

    end

end
            
return