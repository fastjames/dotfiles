#!/bin/sh

DEFAULT_RUBY_VERSION=2.7.0

asdf plugin add ruby

asdf install ruby $DEFAULT_RUBY_VERSION
asdf global ruby $DEFAULT_RUBY_VERSION
