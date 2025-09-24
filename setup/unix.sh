#!/bin/sh
# SETUP FOR MAC AND LINUX SYSTEMS!!!
# REMINDER THAT YOU NEED HAXE INSTALLED PRIOR TO USING THIS
# https://haxe.org/download (If you use macOS).
cd ..
# For if you haven't already set up haxelib.
echo Makin\' the main haxelib folder AND settin\' it up at the same time.
mkdir ~/haxelib && haxelib setup ~/haxelib
# Post-haxelib setup.
echo Installin\' dependencies...
echo This might take a few moments dependin\' on your internet speed.
haxelib install flixel 5.6.1 --quiet
haxelib install flixel-addons 3.2.2 --quiet
haxelib install flixel-tools 1.5.1 --quiet
haxelib install hscript-iris 1.1.3 --quiet
haxelib install tjson 1.4.0 --quiet
haxelib install hxdiscord_rpc 1.2.4 --skip-dependencies --quiet
haxelib install hxvlc 2.0.1 --skip-dependencies --quiet
haxelib install hxcpp --quiet
haxelib install hxcpp-debug-server --quiet
haxelib install lime 8.1.2 --quiet
haxelib install openfl 9.3.3 --quiet
haxelib git flxanimate https://github.com/Dot-Stuff/flxanimate 768740a56b26aa0c072720e0d1236b94afe68e3e --quiet
haxelib git linc_luajit https://github.com/superpowers04/linc_luajit 1906c4a96f6bb6df66562b3f24c62f4c5bba14a7 --quiet
haxelib git funkin.vis https://github.com/FunkinCrew/funkVis 22b1ce089dd924f15cdc4632397ef3504d464e90 --quiet
haxelib git grig.audio https://gitlab.com/haxe-grig/grig.audio.git cbf91e2180fd2e374924fe74844086aab7891666 --quiet
clear && haxelib run flixel-tools setup
clear && haxelib run lime setup
echo Donezo, Enjoy compiling this shitty fork! :3