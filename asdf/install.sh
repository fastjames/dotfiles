#!/bin/sh

if test ! $(which asdf)
then
    # TODO: maybe use homebrew?
    echo "  Installing asdf for you."
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf
    cd ~/.asdf
    git checkout "$(git describe --abbrev=0 --tags)"

    # TODO: add other shell inits
    echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bash_profile
    echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bash_profile
fi
