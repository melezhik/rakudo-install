set -e

if yum list installed|grep perl6-rakudo-moarvm-CentOS; then

  echo 'looks like rakudo already installed, nothing to do here'

else

  file=$(story_var file)

  rpm -Uvh ~/.rakudo-cache/$file

fi 

PATH=/opt/rakudo/bin:$PATH perl6 --version

yum -y -q install git
