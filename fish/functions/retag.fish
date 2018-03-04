function retag
    ctags -R --exclude=.svn --exclude=.git --exclude=tmp --exclude=log * $argv
end
