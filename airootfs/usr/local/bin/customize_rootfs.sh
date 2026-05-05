#!/bin/bash

# enable gnome
systemctl enable gdm.service
systemctl enable NetworkManager.service
gsettings set org.gnome.shell enabled-extensions "['dash-to-dock@micxgx.gmail.com']"

glib-compile-schemas /usr/share/glib-2.0/schemas/
rm /etc/systemd/system/display-manager.service.wants/customize-iso.service
