# Data download {#head}
There are several ways to download sensor data from the openSenseMap.
Depending on the question an option is offered.
The data recorded by the senseBox is OpenData, i.e. it is freely available to all users. 

## Data for a box
An archive for all measurements in the openSenseMap database is maintained under <https://archive.opensensemap.org>.
Here you can find CSV and ZIP archives of the measured values by tag and box.

## Filter

By clicking on the "Filter" tab in the openSenseMap, you can first optionally pre-filter specific things for your search and the subsequent download of the data.
If you want to filter by name, you can also download the values of a single SenseBox.
You can tell that the filter is active by the red triangle under the "Name" tab.

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/filter.png" align="center" width="900"/>


## Graphical representation of data  

In addition to the filter function, you can also view the statistics of the individual boxes by simply clicking on any box on the map, whereupon you can select the statistics in the sidebar. 
that you want to be reported.

## Download

If you select the "Data download" tab on the openSenseMap page, you can apply a number of spatial and temporal filters to the values already measured by the SenseBoxes.

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/downl.png" align="center" width="900"/>


### Select period
First, you should select a time period from which you want the data to be displayed.
This can either be done manually, or you can choose between "last 24 hours",
"Last week" or "Last month."  


### Group by...
Now you choose whether you want to have the data averaged. Here you can select a period again.
Alternatively it is also possible to have the raw data output to you.

### Operation
Now you can decide under "Operation" which function you want to apply to the values.
Here you can, for example, calculate the maximum or minimum of measured temperatures.

### Choose a sensor
Here you can select a sensor from which you want to display the desired values with the filters you selected before.

### Columns
Click on the "Columns" button to select which additional information you want to get about your values.



> **Caution**: Depending on the selection of the filter parameters the download can be very large (several 100MB)!


### Formats
Currently, only the CSV data format is supported, which can be easily combined with spreadsheet tools such as 
[Microsoft Excel](excel.md), [Libre office](libre.md), [R-Studio](R.md) or [ArcGis](Arc.md).
Information on other data formats can be found [here](formats.md)

Each row contains a measurement of a senseBox with the selected phenomenon.
The measured value (`value`), location of the sensor (`lat`, `lng`, reference system WGS84) and a time stamp (`createdAt`) are given in each column:

```csv
createdAt;value;lat;lng
2016-09-20T10:05:49.581Z;18.70;7.64568;51.962372
2016-09-20T10:00:52.689Z;18.62;7.64568;51.962372
2016-09-20T09:55:54.282Z;18.47;7.64568;51.962372
....
```

## API download
If these two options are not flexible enough, you can use the [REST API under `/boxes/data`](osem_api.md#get-latest-measurements-for-a-phenomenon-as-csv-) to make complex requests.

For such requests the command line tool `curl` can be used.
Under Linux open a terminal and enter the following command to download all temperature measurements in the geographical area 51°N - 52°N, 7°E - 8°E into the file `measurements.csv`:

```
curl "https://api.opensensemap.org/boxes/data?phenomenon=Temperature&bbox=7,51,8,52" > measurements.csv
```

Other suitable parameters (period, box IDs, ...) can be found in the linked API documentation.
