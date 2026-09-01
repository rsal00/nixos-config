#!/usr/bin/env bash

# Create config directories if they don't exist
mkdir -p ~/.config/hypr
mkdir -p ~/.config/waybar
mkdir -p ~/.config/rofi
mkdir -p ~/.config/rofi/themes
mkdir -p ~/.config/kitty
mkdir -p ~/.config/cava

# Link Hyprland configs
ln -sf ~/nixos-config/dotfiles/hypr/hyprland.conf ~/.config/hypr/hyprland.conf
ln -sf ~/nixos-config/dotfiles/hypr/hyprpaper.conf ~/.config/hypr/hyprpaper.conf

# Link Waybar config and CSS
ln -sf ~/nixos-config/dotfiles/waybar/config ~/.config/waybar/config
ln -sf ~/nixos-config/dotfiles/waybar/style.css ~/.config/waybar/style.css

# Link Rofi config and themes folder
ln -sf ~/nixos-config/dotfiles/rofi/config.rasi ~/.config/rofi/config.rasi
ln -sf ~/nixos-config/dotfiles/rofi/themes/ ~/.config/rofi/themes

# Link Kitty config
ln -sf ~/nixos-config/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf

# Link Cava config
ln -sf ~/nixos-config/dotfiles/cava/config ~/.config/cava/config

echo "✅ Dotfiles linked successfully!"
