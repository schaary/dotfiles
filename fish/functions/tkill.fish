function tkill --description 'kill a tmux session'
  tmux kill-session -t $argv
end
