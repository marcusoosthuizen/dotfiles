#!/usr/bin/env bash

# flat pak(age)s
flatpak install -y org.gtk.Gtk3theme.adw-gtk3-dark # gtk themes
flatpak install -y org.gtk.Gtk3theme.adw-gtk3 # gtk themes
flatpak install -y flathub page.codeberg.libre_menu_editor.LibreMenuEditor # menu editor

flatpak install -y flathub app.zen_browser.zen # browser
flatpak install -y flathub org.gnome.EasyTAG # tagging software
flatpak install -y flathub com.obsproject.Studio # recording software
flatpak install -y flathub org.gimp.GIMP # art program
flatpak install -y flathub dev.vencord.Vesktop # discord client

# flatpak overrides
flatpak override --user --filesystem=xdg-config/gtk-3.0:ro --filesystem=xdg-config/gtk-4.0:ro # gtk theming\
flatpak override --user --socket=wayland # making flatpaks open in wayland
#flatpak override --user app.zen_browser.zen --filesystem=xdg-home/.zen # zen theme
flatpak override --user com.obsproject.Studio --filesystem=xdg-config/obs-studio # obs theme
