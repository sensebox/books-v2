#Templates for hints: {#head}
<div class="description"></div>

<div class="line">
    <br>
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


Collapse Modul ohne Titel:
```
{% collapse %}
 
* list 1
* list 2
* list 3
    * list 3.1
    
{% endcollapse %}
```

{% collapse %}
 
* list 1
* list 2
* list 3
    * list 3.1
    
{% endcollapse %}


Modul mit Titel:
```
{% collapse title="my list" %}
 
* list 1
* list 2
* list 3
    * list 3.1
    
{% endcollapse %}
```

{% collapse title="my list" %}
 
* list 1
* list 2
* list 3
    * list 3.1
    
{% endcollapse %}

```
{% collapse title="my non-markdown list", process=false %}
 
* list 1
* list 2
* list 3
    * list 3.1
    
{% endcollapse %}
```
Modul in dem Markdown nicht kompiliert wird:
{% collapse title="my non-markdown lis", process=false %}
 
* list 1
* list 2
* list 3
    * list 3.1
    
{% endcollapse %}