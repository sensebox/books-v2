# R {#head}

For a detailed analysis of your data it is recommended to work with R and the corresponding user interface R-Studio. 
R offers extensive analysis tools and is therefore ideally suited. 

Start R-Studio in the first step.



To process a data set (.csv file) in R, you must first load it. 
This is done with the command csv.read("fileiname.csv").


<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/r-studio.png" align="center" width="700"/>

The next step is to declare the loaded file as a variable, as this is the only way to apply the tools to the data set.

This works with the following command: 

```variable name <- read.csv(filename.csv)```

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/r_var.png" align="center" width="700"/>


With the command `view(variablenname)` you can display the record in a window in a table. 
It is important, as with all functions, that you pay attention to upper and lower case, otherwise the functions are not recognized by the program. 


<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/view.png" align="center" width="700"/>

Below we show you a few simple tools that you can use to create graphics from your dataset:

`plot(variablename)` Plot the dataset in a simple graph

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/plot1.png" align="center" width="700"/>

`boxplot(variablenname)` Plot the dataset in a "Box" view.
Here you can read the mean value, minimum and maximum.

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/boxplot.png" align="center" width="700"/>

You can also get readings depending on individual parameters using the command:
`boxplot(d$Measured value)` display

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/bplot.png" align="center" width="700"/>

With the command `hist(variablename$Parameter)` you can create a histogram.
It is important to make sure that the function can only process numeric values and only for one column at a time. 
For this you work again with the `variablenname$Parameter` operator, with which you can address individual parameters. 

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/hist.png" align="center" width="700"/>


Further packages with useful tools can be installed under the tab "Tools" -> Install Packages.
More information, among others about the packages you can find [here](<https://www.r-project.org/other-docs.html>)

