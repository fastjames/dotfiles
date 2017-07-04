#!/usr/bin/env bash

DISTRO=$(uname)
chruby &> /dev/null
if [ "$?" -eq "1" ]; then
  echo "  Installing chruby for you."
  case $DISTRO in
    'Linux')
      cd $HOME/src
      wget -O chruby-0.3.9.tar.gz \
        https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
      tar -xzvf chruby-0.3.9.tar.gz
      cd chruby-0.3.9/
      sudo make install
      ;;
    'Darwin')
      brew install chruby > /tmp/chruby_install.log
      ;;
    *)
      echo "Good luck with that"
      ;;
  esac
else
  echo
  echo "chruby already installed"
fi

command -v ruby-install &> /dev/null
if [ "$?" -eq "1" ]; then
  echo "  Installing ruby-install for you."
  case $DISTRO in
    'Linux')
      cd $HOME/src
      wget -O ruby-install-0.6.0.tar.gz \
        https://github.com/postmodern/ruby-install/archive/v0.6.0.tar.gz
      tar -xzvf ruby-install-0.6.0.tar.gz
      cd ruby-install-0.6.0/
      sudo make install
      ;;
    'Darwin')
      brew install ruby-install > /tmp/ruby-install_install.log
      ;;
    *)
      echo "Good luck with that"
      ;;
  esac
else
  echo
  echo "ruby-install already installed"
fi
