set -e

export PATH=/opt/rakudo-pkg/bin:$PATH 
sudo=$(config sudo)
user_install=$(config user_install)

ls -l /opt/rakudo-pkg/bin/

if test "$user_install" = "on"; then
  if test -f ~/.perl6/bin/zef; then
    echo ~/.perl6/bin/zef is already installed, nothing to do here ...
  else
    if test -f /opt/rakudo-pkg/bin/install_zef_as_user.sh; then
      install_zef_as_user.sh
    elif test -f /opt/rakudo-pkg/bin/install_zef_as_user; then
      install_zef_as_user
    else
      echo 'cannot find /opt/rakudo-pkg/bin/install_zef_as_user(.sh)'
      exit 1
    fi
    
  fi
  ~/.perl6/bin/zef locate zef
else
  if test -f /opt/rakudo-pkg/share/perl6/bin/zef; then
    echo /opt/rakudo-pkg/share/perl6/bin/zef is already installed, nothing to do here ...
  else
    if test -f /opt/rakudo-pkg/bin/install_zef_as_root.sh; then
      install_zef_as_root.sh
    elif test -f /opt/rakudo-pkg/bin/install_zef_as_root; then
      install_zef_as_root
    else
      echo 'cannot find /opt/rakudo-pkg/bin/install_zef_as_root(.sh)'
      exit 1
    fi
  fi
  /opt/rakudo-pkg/share/perl6/bin/zef locate zef
fi



