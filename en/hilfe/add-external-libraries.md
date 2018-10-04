# Manual Integration of Libraries {#head}

<div class="description">To be able to connect own sensors to the senseBox, the manufacturers of many sensors provide suitable libraries. Here we show you how to download libraries from a GitHub repository and integrate them manually. You can use this guide for any external libraries you want to include in the Arduino IDE. </div>
<div class="line">
    <br>
    <br>
</div>

<div class="box_error">
    <i class="fa fa-exclamation-triangle fa-fw" aria-hidden="true" style="color: #d9534f"></i>
    <b>ATTENTION:</b> The libraries required for the senseBox are already in the board support package, which is downloaded in <a href="../erste-schritte/board-support-packages-installieren.md">Step 2</a>. You should not longer <b> integrate them </b> manually like it was suggested in the previous books.
   This creates duplications that can lead to errors.
</div>

## Download and add Libraries

{% collapse title="'Library' - What is it and why do I need it?" %}

As the name suggests, a library is a collection of something - a collection of methods to be more specific. Methods are programming smaller sections of code that can be applied to an object.
For example, with the senseBox, a method can be invoked to turn the LEDs on and off on the MCU. There are a lot of such standard methods that are used by a variety of programs. In order not to have to transfer these methods individually into the program code, they can be stored in libraries.
So a library is a file that stores many methods. You can include libraries in your code. For this it is enough if they are stored in the Arduino folder for libraries and then they are integrated with a single line at the beginning of the program code. This is how it looks like in Arduino for the library named "senseBoxIO":

```arduino
#include <senseBoxMCU.h>;
```

If the library is included, all methods contained in it can be used in the code.

{% endcollapse %}


The manual installation of the libraries can  cause errors very quickly, so be sure to pay close attention to each step. To help you with the installation as well as possible, we have written a separate manual for each operating system.
Choose the right system for your computer and follow the steps given.

{% tabs first="Libraries einfügen Windows", second="Libraries einfügen Mac", third="Libraries einfügen Linux" %}
{% content "first" %}
# Insert Libraries Windows

1. Most external libraries can be found in Github repositories. To download them, you have to click the green button `Clone or download` and click ` Download ZIP` afterwards. 

  ![Example download of the "Adafruit_HDC_Library" from github.com](../pictures/libraries/github_download.png)

2. If the download does not start on its own, a window opens in which you have to select the field `` Save file`` and place the folder anywhere on your computer (this is the Downloads folder by default).

3. The downloaded file is a `.zip` archive, which is a compressed version of the library. The next step is to unpack this `.zip` archive. To do this, open the archive location and right-click it and select 'Extract All ...' in the menu that appears. Select the same folder as the download location (for example, the Downloads folder).

4. Now open the Arduino IDE. Go to `File` ->` Preferences`:

 ![Click `File` and then` Preferences`](../pictures/libraries/voreinstellungen_2.PNG?raw=true)

    and look in the box under `Sketchbook location 'for the location of the Sketchbook folder. 

 ![Look in the red-marked box to see where your sketchbook location is](../pictures/libraries/voreinstellungen.PNG)

  Remember the path to this folder, i.e. the location where it is stored.

    <div class="box_warning">
        <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
        You need to move the library folder you have already downloaded and unpacked to the sketchbook location in the next step. It is therefore very important that you remember exactly the corresponding location from point 4, to avoid errors that could occur later.
    </div>

5.Now navigate to the sketchbook location in your file explorer (see 4.). Note that the destination folder is named 'Arduino' in the File Explorer at the sketchbook location. Double-click on the folder to see its contents. The folder contains another folder named "libraries".

 <details><summary>What do I do if there is no 'libraries' folder?</summary><p>If there is no folder with the name "libraries", you can simply create a new folder and call it "libraries". Create a new folder by right-clicking in the file explorer -&gt; <code>New</code> -&gt; <code>folder</code>.</p></details>
 <p>Now copy or drag the downloaded and unzipped folder into the <code>libraries</code>-folder.</p>  

6. Close the Arduino program completely and start it again to complete the installation of the respective libraries. 


<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Unfortunately, a typical error is that the senseBox library is not placed in the correct folder. Please check again if you put the file in the right folder from 4..
</div>

{% content "second" %}
# Insert Libraries Mac

1. Most external libraries can be found in Github repositories. To download them, you have to click the green button `Clone or download` and then in the window` Download ZIP` which opens. 

  ![Example download of the "Adafruit_HDC_Library" from github.com] (../pictures/libraries/github_download.png)

2. The download should start automatically and the file should be automatically unzipped and placed in your "Downloads" folder. Open the Downloads folder and see if the downloaded folder exists there. * If there is only one **. Zip ** file instead of one folder, double-click to unpack it. *

3. Now open the Arduino IDE. Go to the top of `Arduino` ->` Settings ... `:

 ![Click `Arduino` and then` Settings ... `](../pictures/libraries/voreinstellungen_2_mac.png)

    and look in the box under `Sketchbook location 'for the location of the Sketchbook folder.

 ![Look in the red-marked box to see where your sketchbook location is](../pictures/libraries/voreinstellungen_mac.png)

   Remember the path to this folder, ie the location where it is stored.

    <div class="box_warning">
        <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
       You need to move the libraries you have already downloaded to the sketchbook location in the next step. It is therefore very important that you remember exactly the corresponding location from point 3, to avoid errors that could occur later.
    </div>

