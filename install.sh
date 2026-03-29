#! bash


export REPO="smahraz/42_pkg"
BRANCH="master"
export RAW_URL="https://raw.githubusercontent.com/$REPO/$BRANCH"


source <(curl -fsSL $RAW_URL/lib/curl.sh)
source <(curl -fsSL $RAW_URL/lib/load_env.sh)


for pkg in "$@"; do
  if ( command -v $pkg 2>&1) > /dev/null ; then
    echo "$pkg exists"
  elif data=$(curl -fsSL $RAW_URL/package/$pkg.sh 2> /dev/null); then
    source <(echo "$data")
  else
    curl_exit_code $pkg $?
  fi
done


clear_installation_cache

