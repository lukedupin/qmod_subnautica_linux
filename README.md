# QMod Subnautica install for linux

## Install proton and proton tricks in /usr/bin

    sudo cp proton proton_run /usr/bin
    sudo chmod 755 proton
    sudo chmod 755 proton_run

## Setup Wine to run QMod installer

    cd ~/.steam/steam/steamapps/compatdata/264710/pfx/drive_c/Program\ Files\ \(x86\)/Steam
    mkdir steamapps
    cd steamapps
    ln -s /home/USERNAME/.steam/steam/steamapps/common

## Run QMod installer through wine with the subnautica prefix

    proton 264710 QModInstaller.exe

## Setup the patch.sh

patch.sh should be saved in Subnautica/Subnautica_Data/Managed.  Run the patch file after running the QMod Installer through wine with the prefix set to your Subnautica directory.

If you don't have mono: 

    sudo apt install mono (Ubuntu)
    sudo pacman -S mono (Arch)
    
Copy patch into lcoation:

    cd ~/.steam/steam/steamapps/common/Subnautica/Subnautica_Data/Managed/
    cp 'path_to patch.sh'/patch.sh .
    chmod 755 patch.sh
    ./patch.sh
    yes

## Why the hell is this needed?!?!

QModManager.exe is looking for Manged\Assembly-CSharp.dll.  This then points to the wrong file on Linux.  This script copys the dll file into the wrong name that QModManager.exe is looking for, runs QMod, then copies the wrongly named files to their desired location.
