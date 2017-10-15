
function gc () {
  echo $@
  git commit -m "$*"
}
