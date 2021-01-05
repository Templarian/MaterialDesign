# Material Design

This repo contains all the planning for current and work-in-progress Material Design Icons.

[Getting Started](http://materialdesignicons.com/getting-started)

[![npm](https://img.shields.io/npm/v/@mdi/font.svg)](https://www.npmjs.com/package/@mdi/svg) [![GitHub issues](https://img.shields.io/github/issues/Templarian/MaterialDesign.svg)](https://github.com/Templarian/MaterialDesign/issues)

## FHEM Integration

This repository contains all the necessary stuff for adding the Material Design Icons to FHEM. Just follow the following install instructions.

**Please report FHEM specific issues to this repository, not to the main repository!**

### Install

#### Add icons repository
```
update add https://raw.githubusercontent.com/fhem/FHEM-Icons-Material-Templarian/%%BRANCH%%/controls_icons-mdt.txt
update all https://raw.githubusercontent.com/fhem/FHEM-Icons-Material-Templarian/%%BRANCH%%/controls_icons-mdt.txt
```

This will take a long time, since there are ATM about *5.600* icons to download and install (took around 30 minutes on a dockerized test FHEM).

#### Add icon path
To display the icons, FHEM needs the know the path to the newly installed icons. Given your FHEMWEB device is also named ``FHEMWEB``, add `mdt` to the `iconPath` attribute like this

``attr FHEMWEB iconPath mdt:fhemSVG:openautomation:default``

#### Reload icons

After setting the new icon path, FHEMWEB needs to reread the icons cache. Again, ``FHEMWEB`` is give as name for your FHEMWEB device, issue

``set FHEMWEB rereadicons``

## Icons

View at [Material Design Icons](http://materialdesignicons.com/). This repo also contains converted icons from [Google's official icon set](https://github.com/google/material-design-icons).

|                 | NPM                   | Dist Repo |   |
|-----------------|-----------------------|-----------|---|
| Webfont / SCSS  | `npm install @mdi/font`     | [MaterialDesign-Webfont](https://github.com/Templarian/MaterialDesign-Webfont) | [![npm](https://img.shields.io/npm/dm/@mdi/font.svg)](https://github.com/Templarian/MaterialDesign-Webfont) |
| JavaScript / TypeScript  | `npm install @mdi/js`     | [MaterialDesign-JS](https://github.com/Templarian/MaterialDesign-JS) | [![npm](https://img.shields.io/npm/dm/@mdi/js.svg)](https://github.com/Templarian/MaterialDesign-JS) |
| ReactJS  | `npm install @mdi/react`     | [MaterialDesign-React](https://github.com/Templarian/MaterialDesign-React) | [![npm](https://img.shields.io/npm/dm/@mdi/react.svg)](https://github.com/Templarian/MaterialDesign-React) |
| SVG / Meta.json | `npm install @mdi/svg` | [MaterialDesign-SVG](https://github.com/Templarian/MaterialDesign-SVG)     | [![npm](https://img.shields.io/npm/dm/@mdi/svg.svg)](https://github.com/Templarian/MaterialDesign-SVG) |
| Desktop Font | n/a | [MaterialDesign-Font](https://github.com/Templarian/MaterialDesign-Font)     |

[Upgrade Guide](https://dev.materialdesignicons.com/upgrade) | [Changelog Guide](https://dev.materialdesignicons.com/changelog)

[![Icons](http://i.imgur.com/zKuXEkR.png)](https://materialdesignicons.com/)

**Warning (Cordova only):** _You will need to manually edit the css file to remove the version query string. [Read More](https://github.com/Templarian/MaterialDesign/issues/760)._

## Contribute

Please do not make pull requests against this repositiory. All icons are managed through the Material Design Icons site by the various contributors and synced instantly. If you want to become a contributor [read more](http://materialdesignicons.com/contribute).

### Icon Suggestions

Submit icon suggestions through the issue tab. Please include examples.

### Third Party (Plugins / Extensions / etc)

- [Third Party Guide](http://dev.materialdesignicons.com/contribute/third-party)
- [First Party Guide](http://dev.materialdesignicons.com/contribute/first-party)

## License

[View the License](https://github.com/Templarian/MaterialDesign/blob/master/LICENSE)

## Code of Conduct

[View and submit violations](https://materialdesignicons.com/code-of-conduct).
