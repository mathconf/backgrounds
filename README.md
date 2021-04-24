# [backgrounds](https://github.com/mathconf/backgrounds)
SVG backgrounds used in some mathconf.org sites.

## primer.svg

```bash
> svgpattern 'primer' > primer.svg
```
[![primer.svg](primer.svg)](primer.svg)
```css
div.header {
    background-color:#366b9c;
    background-image:
      linear-gradient(to right, rgba(0, 0, 0, .7), rgba(0, 0, 0, .21)),
      url(https://mathconf.github.io/backgrounds/primer.svg);
}
```
