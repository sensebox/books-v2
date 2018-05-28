# Tabs 

Um Tabs zu benutzen, verwende den Tabs-Tag:

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