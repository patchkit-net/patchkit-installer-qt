# PatchKit Installer Qt

## Configuration

Before you build the installer you should modify following files by replacing values surrounded by `$` with their values:

* *config/config.xml*
* *packages/com.patchkit.launcher/meta/package.xml*
* *packages/com.patchkit.launcher/meta/installscript.qs*

List of values to change:

* **$NAME$** - name of application
* **$PUBLISHER** - name of application publisher
* **$VERSION$** - version of the launcher
* **$URL$** - url to the application website
* **$RELEASE_DATE$** - application release date in format YYYY-MM-DD

## Inserting data

Installer is configured to extract the data from package located under path *packages/com.patchkit.launcher/data/launcher.7z*

You can use `archivegen` tool provided by **Qt Installer Framework** to create a package of the data.

## Building

Building installer is done by [Qt Installer Framework](https://github.com/qtproject/installer-framework).

Make sure to install Qt Installer Framework envirnonment and use following command line to build the installer.

``` bash
binarycreator --offline-only -p packages -c config/config.xml installer.exe
```
