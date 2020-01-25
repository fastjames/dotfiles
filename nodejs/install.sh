#!/bin/sh

DEFAULT_NODEJS_VERSION=13.7.0

asdf plugin add nodejs

# add required GPG keys
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

asdf install nodejs $DEFAULT_NODEJS_VERSION
asdf global nodejs $DEFAULT_NODEJS_VERSION
