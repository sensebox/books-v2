#Hint-box/Hinweis-Box:{#head}

<div class="description">
   Um Hinweise kenntlich zu machen kannst du eine unserer 4 Hinweis-Boxen benutzen. Achte darauf, dass es sich um HTML Tags handelt, das bedeutet, innerhalb des Tags muss auch HTML benutzt werden. Solange nur Text innerhalb der Boxen stehen soll ist das egal, solltest du aber Links, Bilder oder andere Elemente benutzen sollten diese HTML Elemente sein um später richtig dargestellt zu werden.
</div>
<div class="line">
    <br>
    <br>
</div>

##Code:
```
<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    >>INFO-HINT<<
</div>

<div class="box_success">
    <i class="fa fa-check fa-fw" aria-hidden="true" style="color: #50af51;"></i>
    >>SUCCESS-HINT<<
</div>

<div class="box_warning">
 	<i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
 	>>WARNING-HINT<<
</div>

<div class="box_error">
	<i class="fa fa-exclamation-triangle fa-fw" aria-hidden="true" style="color: #d9534f"></i>
	>>ERROR-HINT<<
</div>
```
##Result:
<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    >>INFO-HINT<<
</div>

<div class="box_success">
    <i class="fa fa-check fa-fw" aria-hidden="true" style="color: #50af51;"></i>
    >>SUCCESS-HINT<<
</div>

<div class="box_warning">
 	<i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
 	>>WARNING-HINT<<
</div>

<div class="box_error">
	<i class="fa fa-exclamation-triangle fa-fw" aria-hidden="true" style="color: #d9534f"></i>
	>>POSSIBLE-ERROR-HINT<<
</div>
