# PharoJSTodo
I am an implementation of Todomvc in Pharo JS (An awesome piece of work by Noury Baraquadi and Dave Mason - Thank you guys!).

In order to run me you need to load PharoJS into a Pharo image.  You can then clone the repository and use a filetree
repository in Monticello to load the code.

The simplest way to run me is from the PharoJS Playground.

When you start me up you will be asked where my resource files live.  Simply point me to where you placed the index.html file in
the resources folder.

When I run I will create a new index.js file with all the transpiled javascript.  NB when you try to rerun me I will overwrite the
index.js file.  You may find that the original file can't be deleted if this is the case simply open a file browser in Pharo find
the index.js file and delete it.
