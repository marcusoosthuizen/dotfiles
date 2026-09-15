#!/usr/bin/env bash

# pywalfox
pipx install pywalfox
.local/bin/pywalfox install --manifest-path ~/.mozilla/native-messaging-hosts \
                 --profile-path  ~/.config/librewolf/librewolf

# default theming
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
