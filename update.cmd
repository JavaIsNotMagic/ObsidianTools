@echo off
echo "Updating to github..."
cd /d K:\Minecraft-Mods\HaxiumCore
git add *
git commit -m "Update"
git push -u origin master
echo "Done!"