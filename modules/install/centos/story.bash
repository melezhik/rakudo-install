set -e

if yum -q list installed rakudo-pkg 2>/dev/null; then

  echo 'looks like rakudo already installed, nothing to do here'

else

  file=$(story_var file)

  rpm -Uvh ~/.rakudo-cache/$file

fi 

PATH=/opt/rakudo-pkg/bin:$PATH perl6 --version

yum -y -q install git
