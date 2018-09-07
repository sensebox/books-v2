# Tabs {#head}

<div class="description">
Tabs helfen dir wenn du Textabschnitte auf verschiedene Grundbedingungen seitens des Nutzers anpassen willst. Ist ein Textabschnitt zum Beispiel abhängig von dem Betriebssystem, welches der Nutzer verwendet, so kannst du Tabs benutzten um dem Nutzer die Ansicht auf das für ihn relevante zu reduzieren. <br>
Um Tabs zu benutzen, verwende den Tabs-Tag:
</div>
<div class="line">
    <br>
    <br>
</div>


```Markdown
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
Das ist der 3. Tab.
> Innerhalb der Tabs kann Markdown normal verwendet werden.

{% endtabs %}
```

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