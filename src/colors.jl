

# creates a Scale.color_discrete_manual based on a DataFrame column (a DataArray) and a Dict
# every unique value in the data array must be a key in the dict
# returns Scale.color_discrete_manual with color order such that Gadfly plotting with color=myColumn will give colors as specified by the Dict.
groupcolors(da::DataArray, dict::Dict) = Scale.color_discrete_manual(map(x->dict[x], unique(da))...)

