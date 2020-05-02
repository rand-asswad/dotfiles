# Dotfiles

Having embraced the minimalist linux philosophy for almost 3 years now,
it's time for me to share my dotfiles on github, with the double
benefit of version control and backup.

Like all dotfiles, this is barely my own work, I have mostly selected
dotfiles that I found useful and elegant.

I use Arch Linux and run [i3wm](https://i3wm.org/)/[i3-gaps](https://github.com/Airblader/i3).

## Packages and features

These dotfiles are as modular as possible, strongly advocating the
[XDG Base Directory](https://wiki.archlinux.org/index.php/XDG_Base_Directory)
specification especially against stubborn packages that still refuse to embrace this standard.

### Configs:

- **Shell:** zsh
  - `~/.config/shell`: global shell configs (shell-independent)
    - `~/.config/env`: environment variables (including `PATH`)
    - `~/.config/alias`: my common aliases and functions
    - `~/.config/logout`: script to run on logout
  - `~/.config/zsh`: zsh-specific configs
	- `~/.zshenv`: redirect to shell/zsh dir (the workaround isn't elegant enough)
    - `~/.config/zsh/.zprofile`: sources `~/.config/shell/env`
    - `~/.config/zsh/.zshrc`: interactive zsh script (sources `~/.config/shell/alias`)
    - `~/.config/zsh/.zlogout`: sources `~/.config/shell/logout`
- **WM:** i3-gaps (config: `~/.config/i3`)
- **Editor:** vim
  - `~/.config/vim/`: vim config directory
  - `~/.config/vim/vimrc`: main config file
  - `~/.config/vim/plugins.vim`: plugins file (managed using [vim-plug](https://github.com/junegunn/vim-plug))
  - `~/.config/vim/filetypes.vim`: autodetect filetypes and reload configs on save
- **Music:** mpd/ncmpcpp
- **Xorg:** `~/.config/X11`
  - `~/.config/X11/xinitrc`:
	- sets keyboard layout (I use fr+ar you might want to change that)
	- loads Xresources
    - sets screen layout (xrandr/arandr script)
    - sets background (using feh)
    - runs application in background (mpd, compositor)
    - starts WM
  - `~/.config/X11/Xresources`:
    - sets color theme and urxvt settings
- **Terminal:** rxvt-unicode (configured in Xresources)
- **Statusbar:** polybar (`~/.config/polybar/`)
- **File manager:** ranger (`~/.config/ranger/`)
- **GTK:** `~/.config/gtk-{2|3}.0/`
- **Launcher:** rofi (`~/.config/rofi/`)
- **R:** enironment and profile basic configs (`~/.config/R/`)

### Scripts:

Scripts reside in `~/.local/bin/`
don't forget to make them executable (`chmod +x <SCRIPT>`).

- `blurlock`: blurred lock screen for i3lock (stolen from Manjaro)
- `i3exit`: useful exit script for i3 (stolen from Manjaro)
- `cleanhome`: removes dotdirs from home (list specified in ~/.config/kill`)
- `screen`: script for handeling dual screen (HDMI or VGA) using xrandr
- `tinytex`: wrapper script around tinytex R package
- `vscode`: wrapper script around `code` that enforces XDG base directories

## TO-DO List:

- ROFI
  - create/steal an icon-based theme for `drun`
  - create/steal an exit-menu launcher
- Xresources: seperate into modules (at least separate urxvt configs)
- Polybar: better configs
