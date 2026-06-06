After encountering several issues with the inability of some Markdown editors to resize photos I decided to write a PowerShell script to export PNG files in the size I need, then just reference to them at 100% scale. This repo is mostly using the SVG files from [Homarr](https://github.com/homarr-labs/dashboard-icons) (AKA [dashboardicons.com](https://dashboardicons.com/)). The [selfh.st repository](https://github.com/selfhst/icons) has a larger library which I sometimes use, but they also have a lot of inaccurate branding with some color options so I try to avoid them. 

The script assumes you've already installed Inkscape with the bin mapped in the path on your machine (which is the default). Also that you have cloned this repository and then wish to generate a new size within that folder so should only need to edit the `width` variable and let it run. (Really for my own use, and not the most ideal distribution method.)

### Direct Links
Use icons from CDN with this pattern:

```
<Base URL>/<Format>/<Icon Name>.<Format>
```

**Base URL options:**
- jsDelivr (recommended): `https://cdn.jsdelivr.net/gh/admish/dashboard-icons`
- GitHub Direct: `https://raw.githubusercontent.com/admish/dashboard-icons/main`

**Example:**
```html
<img src="https://cdn.jsdelivr.net/gh/admish/dashboard-icons/svg/plex.svg" alt="Plex">
```
