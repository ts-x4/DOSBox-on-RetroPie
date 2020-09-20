#!/bin/bash
params=(-conf "/home/pi/RetroPie/roms/pc/XWINGCD/XWINGCD.conf" -c "@IMGMOUNT D /home/pi/RetroPie/roms/pc/XWINGCD/game.gog -t iso" -c "@MOUNT C /home/pi/RetroPie/roms/pc" -c "C:" -c "@CD XWINGCD" -c "XWINGCD.BAT" -c "@EXIT")
if [[ -z "${params[0]}" ]]; then
    params=(-c "@MOUNT C /home/pi/RetroPie/roms/pc" -c "@C:")
elif [[ "${params[0]}" == *.sh ]]; then
    bash "${params[@]}"
    exit
else
    params+=(-exit)
fi
"/opt/retropie/emulators/dosbox/bin/dosbox" "${params[@]}"
