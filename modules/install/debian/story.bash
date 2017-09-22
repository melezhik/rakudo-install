set -e

if dpkg -s perl6-rakudo-moarvm-debian8.7 2>&1 | grep Status: | grep 'install ok installed'; then

  echo 'looks like rakudo already installed, nothing to do here'

else

  file=$(story_var file)
  dpkg -i ~/.rakudo-cache/$file

fi 


PATH=/opt/rakudo/bin:$PATH perl6 --version

DEBIAN_FRONTEND=noninteractive apt-get install -y -qq git
