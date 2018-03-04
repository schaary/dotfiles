
# attach to a running session 
#
# example: 
#
# # list all running sessions
# schaary@solaris ~ [master]> tml
# 0: 2 windows (created Thu Jan 15 23:30:15 2015) [178x46] (attached)
#
# # attach to session 0 -> tmux -2 attach -t 0 
# tma 0
# 

function tma
    tmux -2 attach -t $argv
end
