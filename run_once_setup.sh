#!/usr/bin/env bash

# pywalfox
pipx install pywalfox
.local/bin/pywalfox install --manifest-path ~/.mozilla/native-messaging-hosts \
                 --profile-path  ~/.config/librewolf/librewolf

# default theming
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'

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
