curl_exit_code (){
  package_name=$1
  curl_exit_cd=$2



  if [ $curl_exit_cd -eq 22 ]; then
    echo "Error: can't find package $package_name." >&2
  else
    echo "Error: unknown error, cant install package $package_name (curl:$curl_exit_cd)" >&2
  fi
}
