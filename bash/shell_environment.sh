
os=$(uname -s)

# My editor of choice!
export EDITOR=nvim

export PATH=/usr/local/bin:${PATH}

# here is where my ruby versions live
export PATH=${HOME}/.rbenv/bin:${PATH}

# everything about my package manager nixos
if [ "Darwin" == ${os} ]
then
  export PATH=/nix/var/nix/profiles/per-user/nmaef/profile/bin:${PATH}
fi

# my personal stuff is most important :D
export PATH=${HOME}/bin:${PATH}

# don't forget the present working directozy
export PATH=.:${PATH}
