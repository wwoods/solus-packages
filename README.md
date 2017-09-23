Solus Packages
==============

I'm using the Solus OS these days (https://solus-project.com), and everything is well except for a few missing packages.  Packages here are prefixed with "ww-" because they are neither official nor necessarily high quality.  They are here because they work.

Usage
-----

Requires [solbuild](https://github.com/solus-project/solbuild) to be set up.

```
$ mkdir build
$ cd build
$ sudo solbuild build ../<package>/package.yml
$ sudo eopkg install <package>-<version>*.eopkg
```

Packages
--------

ww-plotutils: GNU plotutils, includes libplot.

ww-pstoedit: pstoedit with built-in SVG support.  This is for the [Inkscape 0.92-compatible Tex Text plugin](https://bitbucket.org/pitgarbe/textext).  Should be all you need to get the plugin working.

