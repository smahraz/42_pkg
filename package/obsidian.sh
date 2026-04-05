URL="https://github.com/obsidianmd/obsidian-releases/releases/download/v1.12.7/Obsidian-1.12.7.AppImage"
ICON_URL=$RAW_URL/assets/obsidian.jpg

NAME="Obsidian"

cd $TEMP_DIR


wget -O $NAME.ico $ICON_URL
wget -O $NAME.AppImage $URL --continue

chmod +x $NAME.AppImage
cp $NAME.AppImage $APPIMAGE_PATH
cp $NAME.ico $DESKTOP_LAUNCHER_PATH


echo """
[Desktop Entry]
Name=$NAME
Comment=Markdown-based Knowledge Base and Note-taking App
Exec=$APPIMAGE_PATH/$NAME.AppImage
Icon=$DESKTOP_LAUNCHER_PATH/$NAME.ico
Terminal=false
Type=Application
Categories=Office;Utility;
StartupNotify=true
MimeType=text/markdown;
""" > $DESKTOP_LAUNCHER_PATH\/$NAME.desktop


update-desktop-database $DESKTOP_LAUNCHER_PATH
