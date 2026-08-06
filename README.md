# TokyoNight_Sway
minimal dotfiles for sway with tokyonight theme!

# Structure of the dotfiles
- "common" directory is used to store configs that are shared by both, nordic and tokyonight themes. some of the css configs are later defined in"nordic" or "tokyonight" directories (you can explore directories by yourself for better understanding).
- "nordic" and "tokyonight" directories are used to store theme-specific css configs and in some cases full configs (like swaync/swaylock/waybar).
- "wallpapers" directory is used to store what the name says, wallpapers (for both themes).

# Requirements
1) alacritty
2) fastfetch
3) neovim
4) rofi
5) sway, swaylock, swaybg, swaync
6) waybar

# Installation & Usage:
1) git clone https://github.com/luka-kirvalidze/sway_dotfiles.git 
2) cd sway_dotfiles
3) stow common
4) stow {themename}
!!! If you decide to switch themes you can simply do it with pre-made rofi script(keybind: super+shift+t) !!!

# Basic Keybinds
- super+enter = alacritty
- super+b = helium browser
- super+d = rofi app launcher
- super+shift+q = rofi powermenu script
- super+shift+w = rofi wallpaper menu script
- super+shift+t = rofi theme menu script
- super+{number} = jump to workspace
- super+shift+{number} = move focused app to workspace
!!! All of the keybinds can be seen and changed in ~/sway_dotfiles/common/.config/sway
