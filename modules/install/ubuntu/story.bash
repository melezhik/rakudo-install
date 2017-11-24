set -e
sudo=$(config sudo)

if dpkg -s rakudo-pkg 2>&1 | grep Status: | grep 'install ok installed'; then

  echo 'looks like rakudo already installed, nothing to do here'

else

  file=$(story_var file)

  if test "$sudo" = "on"; then
    sudo dpkg -i ~/.rakudo-cache/$file
  else 
    dpkg -i ~/.rakudo-cache/$file
  fi

fi 

export DEBIAN_FRONTEND=noninteractive
PATH=/opt/rakudo-pkg/bin:$PATH perl6 --version

if test "$sudo" = "on"; then
  sudo  apt-get install -y -qq git
else
  apt-get install -y -qq git
fi

