PKG_REPO="sharkdp/bat"
URL="https://github.com/$PKG_REPO/releases/download/v0.26.1/bat-v0.26.1-x86_64-unknown-linux-gnu.tar.gz"
ARCHIVE_NAME="bat.tar.gz"

cd $TEMP_DIR

curl -fsSL $URL > $ARCHIVE_NAME
tar -xzf $ARCHIVE_NAME

cp bat-*/bat $BIN_PATH
