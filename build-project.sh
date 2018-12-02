#!/bin/bash
echo "Building HaxiumCore"
/k/HaxiumCore/gradlew.bat build 1>&2> /dev/null
case $? in
0) echo "Project ObsidianTools built.";;
1) exit 1;;
esac
cd "/k/HaxiumCore/build/libs"
echo "Unpacking Build file"
unzip $(find -name *.jar) 1>&2> /dev/null
mkdir assets
case $? in
0);;
1) echo "Direcory exists.";;
esac
mv -f obsidian_armor mcmod.info assets 1>&2> /dev/null
case $? in
0);;
1) echo "Error."; exit 1;;
esac
echo "Packing Mod"
/k/Programs/bash/zip -r ./ObsidianTools_1.7.10-latest.jar $(find -name com) $(find -name assets) 1>&2> /dev/null
case $? in
0);;
1) echo "Error."; exit 1;;
esac
echo "Moving mod to %AppData%\.minecraft\.mods"
mv -f ./ObsidianTools_1.7.10-latest.jar /c/Users/Connor\ Tozer/AppData/Roaming/.minecraft/mods 1>&2> /dev/null
case $? in
0);;
1) echo "Error."; exit 1;;
esac
echo "Mod added to mod list"
rm -rf com assets META-INF