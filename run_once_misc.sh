#!/usr/bin/env bash

# flatpak overrides
flatpak override --user --filesystem=xdg-config/gtk-3.0:ro --filesystem=xdg-config/gtk-4.0:ro # gtk theming
flatpak override --user --socket=wayland # making flatpaks open in wayland
flatpak override --user com.obsproject.Studio --filesystem=xdg-config/obs-studio # obs theme
flatpak override --user org.jeffvli.feishin --filesystem=xdg-config/feishin # feishin theme

# default theming
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Papirus'

# creating default dirs
xdg-user-dirs-update

# steam millenium post install
beta_file=".steam/steam/package/beta"
if [ -f "${beta_file}" ]; then
    log "removing beta '$(cat "${beta_file}")' in favor for stable."
    rm "${beta_file}"
fi
mkdir -p ".steam/steam/ubuntu12_32" ".steam/steam/ubuntu12_64"
ln -sf /usr/lib/millennium/libmillennium_bootstrap_x86.so   ".steam/steam/ubuntu12_32/libXtst.so.6"
ln -sf /usr/lib/millennium/libmillennium_bootstrap_hhx64.so ".steam/steam/ubuntu12_64/libXtst.so.6"
ln -sf /usr/lib/millennium/libmillennium_hhx64.so           ".steam/steam/ubuntu12_64/libmillennium_hhx64.so"

# update cli tools
mise up
