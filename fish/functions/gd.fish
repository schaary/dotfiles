function gd
    set HOSTNAME (hostname -s) 

    if test $HOSTNAME = 'openmind'
        git difftool $argv
    else
        git diff $argv
    end
end
