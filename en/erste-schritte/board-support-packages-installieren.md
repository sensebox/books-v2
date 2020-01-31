# Step 2: Install Board Support Package {#head}

<div class="description">In order for the Arduino IDE to support your  <a href="../komponenten/sensebox-mcu.md">senseBox MCU</a> and allow you to transfer programs to it, you will need to install two board support packages before you begin. These contain the necessary drivers and the necessary software to communicate with your processor. The board support package of the senseBox already contains our senseBox libraries. This will give you all the basic methods for programming the enclosed sensors.
</div>
<div class="line">
    <br>
    <br>
</div>

## Libraries

For the programming of the senseBox, the senseBox libraries should be included at the beginning. We have integrated these libraries into the board support package of the senseBox to make the installation as easy as possible.
{% collapse title="'Library' - What is a library and why do I need it?" %}

As the name suggests, a library is a collection of something - a collection of methods to be more specific. Methods are programming smaller sections of code that can be applied to an object. For example, with the senseBox, a method can be invoked to turn the LEDs on and off on the MCU. There are a lot of such standard methods that are used by a variety of programs. To avoid having to transfer these methods individually into the program code, they can be stored in libraries. So a library is a file that stores many methods. You can include libraries in your code. For this it is enough if they are stored in the Arduino folder for libraries and then they are integrated with a single line at the beginning of the program code. This looks like this in Arduino for the library named „senseBoxIO“:

```arduino
#include <senseBoxMCU.h>;
```

If the library is included, all methods contained in it can be used in the code.
{% endcollapse %}

##  Include Board Support Package
Choose your operating system to see the appropriate instructions:

{% tabs first="Windows", second="Mac(OSX)", third="Linux" %}
{% content "first" %}
### Instructions for Windows

Add the following URL in your Ardunino IDE under *File -> Preferences* to the  *Additional Board Administrator URLs box*
```
https://github.com/sensebox/senseBoxMCU-core/raw/master/package_sensebox_index.json
```

![Open the preferences and paste the URL](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/Ardu1.png)

Then open the *board administrator * under *Tools -> Board:"..." -> board administrator* and install there the two board support packages named
 **Arduino SAMD Boards by Arduino** and **senseBox SAMD Boards by senseBox**.

![Open the board administrator and install the two packages](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/Ardu2.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Enter "SAMD" at the top of the search bar to find the packages faster
</div>

Since we regularly update the **senseBox SAMD Boards**-Package for you, you should always go back to the board administrator and check if the  **senseBox SAMD Boards**-Package is still up-to-date. As described above, open the board administrator and search for **senseBox SAMD Boards**. If you click on the entry in the list, there appears, in the case of a new version, an update button. Click this to install the latest version.

![Click 'Update' to update the board support package](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/update-b-s-p.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
It is important to click on the entry first. Otherwise, the update button is not displayed, even if there is already a new version.
</div>

{% content "second" %}
### Instructions for Mac
Add the following URL in your Arduino IDE under  *`Arduino -> Preferences...`* to the  *to the Additional Board Administrator URLs box*:
```
https://github.com/sensebox/senseBoxMCU-core/raw/master/package_sensebox_index.json
```

![Open the preferences and paste the URL](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/ardu_mac.png)

Then open the  *board administrator* under *Tools -> Board:"..." -> Board Administrator* and install there the two board support packages named  **Arduino SAMD Boards by Arduino** and **senseBox SAMD Boards by senseBox**.

![Open the board administrator](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/ardu3_mac.png)

![Install the two marked packages](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/ardu2_mac.png)


<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Enter "SAMD" at the top of the search bar to find the packages faster
</div>

Since we regularly update the **senseBox SAMD Boards**-Package for you, you should always go back to the board administrator and check if the  **senseBox SAMD Boards**-Package is still up-to-date. As described above, open the board administrator and search for **senseBox SAMD Boards**. If you click on the entry in the list, there appears, in the case of a new version, an update button. Click this to install the latest version.

![Click 'Update' to update the board support package](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/ardu_update_mac.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  It is important to click on the entry first. Otherwise, the update button is not displayed, even if there is already a new version.
</div>

{% content "third" %}
### Instructions for Linux

Add the following URL in your Arduino IDE under *File  -> Preferences* to the  *Additional Board Administrator URLs box*:
```
https://github.com/sensebox/senseBoxMCU-core/raw/master/package_sensebox_index.json
```

![Open the preferences and paste the URL](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/Ardu1.png)

Then open the  *Boardadministrator* under *Tools -> Board:"..." -> Boardadministrator* und installiere dort die zwei and install there the two board support packages named  **Arduino SAMD Boards by Arduino** and **senseBox SAMD Boards by senseBox**.

![Open the board administrator and install the two packages](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/Ardu2.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Enter "SAMD" at the top of the search bar to find the packages faster
</div>

Since we regularly update the **senseBox SAMD Boards**-Package for you, you should always go back to the board administrator and check if the  **senseBox SAMD Boards**-Package is still up-to-date. As described above, open the board administrator and search for **senseBox SAMD Boards**. If you click on the entry in the list, there appears, in the case of a new version, an update button. Click this to install the latest version.

![Click 'Update' to update the board support package](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/update-b-s-p.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  It is important to click on the entry first. Otherwise, the update button is not displayed, even if there is already a new version.
</div>

{% endtabs %}
