PKG_REPO="neovim/neovim"
URL="https://github.com/$PKG_REPO/releases/download/v0.12.0/nvim-linux-x86_64.tar.gz"
ARCHIVE_NAME="nvim.tar.gz"

cd $TEMP_DIR

curl -fsSL $URL > $ARCHIVE_NAME
tar -xzf $ARCHIVE_NAME


# rm old install
rm -rf $BIN_FILES_PATH/nvim
rm -rf $BIN_PATH/nvim # symbolic link

cp -r nvim-linux-x86_64 $BIN_FILES_PATH/nvim
ln -s $BIN_FILES_PATH/nvim/bin/nvim $BIN_PATH/nvim
