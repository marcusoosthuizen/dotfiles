#!/usr/bin/env bash

# brew packages
brew install -y starship
brew install -y lazygit
brew install -y fastfetch

# flat pak(age)s
flatpak override --user --filesystem=xdg-config/gtk-3.0:ro --filesystem=xdg-config/gtk-4.0:ro

flatpak install -y org.gtk.Gtk3theme.adw-gtk3-dark # gtk themes
flatpak install -y org.gtk.Gtk3theme.adw-gtk3 # gtk themes

flatpak install -y flathub org.gnome.EasyTAG # tagging software
flatpak install -y flathub com.obsproject.Studio # recording software
flatpak install -y flathub org.kde.krita # art program
