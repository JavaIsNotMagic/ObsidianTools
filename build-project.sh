#!/bin/bash
/k/HaxiumCore/gradlew.bat build 1>&2> /dev/null
case $? in
0) echo "Project ObsidianTools built.";;
1) exit 1;;
esac
cd "/k/HaxiumCore/build/libs"
unzip $(find -name *.jar)
f1=$(ls | grep "obsian_armor")
f2=$(ls | grep "mcmod.info")
if [ -e $f1 ]; then
	mkdir ./assets
	mv $f1 ./assets
fi
if [ -e $f2 ]; then
	mv $f2 ./assets
fi
zip $(find -name com) $(find -name assets) ./ObsidianTools_1.7.10-latest.jar
case $? in
0);;
1) echo "Error."; exit 1;;
esac
rm -rf com assets
mv ./ObsidianTools_1.7.10-latest.jar /c/Users/Connor\ Tozer/AppData/Roaming/.minecraft/mods
case $? in
0);;
1) echo "Error."; exit 1;;
esac
echo "Mod added to mod list"