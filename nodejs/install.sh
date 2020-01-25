#!/bin/sh

asdf plugin add nodejs

# add required GPG keys
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

asdf install nodejs 13.7.0
