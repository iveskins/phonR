# phonR
#### tools for phoneticians and phonologists

Just want to learn to use `phonR`? Read the [tutorial vignette](http://drammock.github.io/phonR).

This is a package for the R language built with phoneticians and phonologists in mind. Its main claim-to-fame is the `plotVowels` function, which supports all the standard output formats (screen, pdf, eps, svg, tiff, png, jpg), vowel polygons, ellipses, convex hulls, custom fonts, and distinguishing speaker groups by color, symbol, and/or linestyle. It also supports plotting diphthongs (or any arbitrary number of measurement timepoints, really), with optional arrowheads for indicating formant movement direction. The second main purpose of `phonR` is for normalization of formant frequency data. Currently there are 8 normalization methods implemented: bark, ERB, Lobanov, log, logmean, mel, Nearey, and Watt-Fabricius. The third aspect of `phonR` worth highlighting is the implementation of repulsive force calculations, and the ability to plot heatmaps to represent repulsive force across the vowel space. Helper functions are also included for calculating the area of a vowel space polygon or convex hull.
