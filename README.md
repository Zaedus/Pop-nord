<p align="center">
<img src="https://github.com/system76/pop-gtk-theme/raw/master/Pop_gtk-logo.png"/>
</p>

-------------------

A reskin of the GTK+ Theme for Pop_OS in the beautiful color scheme Nord.

### Info

Suggestions are always appreciated because I'm figuring this whole thing out as I go, and I'm sure I missed a lot. 

The current release of Pop-nord seems to look pretty good for what I have used it for thus far, but again, please tell me any issues or ideas, and if you're really interested in this project becoming better, submit a pull request!

By the way! The light theme just *does not look good* because this is intended for dark theme users only and will eventually be phased out once I figure out what I'm doing.
### Required Components
-------------------
Pop supports Gtk+ 3.22.x

 ```
 * Gtk+-3.0             >= 3.22
 * Gtk+-2.0             >= 2.24.30
 * gtk2-engines-pixbuf  >= 2.24.30
 * gtk2-engines-murrine >= 0.98.1
 ```

### Recommendations

- For GTK, use icons alongside [Zafiro Icon Theme](https://github.com/zayronxio/Zafiro-icons)
- For fonts, use:
 > Window Titles: Fira Sans SemiBold 10

 > Interface: Fira Sans Book 10

 > Documents: Roboto Slab Regular 11

 > Monospace: Fira Mono Regular 11





### Installation from Git Source
----------------------------

This is the recommended method for users who aren't on Pop.

###### Note: You must have sassc installed in order to build Pop. Users of 17.04 or later can all build-dependencies using:

```
sudo apt install sassc meson libglib2.0-dev 
```

For making modifications to assets, you will additionally need these two:

```
sudo apt install inkscape optipng
```


1. If previous versions were installed/existed, remove them first.

 ```
 sudo apt remove pop-gtk-theme
 sudo rm -rf /usr/share/themes/Pop-nord*
 rm -rf ~/.local/share/themes/Pop-nord*
 rm -rf ~/.themes/Pop-nord*
 ```

2. Generate the theme files.

```
meson build && cd build
ninja
```

3. Install the theme.

```
ninja install
```

#### Rebuilding after modifications:

You shouldn't need to rebuild the entire theme after modifications. If you make
changes to any GTK3 or GTK2 assets, delete the old rendered copies and use the
`render-assets.sh` script to regenerate those with new ones with your 
modifications. 

Public License
--------------
 Most files: GPL-3.0+
 Upstream Adwaita: LGPLv2.1
 Sound theme: CC-BY-SA-4.0


 > **Note:**
 >
 > SVG files are licensed under CC BY-SA 4.0

Special Thanks to
--------------
 Nana-4, the developer of Materia.
 tista500 and the Adapta Theme Project: https://github.com/adapta-project/
