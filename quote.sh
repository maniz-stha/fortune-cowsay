#!/bin/bash
cowsayFiles='apt beavis.zen bong bud-frogs bunny calvin cheese cock cower daemon default dragon dragon-and-cow duck elephant elephant-in-snake eyes flaming-sheep ghostbusters gnu head-in hellokitty kiss kitty koala kosh luke-koala mech-and-cow meow milk moofasa moose mutilated pony pony-smaller ren sheep skeleton snowman sodomized-sheep stegosaurus stimpy suse three-eyes turkey turtle tux unipony unipony-smaller vader vader-koala www'
cowsayFilesArray=($cowsayFiles)
filesCount=${#cowsayFilesArray[@]}
randomIndex="$(shuf -i 1-${filesCount} -n 1)"
cowsayFile=${cowsayFilesArray[${randomIndex-1}]}
quote="$(fortune -ae | cowsay -f ${cowsayFile})"
echo "${quote}"
