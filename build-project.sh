#!/bin/bash
/home/connor/Desktop/ME-Files/gradlew build 1>&2> /dev/null
case $? in
0) echo "Project ObsidianTools built.";;
1) exit 1;;
esac
cp -f /home/connor/Desktop/ME-Files/build/libs/ObsidianTools-1.7.10-1.0.34.jar /home/connor/.minecraft/mods
case $? in
0) echo "ObsidianTools added to mod list";;
1) exit 1;;
esac

