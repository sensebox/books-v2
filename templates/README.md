# Contributing {#head}
<div class="description">
<i>Contributers-only</i><br>
Hier findest du eine Sammlung von Vorlagen für das Styling, um an diesem Gitbook mitzuarbeiten.</div>
<div class="line">
    <br>
    <br>
</div>
<div>
    <br>
    <br>
</div>


Darunter eine [Vorlage für eine neue Seite](neue-seite.md) mit Titelelement und Beschreibungsbox.

<div class="line">
    <br>
    <br>
</div>
<br>
<br>

[Hint-Boxes](hint-template.md): 
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

<div class="line">
    <br>
    <br>
</div>
<br>
<br>

[Bildunterschriften](bildunterschriften.md):

![Dies ist eine Beispiel-Unterschrift](https://github.com/sensebox/books-v2/blob/home/pictures/mcu_one_top.png?raw=true)

<div class="line">
    <br>
    <br>
</div>
<br>
<br>

[Tabs](tabs.md):
{% tabs first="Erster Tab", second="Zweiter Tab", third="Dritter Tab" %}
{% content "first" %}
# Erster Tab
Das ist der erste Tab.
> Innerhalb der Tabs kann Markdown normal verwendet werden. 

{% content "second" %}
# Zweiter Tab
Das ist der zweite Tab.
> Innerhalb der Tabs kann Markdown normal verwendet werden.

{% content "third" %}
# Dritter Tab
Das ist der dritte Tab.
> Innerhalb der Tabs kann Markdown normal verwendet werden.

{% endtabs %}

<div class="line">
    <br>
    <br>
</div>
<br>
<br>

[Collapsibles](collapsible.md):
{% collapse title="my list" %}
 
* list 1
* list 2
* list 3
    * list 3.1
    
{% endcollapse %}