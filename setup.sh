#!/usr/bin/env bash

printf '\033[1;32m
 ##     ##    #####    ##    ##   ##   ##  #######  #######         #####      #####   ##    ##
###    ###   #######   ###   ##   ##  ##   #######  #######         ######    #######  ##    ##
####   ###  ##     ##  ###   ##   ## ##    ##       ##              ##  ##   ##     ## ##    ##
####  ####  ##     ##  ####  ##   ####     ##       ##              ##  ##   ##     ##  ##  ##
## #### ##  ##     ##  ## ## ##   ####     ######   ######   ####   ######   ##     ##   ####
##  ##  ##  ##     ##  ## ## ##   #####    ######   ######   ####   ######   ##     ##    ##
##  ##  ##  ##     ##  ##  ####   ## ###   ##       ##              ##   ##  ##     ##    ##
##      ##  ##     ##  ##   ###   ##  ##   ##       ##              ##   ##  ##     ##    ##
##      ##   #######   ##   ###   ##   ##  #######  #######         #######   #######     ##
##      ##    #####    ##    ##   ##   ### #######  #######         ######     #####      ##
\n\033[0m';

echo 'This setup will install a varity of applications and packages. It is recommended to customize the configs before running.'
read -rp "Are you sure you want to continue? (Y/n) " -n 1
printf '\n\n'

if [[ $REPLY =~ ^[Yy]$ ]]; then
  printf '\033[0;33m';
  printf '                *********************** SETUP INITIATED ***********************\n';
  printf '                                This could take a few minutes.\n';
  printf '                ***************************************************************\n\n\n\033[0m';

  printf '\033[1;36m❯ xcode-tools\n\033[0m'
  source ./installers/xcode-tools.sh
  printf '\n'

  printf '\033[1;36m❯ Homebrew\n\033[0m'
  source ./installers/homebrew.sh
  printf '\n'

  printf '\033[1;36m❯ node.js\n\033[0m'
  source ./installers/nodejs.sh
  printf '\n'

  printf '\033[1;36m❯ Brew Packages\n\033[0m'
  source ./installers/brew-packages.sh
  printf '\n'

  printf '\033[1;36m❯ npm Packages\n\033[0m'
  source ./installers/npm-packages.sh
  printf '\n'

  #printf '\033[1;36m❯ Ruby Gems\n\033[0m'
  #source ./installers/ruby-gems.sh
  #printf '\n'

  printf '\033[1;36m❯ Zsh Config\n\033[0m'
  source ./installers/zsh.sh
  printf '\n'
else
  printf '\033[1;36m❯ Goodbye.\n\033[0m'
fi
