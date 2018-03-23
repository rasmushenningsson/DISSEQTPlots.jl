module DISSEQTPlots

Pkg.installed("DISSEQT")==nothing && warn("Module DISSEQT not installed. Please refer to DISSEQTPlots installation instructions at https://github.com/rasmushenningsson/DISSEQTPlots.jl")

using DISSEQT
using Gadfly
using DataFrames
using Colors

Pkg.installed("PlotlyJS")!=nothing && (import PlotlyJS; const py=PlotlyJS) # import to avoid clash with Gadfly


export 
    groupcolors,
    linearregressionplot,
    pairwisescatterplot,
    talusplot,
    fitnesslandscapeplot,
    saveplot


include("colors.jl")
include("stopcodons.jl")
include("pairwise.jl")
include("talus.jl")
include("fitnesslandscape.jl")
include("save.jl")
include("saveplotly.jl")




end