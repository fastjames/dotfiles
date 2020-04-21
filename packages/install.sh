#!/bin/sh
#
# packages
#
# This installs some of the common dependencies needed (or at least desired)
# using apt / homebrew.

APT_COMMAND=/usr/bin/apt
BREW_COMMAND=/usr/local/bin/brew

DISTRO=$(uname)
case $DISTRO in
  'Linux')
    ${APT_COMMAND} update
    ${APT_COMMAND} upgrade -y

    # install ubuntu packages
    APT_PACKAGES=(build-essential emacs git kitty mosh neovim ripgrep tmux)
    ${APT_COMMAND} install ${APT_PACKAGES}
  'Darwin')
    if test ! $(which brew)
    then
        echo "  Installing Homebrew for you."
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
    fi

    ${BREW_COMMAND} update
    # Install homebrew 'essential' packages
    BREWS=(autoconf automake ccache cmake coreutils ctags-exuberant emacs fish git gnupg markdown neovim ninja proctools redis ripgrep s3cmd sqlite tmux wget)
    for brew in ${BREWS[@]}; do
        ${BREW_COMMAND} list $brew > /dev/null 2>&1
        if [[ "$?" -eq "1" ]]; then
            echo "Installing $brew"
            ${BREW_COMMAND} install $brew
        fi
    done

    ${BREW_COMMAND} upgrade --all
    ${BREW_COMMAND} cleanup
    ${BREW_COMMAND} prune
esac

exit 0
