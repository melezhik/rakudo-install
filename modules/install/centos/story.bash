rpm_url=https://github.com/nxadm/rakudo-pkg/releases/download/2017.02/perl6-rakudo-moarvm-CentOS7.3.1611-20170200-01.x86_64.rpm
rpm_file=perl6-rakudo-moarvm-CentOS7.3.1611-20170200-01.x86_64.rpm
set -e

if yum list installed|grep perl6-rakudo-moarvm-CentOS; then

  echo 'looks like rakudo already installed, nothing to here'

else


  mkdir -p ~/.rakudo-cache
  
   
  if test -f ~/.rakudo-cache/$rpm_file; then
    echo ~/.rakudo-cache/$rpm_file exists, skip download
  else
    echo download $rpm_url to ~/.rakudo-cache/$rpm_file
    curl -L -f -s $rpm_url -o ~/.rakudo-cache/$rpm_file
  fi
  
  ls -lh ~/.rakudo-cache/$rpm_file 
  
  rpm -Uvh ~/.rakudo-cache/$rpm_file
  

fi 

PATH=/opt/rakudo/bin:$PATH 
