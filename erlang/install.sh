#!/bin/sh

DEFAULT_ERLANG_VERSION=22.2.3

asdf plugin add erlang

asdf install erlang $DEFAULT_ERLANG_VERSION

asdf global erlang $DEFAULT_ERLANG_VERSION
