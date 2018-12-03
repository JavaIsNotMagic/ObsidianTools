@echo off
echo "Updating to github..."
git add *
git commit -m "Update"
git push -u origin master
echo "Done!"