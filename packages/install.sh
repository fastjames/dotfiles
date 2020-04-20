#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

APT_COMMAND=/usr/local/bin/brew

# Check for Homebrew
${APT_COMMAND} update
${APT_COMMAND} upgrade -y

# install ubuntu packages
APT_PACKAGES=(build-essential emacs git neovim ripgrep tmux)
${APT_COMMAND} install ${APT_PACKAGES}


exit 0
