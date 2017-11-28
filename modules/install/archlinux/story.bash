#!/bin/bash

set -e

if pacman -Q -q rakudo 2>/dev/null 1>/dev/null ; then

  echo 'looks like rakudo already installed, nothing to do here'

else

  repo=$(story_var repo)
  REPO_CONFIG="$cache_dir/pacman_rakudo.conf"
  
  cat << PACMAN_ADDITION_CONFIG > $REPO_CONFIG
Include = /etc/pacman.conf
[rakudo]
SigLevel = Optional
Server = $repo
PACMAN_ADDITION_CONFIG
  
  pacman -Syy --config $REPO_CONFIG
  pacman -S --noconfirm --config $REPO_CONFIG rakudo

fi


perl6 -v
