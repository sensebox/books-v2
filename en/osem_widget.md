# openSenseMap Widget {#head}
To display the sensor data of a senseBox not only on `opensensemap.org`, but also to integrate it into your own website, the *openSenseMap widget* can be used.

## Example

<iframe
  src="https://sensebox.github.io/opensensemap-widget/iframe.html?senseboxId=570bad2b45fd40c8197f13a2"
  width="400"
  height="666"
  marginwidth="8" marginheight="8"
  hspace="0" vspace="0"
  frameborder="0"
  scrolling="no"
></iframe>

## Instruction
This widget can be integrated into a page and then displays information about a selected one,
on the openSenseMap registered senseBox. In order to include the widget, you simply need the following code lines
into its HTML element:

```html
<iframe
  src="https://sensebox.github.io/opensensemap-widget/iframe.html?senseboxId=YOUR SENSEBOXID"
  width="400"
  height="600"
  marginwidth="8" marginheight="8"
  hspace="0" vspace="0"
  frameborder="0"
  scrolling="no"
></iframe>
```

In the URL, `YOUR SENSEBOXID` must be replaced by the ID of your box, as it appears in the OpenSenseMap
is stored. The widget is then immediately available on the page.
The size can be adjusted using the `width` and `heigth` attributes.

The source code can be found on GitHub at [sensebox/opensensemap-widget](https://github.com/sensebox/opensensemap-widget).
