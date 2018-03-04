function rrg
    rails routes | ag "$argv"
end
