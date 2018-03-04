# kill a running session 
#
# example: 
#
# # list all running sessions
# schaary@solaris ~ [master]> tml
# 0: 2 windows (created Thu Jan 15 23:30:15 2015) [178x46] (attached)
#
# # kill session 0 
# tmk 0
# 

function tmk
  tmux kill-session -t $argv
end
