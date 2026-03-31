PKG_REPO="mozilla/geckodriver"


URL="https://github.com/$PKG_REPO/releases/download/v0.36.0/geckodriver-v0.36.0-linux64.tar.gz"
ARCHIVE_NAME="geckodriver.tar.gz"

cd $TEMP_DIR

curl -fsSL $URL > $ARCHIVE_NAME
tar -xzf $ARCHIVE_NAME


cp geckodriver $BIN_PATH
