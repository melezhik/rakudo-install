set -e

repo=$(story_var repo)
REPO_CONFIG='/tmp/pacman_rakudo.conf'

cat << PACMAN_ADDITION_CONFIG > $REPO_CONFIG
Include = /etc/pacman.conf
[rakudo]
SigLevel = Optional
Server = $repo
PACMAN_ADDITION_CONFIG

pacman -Syy --config $REPO_CONFIG
pacman -S --noconfirm --config $REPO_CONFIG rakudo

perl6 -v
