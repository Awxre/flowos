#!/bin/bash

# enable gnome
systemctl enable gdm.service
systemctl enable NetworkManager.service
gsettings set org.gnome.shell enabled-extensions "['dash-to-dock@micxgx.gmail.com']"

# enable extensions
export DISPLAY=:0
gsettings set org.gnome.shell enabled-extensions "['dash-to-dock@micxgx.gmail.com', 'appindicatorsupport@rgcjonas.gmail.com', 'arcmenu@arcmenu.com', 'user-theme@gnome-shell-extensions.gcampax.github.com', 'ding@rastersoft.com']"

# customization
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'


glib-compile-schemas /usr/share/glib-2.0/schemas/
rm /etc/systemd/system/display-manager.service.wants/customize-iso.service
