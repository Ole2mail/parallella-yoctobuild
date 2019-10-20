#!/bin/sh

# initialize all the submodules
git submodule init
# clone the commit ID configured in the parallella-yoctobuild superproject
git submodule update

echo "================================="
echo "once only fetch done ready to run"
echo " "
echo "   source prepareyoctobuild.sh"
echo " "
echo "prepareyoctobuild.sh is sourced each"
echo "time you open a new shell"

cd poky
git am < ../0001-fix-new-GIT-api-for-the-upstream-setting.patch
cd ..

