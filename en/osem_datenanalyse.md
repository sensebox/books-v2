# Data analysis {#head}


## Interpolation
In the tab *Interpolation* the data of several senseBoxes can be spatially interpolated to a phenomenon.

This is useful to make the spatial differences of a phenomenon visible on the map, or to derive approximate values in regions without sensors.

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/osem_interpolation.jpg" center width="700px" />

The interpolation method **IDW** (*Inverse Distance Weighting*) is used, which has a *power* value as a parameter. This is the exponent used to weight the distance of a measured value to a location to be interpolated.
A low value for *power* therefore includes values from greater distances similarly strong as from close range, while a high value for *power* especially considers values from immediate distance.

After setting the parameters, the interpolation is calculated on our server.
When the calculation is complete, the result is displayed as a heat map on the map.
The cell size of the calculation can also be set to get more detailed results, but please note that the calculation time for smaller cells increases very much.

