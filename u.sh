up() {
  local count="${1:-1}"
  local path=../
  while (( --count > 0 )) ; do
    path="$path"../
  done
  echo "cd -- $path"
  cd -- "$path"
}
