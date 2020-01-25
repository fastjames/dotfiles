#!/bin/sh

DEFAULT_GOLANG_VERSION=1.13.6

asdf plugin add golang

asdf install golang $DEFAULT_GOLANG_VERSION
asdf global golang $DEFAULT_GOLANG_VERSION
