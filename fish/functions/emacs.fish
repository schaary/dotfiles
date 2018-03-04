#!/usr/bin/env fish

function emacs
  /usr/bin/emacsclient-snapshot -a '' -t $argv
end
