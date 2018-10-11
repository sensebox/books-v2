# Step 2: Installation of the Board-Support-Package {#head}

<div class="description">Therewith the Arduino IDE supports your <a href="../komponenten/sensebox-mcu.md">senseBox MCU</a> and you are able to relay the programme on to it, you have to start with installing two board-support-packages. Those contain the necessary drivers and software to communicate with the processor. The board-support-package of the senseBox contains already our senseBox-libraries. This will give you all the basic methods for programming the enclosed sensors.</div>
<div class="line">
    <br>
    <br>
</div>

## Libraries

For the programming of the senseBox, the senseBox libraries should be included at the beginning. We have integrated those libraries into the senseBox board-support-package to make the inatallation as easy as possible for you.  

{% collapse title="'Library' - What is it and why do I need it?" %}

As the name suggests, a library is a collection of something - a collection of methods to be more specific. Methods are programming smaller sections of code that can be applied to an object.
For example, with the senseBox, a method can be invoked to turn the LEDs on and off on the MCU. There are a lot of such standard methods that are used by a variety of programs. In order not to have to transfer these methods individually into the program code, they can be stored in libraries.
So a library is a file that stores many methods. You can include libraries in your code. For this it is enough, if they are stored in the Arduino folder for libraries and then they are integrated with a single line at the beginning of the program code. This looks like this in Arduino for the library named "senseBoxIO" 

```arduino
#include <senseBoxMCU.h>;
```

If the library is included, all methods contained in it can be used in the code.

{% endcollapse %}


## Integrate the Board-Support-Package 
Choose your operating system to see the fitting instruction:

{% tabs first="Windows", second="Mac(OSX)", third="Linux" %}
{% content "first" %}
### Instruction for Windows
Paste the following URL into your Arduino IDE under  *Data -> Preferences* in the field for *Additional Boardmanager-URLs* :
```
https://github.com/sensebox/senseBoxMCU-core/raw/master/package_sensebox_index.json
```

![Open the Preferences and paste the URL](../../../pictures/ardu/Ardu1.png)

Please open then the *Boardmanager* under *Tools -> Board:"..." -> Boardmanager* and install there the two board-support-packages with the name **Arduino SAMD Boards by Arduino** and **senseBox SAMD Boards by senseBox**.

![Open the Boardmanager and install both Packages](../../../pictures/ardu/Ardu2.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Enter "SAMD" in the search bar above to find the packages faster
</div>

Because we are updating the **senseBox SAMD Boards**-package regularly for you, you should from time to time have a look into the boardmanager to check if the **senseBox SAMD Boards**-package still is the latest. Therefore please open, like described above, the boardmanager and search for **senseBox SAMD Boards**. If you click at the entry in the list, there will pop up an update-Button in case that a new version is available. Click the button to install the latest version. 

![Click on 'Update', to refresh the Board-Support-Package](../../../pictures/ardu/update-b-s-p.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  It is important to first click on the entry. Otherwise the update button will not show up even if there is a new version.
</div> 

{% content "second" %}
### Instruction fo Mac
Please paste the following URL into your Arduino IDE under *`Arduino -> Einstellungen...`* in the field for *additional Bordmanager-URLs*:
```
https://github.com/sensebox/senseBoxMCU-core/raw/master/package_sensebox_index.json
```

![Open the Preferences and paste the URL](../../../pictures/ardu/ardu_mac.png)

Please open then the *Boardmanager* under *Tools -> Board:"..." -> Boardmanager* and install there the two board-support-packages with the name **Arduino SAMD Boards by Arduino** and **senseBox SAMD Boards by senseBox**.

![Open the Bordmanager ](../../../pictures/ardu/ardu3_mac.png)

![Install the two marked Packages](../../../pictures/ardu/ardu2_mac.png)


<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Enter "SAMD" in the search bar above to find the packages faster
</div>

Because we are updating the **senseBox SAMD Boards**-package regularly for you, you should from time to time have a look into the boardmanager to check if the **senseBox SAMD Boards**-package still is the latest. Therefore please open, like described above, the boardmanager and search for **senseBox SAMD Boards**. If you click at the entry in the list, there will pop up an update-Button in case that a new version is available. Click the button to install the latest version. 

![Click on 'Update', to refresh the Board-Support-Package](../../../pictures/ardu/ardu_update_mac.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
 It is important to first click on the entry. Otherwise the update button will not show up even if there is a new version.
</div>

{% content "third" %}
### Anleitung für Linux
Paste the following URL into your Arduino IDE under *Data -> Preferences* in the field for *Additional Boardmanager-URLs*:
```
https://github.com/sensebox/senseBoxMCU-core/raw/master/package_sensebox_index.json
```

![Open the Preferences and paste the URL](../../../pictures/ardu/Ardu1.png)

Please open then the *Boardmanager* under *Tools -> Board:"..." -> Boardmanager* and install there the two board-support-packages with the name **Arduino SAMD Boards by Arduino** and **senseBox SAMD Boards by senseBox**.

![Open the Boardmanager and install both packages](../../../pictures/ardu/Ardu2.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Enter "SAMD" in the search bar above to find the packages faster
</div>

Because we are updating the **senseBox SAMD Boards**-package regularly for you, you should from time to time have a look into the boardmanager to check if the **senseBox SAMD Boards**-package still is the latest. Therefore please open, like described above, the boardmanager and search for **senseBox SAMD Boards**. If you click at the entry in the list, there will pop up an update-Button in case that a new version is available. Click the button to install the latest version.  

![Click on 'Update', to refresh the Board-Support-Package zu](../../../pictures/ardu/update-b-s-p.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
   It is important to first click on the entry. Otherwise the update button will not show up even if there is a new version.
</div>

{% endtabs %}
