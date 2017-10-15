
# git commit -m 'some commit message' is squashed to `gc some commit message`.
# There is no need to use double quotes around the commit message
function gc () {
  git commit -m "$*"
}
