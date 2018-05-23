# Collapsible {#head}
<div class="description">
</div>
<div class="line">
  <br>
  <br>
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