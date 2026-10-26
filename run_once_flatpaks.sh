#!/usr/bin/env bash

# flatpak overrides
flatpak override --user --filesystem=xdg-config/gtk-3.0:ro --filesystem=xdg-config/gtk-4.0:ro # gtk theming\
flatpak override --user --socket=wayland # making flatpaks open in wayland
flatpak override --user com.obsproject.Studio --filesystem=xdg-config/obs-studio # obs theme
flatpak override --user org.jeffvli.feishin --filesystem=xdg-config/feishin # feishin theme
