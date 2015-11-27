#!/bin/bash
## Install HTTPS support for APT.
apt-get update -y --no-install-recommends
apt-get install -y --no-install-recommends apt-transport-https ca-certificates

## Install add-apt-repository
apt-get install -y --no-install-recommends software-properties-common

## Upgrade all packages.
apt-get dist-upgrade -y --no-install-recommends

## Fix locale.
apt-get install -y --no-install-recommends language-pack-en
locale-gen en_US
update-locale LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-

## Often used tools.
apt-get install -y --no-install-recommends curl less vim-tiny psmisc git-core
ln -s /usr/bin/vim.tiny /usr/bin/vim