4. Now you navigate to the sketchbook location in your Finder. Note that the destination folder in the Finder is named 'Arduino' at the sketchbook location. Double-click on the folder to see its contents. The folder contains another folder named "libraries".

 <details><summary>What do I do if there is no 'libraries' folder?</summary><p>If there is no folder with the name "libraries", you can simply create a new folder and name it "libraries".</p></details>
 <p>Copy or drag now the downloaded (unzipped) folder into the <code>libraries</code>-folder.</p>

6. Close the Arduino program completely and start it again to complete the installation of the respective libraries. 


<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
   Unfortunately, a typical error is that the senseBox library is not placed in the correct folder. Please check again if you have placed the file in the correct folder from 3.
</div>

{% content "third" %}
# Insert Libraries Linux

1. Most external libraries can be found in Github repositories. To download them, you have to click the green button `Clone or download` and then in the window` Download ZIP` which opens. 

  ![Example download of the "Adafruit_HDC_Library" from github.com](../pictures/libraries/github_download.png)

2.The download starts automatically and saves a `.zip` archive in your Downloads folder. Open the Downloads folder and unpack the `.zip` file with right-click ->` Extract Here` (* `Extract Here` *).

3. Now open the Arduino IDE. Go to `File` ->` Preferences`:

 ![Click `File` and then` Preferences`](../pictures/libraries/voreinstellungen_2_linux.png)

    and look in the box under `Sketchbook location 'for the location of the Sketchbook folder. 

 ![Look in the red-marked box to see where your sketchbook location is](../pictures/libraries/voreinstellungen_linux.png)

    Remember the path to this folder, ie the location where it is stored.

    <div class="box_warning">
        <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
        You need to move the libraries you have already downloaded and unzipped to the sketchbook location in the next step. It is therefore very important that you remember exactly the corresponding location from point 3, to avoid errors that could occur later.
    </div>

5. Now navigate to the sketchbook location in your file explorer (see 3.). Note that the destination folder is named 'Arduino' in the File Explorer at the sketchbook location. Double-click on the folder to see its contents. The folder contains another folder named "libraries".

 <details><summary>What do I do if there is no 'libraries' folder?</summary><p>If there is no folder with the name "libraries", you can simply create a new folder and call it "libraries". Create a new folder by right-clicking in the File Explorer - & gt; <code> New folder (New Folder)</code>. </p></details>
 <p>Copy or drag now the downloaded (unzipped) folder into the <code>libraries</code>-folder.</p>

6. Close the Arduino program completely and start it again to complete the installation of the respective libraries. 


<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Unfortunately, a typical error is that the senseBox library is not placed in the correct folder. Please check again if you have placed the file in the correct folder from 3..
</div>

{% endtabs %}


