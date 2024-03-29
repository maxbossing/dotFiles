## Dotfiles 

This is my dotfile repository, holding my configurations for various programs (WMs, Editors, etc)

> NOTE: entries with an asterisk (`*`) behind their names are located in their own repository and integrated via git submodules

|  Program  | Description              | DotFile location        |
|-----------|--------------------------|-------------------------|
| Alacritty | Terminal Emulator        | `.config/alacritty`     |
| bspwm     | X Window Manager         | `.config/bspwm`         |
| conky     | System Monitor           | `.conkyrc`              |
| dmenu*    | X Program launcher       | `dmenu`                 |
| dwm*      | X Window Manager         | `dwm`                   |
| fish      | Shell                    | `.config/fish`          |
| git       | source control           | `.gitconfig`            |
| Hyprland  | Wayland window manager   | `.config/hypr`          |
| i3        | X Window Manager         | `.config/i3`            |
| i3status  | i3 bar                   | `.config/i3status`      |
| kitty     | Terminal Emulator        | `.config/kitty`         |
| mc        | File explorer            | `.config/mc`            |
| mutt      | Email client             | `.config/mutt`          |
| neovim    | The only true editor     | `.config/nvim`          |
| polybar   | X bar                    | `.config/polybar`       |
| rofi      | X program launcher       | `.config/rofi`          |
| st*       | X Terminal               | `st`                    |
| starship  | Terminal prompt          | `.config/starship.toml` |
| sxhkd     | Keybind daemon           | `.config/sxhkd`         |
| tmux      | Terminal multiplexer     | `tmux.conf`             |
| waybar    | Wayland bar              | `.config/waybar`        |
| wofi      | Wayland program launcher | `.config/wofi`          |

# Installation


## 1. The automated way 

* Use `install.sh`
## 2. The manual way 

* Install the packages from `packages.txt`
* Install paru from source and dwm, dmenu and st from their directories
* Move/Link the Dotfiles

# Usage

## Launching a Window Manager

*The Install script automatically links a `launch` script into `~/.local/bin/` that you can Use
* Just execute `launch` and the last Window Manager you used will be launched (by default, Hyprland)
* If you want to use another window manager, use `launch dwm/i3/bspwm`
* The script stores the last used Window manager in `~/.wm` (first line is the window manager name/Wayland Compositor launch command, the second line true/false if XORG or wayland)

# License
MIT
