#! bash


export REPO="smahraz/42_packages"
BRANCH="master"
export RAW_URL="https://raw.githubusercontent.com/$REPO/$BRANCH"

source <(curl -fsSL $RAW_URL/lib/curl.sh)
# source lib/curl.sh



for pkg in "$@"; do
  if data=$(curl -fsSL $RAW_URL/package/$pkg.sh 2> /dev/null); then
    echo "ok"
  else
    curl_exit_code $pkg $?
  fi
done


