set -e

export PATH=/opt/rakudo-pkg/bin:$PATH 
sudo=$(config sudo)
user_install=$(config user_install)

ls -l /opt/rakudo-pkg/bin/

if test "$user_install" = "on"; then
  if test -f ~/.perl6/bin/zef; then
    echo ~/.perl6/bin/zef is already installed, nothing to do here ...
  else
    install-zef-as-user.p6
  fi
  ~/.perl6/bin/zef locate zef
else
  zef locate zef
fi



