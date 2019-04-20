#!/bin/bash
echo "Post to Github..."
cd /home/connort/Desktop/Development/Java/ObsidianTools-Releases
git add *
git commit -m "Update"
git push -u origin master
case $? in
0) echo "Done!";;
1) echo "Error."; exit 1;;
esac