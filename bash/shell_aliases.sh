
os=$(uname -s)

# Three nice versions of the `ls` command. Since on macOS every cli command is
# way to old, I installed the latest versions with homebrew. 
if [ "Darwin" == ${os} ]
then
  alias "l"="/usr/local/bin/gls -lFh --color --group-directories-first"
else
  alias "l"="/bin/ls -lFh --color --group-directories-first"
fi
  
if [ "Darwin" == ${os} ]
then
  alias "la"="/usr/local/bin/gls -lFha --color --group-directories-first"
else
  alias "la"="/bin/ls -lFha --color --group-directories-first"
fi

if [ "Darwin" == ${os} ]
then
  alias "ll"="/usr/local/bin/gls -lFh --color --group-directories-first"
else
  alias "ll"="/bin/ls -lFh --color --group-directories-first"
fi

alias "s"="git status --short"
alias "gaci"="git init;git add .;git commit -m 'initial commit'"
alias "ga"="git add"
alias "gaa"="git add --all"
alias "gss"="git status --show-stash"

# start emacs in the terminal
alias "emacs"="emacs -nw"

# Elixir 
# start mix with the local mix.exs to get a context
alias "iexm"="iex -S mix"

# I use org-mode for my task management. 
alias "td"="emacs -nw ${HOME}/Documents/org/today.org"
alias "h"="hostname -f"
