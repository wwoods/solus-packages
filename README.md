Solus Packages
==============

I'm using the Solus OS these days (https://solus-project.com), and everything is well except for a few missing packages.  Packages here are prefixed with "ww-" because they are neither official nor necessarily high quality.  They are here because they work.

Usage
-----

1. Set up [solbuild](https://github.com/solus-project/solbuild).  Go through [these instructions](https://solus-project.com/articles/packaging/building-a-package/en/) up through and including "Updating solbuild."

2. Set up the local repository as per https://solus-project.com/articles/packaging/local-repository/en/ .

   i. Ensure that the local image is set up through:

          $ sudo solbuild init -p local-unstable-x86_64
          $ sudo solbuild update -p local-unstable-x86_64

3. Clone this repo as `git clone https://github.com/wwoods/solus-packages`.
4. Run `make`, which will prompt for "sudo" access, build the packages, and copy them to `/var/lib/solbuild/local`.  Should also automatically rebuild the local package index.
5. Likely, you will also need to add the repo to eopkg:

       $ sudo eopkg add-repo Local /var/lib/solbuild/local/eopkg-index.xml

The below packages will then be available via the Software Manager (or eopkg).

Packages
--------

ww-plotutils: GNU plotutils, includes libplotter, needed for ww-pstoedit.

ww-pstoedit: pstoedit with built-in SVG support.  This is for the [Inkscape 0.92-compatible Tex Text plugin](https://bitbucket.org/pitgarbe/textext).  Should be all you need to get the plugin working.

