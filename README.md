<p align="center">
<img src="https://github.com/Zaedus/Pop-nord/raw/master/.github/Pop-nord.png"/>
</p>

-------------------
A re-skin of the GTK+ Theme for Pop_OS in the beautiful color scheme Nord.

### Info

Suggestions are always appreciated because I'm figuring this whole thing out as I go, and I'm sure I missed a lot.

The current release of Pop-nord seems to look pretty good for what I have used it for thus far, but again, please tell me any issues or ideas, and if you're really interested in this project becoming better, submit a pull request!

By the way! The light theme just *does not look good* because this is intended for dark theme users only and will eventually be phased out once I figure out what I'm doing.

### Why?

It's the question on everybody's mind, isn't it? Why use this theme when I could get a better Nord theme? Well my first response to that is, ouch, and my second response is consistency. I really like the default Pop-dark theme, but I also like how clean Nord is, and I always find that there are inconsistencies when using custom themes in Pop.

With Pop-Nord, Pop Shop isn't visually broken like it is by other themes, and you still get the same feel that the default theme has.

So, why? For the look of Nord and the feel of Pop.

-------------------

### Installation from Git Source

##### This is assuming you already have Gtk3 and Gtk2 installed

Install dependencies
```bash
sudo apt install gtk2-engines-pixbuf gtk2-engines-murrine
```

Install build dependencies
```bash
sudo apt install sassc meson libglib2.0-dev
```

**Optional**: Dependencies for modifying assets
```bash
sudo apt install inkscape optipng
```

1. If previous versions were installed/existed, remove them first.

 ```bash
 sudo apt remove pop-gtk-theme
 sudo rm -rf /usr/share/themes/Pop-nord*
 rm -rf ~/.local/share/themes/Pop-nord*
 rm -rf ~/.themes/Pop-nord*
 ```

2. Generate the theme files.

 ```bash
meson build && cd build
ninja
```

3. Install the theme.

 ```bash
ninja install
```

### Recommendations

- For GTK, use icons alongside [Zafiro Icon Theme](https://github.com/zayronxio/Zafiro-icons) or
- For fonts, use:
 > Window Titles: Fira Sans SemiBold 10

 > Interface: Fira Sans Book 10

 > Documents: Roboto Slab Regular 11

 > Monospace: Fira Mono Regular 11

-------------------

### Required Components
Pop-nord supports Gtk+ 3.22.x

```
* Gtk+-3.0             >= 3.22
* Gtk+-2.0             >= 2.24.30
* gtk2-engines-pixbuf  >= 2.24.30
* gtk2-engines-murrine >= 0.98.1
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
