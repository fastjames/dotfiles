#!/bin/sh

DEFAULT_ELIXIR_VERSION=1.9.4

asdf plugin add elixir

asdf install elixir $DEFAULT_ELIXIR_VERSION

asdf global elixir $DEFAULT_ELIXIR_VERSION
