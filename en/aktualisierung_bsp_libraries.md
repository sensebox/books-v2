# Update of Board Support Package and Libraries {#head}

<div class="description">
    We have changed the installation steps, to make the installation and updates of the senseBox libraries more user-friendly. <br>
    On this page, we'll show you the steps you need to take to update your board support package and your senseBox libraries. This guide only applies to you if you have completed the first steps of this book <b> before June 23, 2018 </ b>.
</div>
<div class="line">
    <br>
    <br>
</div>

## What is new?
We have developed a new board support package that combines the old board support package with the senseBox libraries. This bypasses the error-prone manual installation of the senseBox libraries. At the same time, Ardunio IDE's built-in update support for board support packages can be used to bring the libraries up to date. So updates can be recorded in the future with much less effort.

## Instructions for updating
The update consists of 2 steps:
1. Deleting the senseBox libraries from the Sketchbook folder to avoid duplication of libraries and the use of old versions.
2. The installation of the new board support package to integrate the libraries in Arduino.
Wähle dein Betriebssystem, um die passende Anleitung zu sehen:

{% tabs first="Windows", second="Mac(OSX)", third="Linux" %}
{% content "first" %}
### Step 1: Delete the senseBox libraries from the sketchbook folder
1. Now open the Arduino IDE. Go to `File` ->` Preferences`:

 ![Click `File` and then` Preferences`](https://github.com/sensebox/resources/raw/master/gitbook_pictures/libraries/voreinstellungen_2.PNG)

    and look in the box under `Sketchbook location 'to see where the Sketchbook folder is stored. 

 ![Look in the red-marked box to see where your sketchbook location is](https://github.com/sensebox/resources/raw/master/gitbook_pictures/libraries/voreinstellungen.PNG)

    Remember the path to this folder, ie the location where it is stored.

  

2. Now navigate to the sketchbook location in your file explorer (see 1.). Note that the destination folder is named 'Arduino' in the File Explorer at the sketchbook location. Open this folder. Inside the `Arduino` folder is a folder called` libraries`. Within this folder are the senseBox libraries. Delete the `libraries` folder to remove them.
 <div class="box_warning">
       <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
         If you are an experienced Arduino user and have in the past included other external libraries that are not part of the senseBox libraries. Go to the `libraries' folder and delete all the libraries that were not external to you, rather than deleting the entire folder.
 </div>  

3. Now completely close the program Arduino and start it again to complete the deletion of the old senseBox libraries.

### Step 2: Integrate new board support package
To incorporate the new board support package, please proceed similar, as in the first steps. There will just be a few small changes.

1. Paste the following URL in your Arduino IDE under * File -> Preferences * into the field * Additional Board Administrator URLs *:
```
https://github.com/sensebox/senseBoxMCU-core/raw/master/package_sensebox_index.json
```
    <div class="box_warning">
        <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
       An der Stelle steht im Normalfall vorher schon folgende URL: <i>https://github.com/watterott/senseBox-MCU/raw/master/package_sensebox_index.json</i> diese sieht der obigen sehr ähnlich, ist aber nicht die gleiche URL. Sie muss aber unbedingt durch die oben stehende URL ausgetauscht werden.
    </div>

 ![Open the preferences and paste the URL](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/Ardu1.png)

2.Now open the * board administrator * under * Tools -> Board: "..." -> Board Administrator * and search there for the ** senseBox SAMD Boards ** - Package.

![Search for the red highlighted package](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/Ardu3.png)

 If you click on the entry in the list, there appears an update button.
 <div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  It is important to click on the entry first. Otherwise, the update button is not displayed, even if there is already a new version.
 </div>

3. Click on this button and make sure that the installed version is higher than 1.1.0.

![Click 'Update' to update the board support package](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/update-b-s-p.png)

 Since we regularly update the ** senseBox SAMD boards ** package for you, you should always go back to the board administrator and see if the ** senseBox SAMD boards ** package is still up to date. Open the board administrator as described above, look for ** senseBox SAMD boards ** and click there on 'update'.
{% content "second" %}
### Delete the senseBox Libraries from the Sketchbook Folder
1. Now open the Arduino IDE. Go to `Arduino` ->` Settings ... `:

 ![Click `Arduino` ->` Settings ... `](https://github.com/sensebox/resources/raw/master/gitbook_pictures/libraries/voreinstellungen_2_mac.png)

    and look in the box under `Sketchbook location 'to see where the Sketchbook folder is stored.

 ![Look in the red-marked box where your sketchbook location is](https://github.com/sensebox/resources/raw/master/gitbook_pictures/libraries/voreinstellungen_mac.png)

    Remember the path to this folder, ie the location where it is stored.

  

2. Now navigate to the sketchbook location in your file explorer (see 1.). Note that the destination folder is named 'Arduino' in the File Explorer at the sketchbook location. Open this folder. Inside the `Arduino` folder is a folder called` libraries`. Within this folder are the senseBox libraries. Delete the `libraries` folder to remove them.
  <div class = "box_warning">
        aria-hidden = "true" style = "color: # f0ad4e"> </ i>
         If you are an experienced Arduino user and have in the past included other external libraries that are not part of the senseBox libraries. Go to the `libraries` folder and delete all the libraries that were not external to you, rather than the delete entire folder.
 </div>  

3. Now completely close the Arduino program and restart it to finish deleting the old senseBox libraries.

### Step 2: Integrate new board support package
To incorporate the new board support package, it's similar, as in the first steps, with a few small changes.

1. Paste the following URL in your Arduino IDE under *'Arduino` -> `Settings ...` * in the field * Additional Board Administrator URLs *:
```
https://github.com/sensebox/senseBoxMCU-core/raw/master/package_sensebox_index.json
```
    <div class="box_warning">
        <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
       An der Stelle steht im Normalfall vorher schon folgende URL: <i>https://github.com/watterott/senseBox-MCU/raw/master/package_sensebox_index.json</i> diese sieht der obigen sehr ähnlich, ist aber nicht die gleiche URL. Sie muss aber unbedingt durch die oben stehende URL ausgetauscht werden.
    </div>

 ![Open the preferences and paste the URL there](https://github.com/sensebox/resources/raw/master/gitbook_pictures/libraries/voreinstellungen_mac_boardverwalter.png)

2. Now open the * board administrator * under * Tools -> Board: "..." -> Board Administrator * and search there for the ** senseBox SAMD Boards ** - Package.

![Search for the red highlighted package](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/Ardu3.png)

 If you click on the entry in the list, there appears an update button.
 <div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
 It is important to click on the entry first. Otherwise, the update button is not displayed, even if there is already a new version.
 </div>

3.Click on this button and make sure that the installed version is higher than 1.1.0.
![KClick 'Update' to update the board support package](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/update-b-s-p.png)

Since we regularly update the ** senseBox SAMD boards ** package for you, you should always go back to the board administrator and see if the ** senseBox SAMD boards ** package is still up to date. Open the board administrator as described above, look for ** senseBox SAMD boards ** and click there on 'update'.

{% content "third" %}
### Step 1: Delete the senseBox libraries from the sketchbook folder
1. Now open the Arduino IDE. Go to `File` ->` Preferences`:

 ![Click `File` ->` Preferences`](https://github.com/sensebox/resources/raw/master/gitbook_pictures/libraries/voreinstellungen_2_linux.png)

    and look in the box under `Sketchbook location 'to see where the Sketchbook folder is stored. 

 ![Look in the red-marked box to see where your sketchbook location is](https://github.com/sensebox/resources/raw/master/gitbook_pictures/libraries/voreinstellungen_linux.png)

    Remember the path to this folder, ie the location where it is stored.

  

2. Now navigate to the sketchbook location in your file explorer (see 1.). Note that the destination folder is named 'Arduino' in the File Explorer at the sketchbook location. Open this folder. Inside the `Arduino` folder is a folder called` libraries`. Within this folder are the senseBox libraries. Delete the `libraries` folder to remove them.
  <div class = "box_warning">
        aria-hidden = "true" style = "color: # f0ad4e"> </ i>
         If you are an experienced Arduino user and have in the past included other external libraries that are not part of the senseBox libraries. Go to the `libraries` folder and delete all the libraries that were not external to you, rather than the delete entire folder
 </div>  

3. Now completely close the program Arduino and start it again to complete the deletion of the old senseBox libraries.

### Step 2: Integrate new board support package

To incorporate the new board support package, it's similar, as in the first steps, with a few small changes.

1. Paste the following URL in your Arduino IDE under * File -> Preferences * into the field * Additional Board Administrator URLs *:
```
https://github.com/sensebox/senseBoxMCU-core/raw/master/package_sensebox_index.json
```
    <div class="box_warning">
        <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
       Normally, the following URL already exists at this point: <i>https://github.com/watterott/senseBox-MCU/raw/master/package_sensebox_index.json</i> this looks very similar to the above, but is not the same URL. However, it must necessarily be replaced by the above URL.
    </div>

 ![Open the preferences and paste the URL](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/Ardu1.png)

2.Now open the * board administrator * under * Tools -> Board: "..." -> Board Administrator * and search there for the ** senseBox SAMD Boards ** - Package.

![Search for the red highlighted package](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/Ardu3.png)

 If you click on the entry in the list, there appears an update button.

 <div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  It is important to click on the entry first. Otherwise, the update button is not displayed, even if there is already a new version.
 </div>

3. Click on this button and make sure that the installed version is higher than 1.1.0.

![Click 'Update' to update the board support package](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/update-b-s-p.png)

 Since we regularly update the ** senseBox SAMD boards ** package for you, you should always go back to the board administrator and see if the ** senseBox SAMD boards ** package is still up to date. Open the board administrator as described above, look for ** senseBox SAMD boards ** and click there on 'update'.
{% endtabs %}




