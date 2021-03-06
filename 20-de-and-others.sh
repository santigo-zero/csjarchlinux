#!/usr/bin/env bash

set -e

sudo pacman -S --needed \
    apparmor \
    bluedevil \
    bluez \
    breeze breeze-gtk kde-gtk-config \
    dolphin ark \
    firewalld \
    hunspell-en_us  \
    hunspell-es_ar \
    intel-media-driver \
    inter-font \
    kdegraphics-thumbnailers \
    kdeplasma-addons \
    kdialog \
    khotkeys \
    konsole \
    kscreen \
    kwallet kwalletmanager \
    libappindicator-gtk2 libappindicator-gtk3 \
    okular \
    pipewire-alsa pipewire-pulse \
    plasma-browser-integration \
    plasma-desktop \
    plasma-disks \
    plasma-nm \
    plasma-pa \
    plasma-systemmonitor \
    plasma-wayland-session \
    plasma-workspace \
    power-profiles-daemon \
    powerdevil \
    sddm-kcm sddm \
    spectacle \
    ttc-iosevka \
    ttf-jetbrains-mono \
    unclutter \
    vulkan-intel \
    xdg-desktop-portal xdg-desktop-portal-kde \

systemctl enable sddm.service apparmor.service bluetooth.service

# kwriteconfig5 --file kwinrc --group ModifierOnlyShortcuts --key Meta "org.kde.krunner,/App,,toggleDisplay"
kwriteconfig5 --file ~/.config/kwinrc --group Windows --key BorderlessMaximizedWindows true
# qdbus org.kde.KWin /KWin reconfigure # Apply settings to plasma
