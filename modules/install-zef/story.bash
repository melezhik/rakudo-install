set -e

export PATH=/opt/rakudo/bin:$PATH 

if test -f /opt/rakudo/share/perl6/bin/zef; then
  echo zef is already installed, nothing to do here ...
else
  install_zef_as_root
fi

zef --help 2>&1 |head -n 1

