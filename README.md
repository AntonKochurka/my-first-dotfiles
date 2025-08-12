# <span style="color:#0A9CF5;">:cyclone::cyclone: <b>Antouni - Dotfiles</b> :butterfly:</span>

### <span style="color:#0A9CF5;">Welcome to my dotfiles repository!</span>  
This is my very first collection of configs. I’m new to <b>Arch Linux</b> — and Linux in general — so think of this repo as a <i>learning journey</i> :sparkles:

---

## <span style="color:#0A9CF5;">:cyclone: Structure</span>

**Base :::**  
- `alacritty/` — Terminal settings [**[ :cyclone: ]**](https://github.com/alacritty/alacritty)  
- `polybar/` — Polybar status bar setup [**[ :cyclone: ]**](https://github.com/polybar/polybar)  
- `bspwm/` — Window manager configuration [**[ :cyclone: ]**](https://github.com/baskerville/bspwm)  
- `sxhkd/` — Keybindings daemon configs [**[ :cyclone: ]**]()  
- `picom/` — Compositor config [**[ :cyclone: ]**](https://github.com/yshui/picom)  
- `rofi/` — Application launcher [**[ :cyclone: ]**](https://github.com/davatorium/rofi)  

**Unnecessary :::**  
- `flameshot/` — Screenshot tool (optional, can be removed)  

---

## <span style="color:#00B19F;">:rocket: Installation</span>

[ 1 ] Clone the repo to a temporary directory 
(`~/.config/dotfiles`):
```bash
git clone https://github.com/AntonKochurka/dotfiles.git ~/.config/dotfiles
cd ~/.config/dotfiles
```

[ 2 ] Install required packages
```bash
sudo pacman -Syu --needed - < pacman.txt
```

[ 3 ] Copy `.xinitrc` instructions from this repository to `.xinitrc` in your `~/`
```bash
cp ~/.config/dotfiles/.xinitrc ~/.xinitrc
```

[ 4.0 ] Copy what you need from the temporary directory to `~/.config`

```bash
cp -r ~/.config/dotfiles/<package> ~/.config/
```
[ 4.1 ] You can copy as many packages as you want by this

```bash
cp -r ~/.config/dotfiles/{<pk1>,<pk2, ..., <pk_n>} ~/.config/
```
[ 4.2 ] ... or all
```bash
cp -r ~/.config/dotfiles/* ~/.config/
```
---
<span style="color:#00B19F;">[ :D ]</span> If you want wallpapers, change the path of wallpaper (or extension from png to jpg) 
in your `~/.xinitrc`

```
feh --bg-scale ~/Media/Images/wallpaper.png &
```

<span style="color:#00B19F;">[ :D ]</span> If you want to change languages for "Shift + Alt" combo, then change languages in your `~/.xinitrc`

```
setxkbmap -layout us,ua -option grp:alt_shift_toggle
```

Just add or remove it. Same for `/polybar/bar/right.ini`, add or remove `layout-icon-<number of language>` in `[module/xkeyboard]`.