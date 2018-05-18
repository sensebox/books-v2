# Templates

> Contributers-only


Hier findest du eine Sammlung von Vorlagen fuer das Styling der Gitbooks.

Darunter eine [Vorlage fuer eine neue Seite](neue-seite.md) mit Titelelement und Beschreibungsbox.

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


[Bildunterschriften](bildunterschriften.md):
![Dies ist eine Beispiel-Unterschrift](https://github.com/sensebox/books-v2/blob/home/pictures/mcu_one_top.png?raw=true)

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