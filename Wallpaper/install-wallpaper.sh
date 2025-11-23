#!/bin/bash

# Script inspired from https://github.com/saint-13/Linux_Dynamic_Wallpapers

cd ~
mkdir ZorinMountainWallpaper
cd ZorinMountainWallpaper
mkdir xml
mkdir -p Dynamic_Wallpapers/ZorinMountain

echo "Downloading Zorin Mountain wallpaper files started"
wget -P Dynamic_Wallpapers https://raw.githubusercontent.com/libitsandbytes/Zorin-OS-Setup/refs/heads/main/Wallpaper/Dynamic_Wallpapers/ZorinMountain.xml
wget -P Dynamic_Wallpapers/ZorinMountain https://raw.githubusercontent.com/libitsandbytes/Zorin-OS-Setup/refs/heads/main/Wallpaper/Dynamic_Wallpapers/ZorinMountain/Day.jpg
wget -P Dynamic_Wallpapers/ZorinMountain https://raw.githubusercontent.com/libitsandbytes/Zorin-OS-Setup/refs/heads/main/Wallpaper/Dynamic_Wallpapers/ZorinMountain/Evening.jpg
wget -P Dynamic_Wallpapers/ZorinMountain https://raw.githubusercontent.com/libitsandbytes/Zorin-OS-Setup/refs/heads/main/Wallpaper/Dynamic_Wallpapers/ZorinMountain/Night.jpg
wget -P Dynamic_Wallpapers/ZorinMountain https://raw.githubusercontent.com/libitsandbytes/Zorin-OS-Setup/refs/heads/main/Wallpaper/Dynamic_Wallpapers/ZorinMountain/Sunrise.jpg
wget -P Dynamic_Wallpapers/ZorinMountain https://raw.githubusercontent.com/libitsandbytes/Zorin-OS-Setup/refs/heads/main/Wallpaper/Dynamic_Wallpapers/ZorinMountain/Twilight.jpg
wget -P xml https://raw.githubusercontent.com/libitsandbytes/Zorin-OS-Setup/refs/heads/main/Wallpaper/xml/ZorinMountain.xml

echo "Installing wallpapers..."
sudo cp -r ./Dynamic_Wallpapers/ /usr/share/backgrounds/
sudo cp ./xml/* /usr/share/gnome-background-properties/
echo "Dynamic Wallpapers has been installed!"
cd ~ 
echo "Deleting files used only for the installation process"
sudo rm -r Linux_Dynamic_Wallpapers