#!/bin/bash

# mkdir -p dist/win/stable-diffusion-ui/scripts
mkdir -p dist/linux-mac/stable-diffusion-ui/scripts

# copy the installer files for Windows

# cp scripts/on_env_start.bat dist/win/stable-diffusion-ui/scripts/
# cp scripts/bootstrap.bat dist/win/stable-diffusion-ui/scripts/
# cp "scripts/Start Stable Diffusion UI.cmd" dist/win/stable-diffusion-ui/
# cp LICENSE dist/win/stable-diffusion-ui/
# cp "CreativeML Open RAIL-M License" dist/win/stable-diffusion-ui/
# cp "How to install and run.txt" dist/win/stable-diffusion-ui/
# echo "" > dist/win/stable-diffusion-ui/scripts/install_status.txt

# copy the installer files for Linux and Mac

cp scripts/on_env_start.sh dist/linux-mac/stable-diffusion-ui/scripts/
cp scripts/bootstrap.sh dist/linux-mac/stable-diffusion-ui/scripts/
cp scripts/functions.sh dist/linux-mac/stable-diffusion-ui/scripts/
cp scripts/start.sh dist/linux-mac/stable-diffusion-ui/
cp LICENSE dist/linux-mac/stable-diffusion-ui/
cp "CreativeML Open RAIL-M License" dist/linux-mac/stable-diffusion-ui/
cp "How to install and run.txt" dist/linux-mac/stable-diffusion-ui/
echo "" > dist/linux-mac/stable-diffusion-ui/scripts/install_status.txt

# make the zip

# cd dist/win
# zip -r ../stable-diffusion-ui-windows.zip stable-diffusion-ui
# cd ../..

cd dist/linux-mac
zip -r ../stable-diffusion-ui-linux.zip stable-diffusion-ui
zip -r ../stable-diffusion-ui-mac.zip stable-diffusion-ui
cd ../..

echo "Build ready. Upload the zip files inside the 'dist' folder."
