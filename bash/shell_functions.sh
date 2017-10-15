
gc() {
  echo $@
  git commit -m "$@"
}
