set -e

if apk info -e rakudo-pkg 2>/dev/null; then
  echo 'looks like rakudo already installed, nothing to do here'
else
  file=$(story_var file)
  apk add --allow-untrusted ~/.rakudo-cache/$file
fi 

PATH=/opt/rakudo-pkg/bin:$PATH perl6 --version

apk version rakudo-pkg
apk info -e rakudo-pkg
