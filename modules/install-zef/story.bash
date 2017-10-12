set -e

export PATH=/opt/rakudo/bin:$PATH 
sudo=$(config sudo)

ls -l /opt/rakudo/bin/

if test -f /opt/rakudo/share/perl6/bin/zef; then
  echo zef is already installed, nothing to do here ...
else
  if test "$sudo" = "on"; then
    sudo /opt/rakudo/bin/install_zef_as_root.sh
  else
    install_zef_as_root.sh
  fi

fi

zef --help 2>&1 |head -n 1

