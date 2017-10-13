# SYNOPSIS

Install Rakudo as system package.

# Description

This is simple installer of Rakudo Perl6.

Platforms supported:

* CentOS (+RHEL)
* Ubuntu
* Debian
* Fedora

# Install

    $ sparrow plg install rakudo-install

# Usage

    # install default distro
    $ sparrow plg run rakudo-install

    # sets url for distro
    # The urls can be found here: https://github.com/nxadm/rakudo-pkg/releases

    $ sparrow plg run rakudo-install \
    --param url=https://github.com/nxadm/rakudo-pkg/releases/download/2017.02/perl6-rakudo-moarvm-CentOS7.3.1611-20170200-01.x86_64.rpm
    $ sparrow plg run rakudo-install \
    --param url=https://github.com/nxadm/rakudo-pkg/releases/download/2017.02/perl6-rakudo-moarvm-ubuntu16.04_20170200-01_i386.deb

# Usage with sparrowdo

    $ cat sparrowfile

    task-run 'install Rakudo', 'rakudo-install';

    # or

    task-run 'install Rakudo', 'rakudo-install', %(
      url =>  'https://github.com/nxadm/rakudo-pkg/releases/download/2017.02/perl6-rakudo-moarvm-ubuntu16.04_20170200-01_i386.deb'
    );

# Other options

## sudo

Set to `on` if want invoke "sudo" install. Default value is `off`.

## user_install

Set to `on` if you want `install_zef_as_user` rather than `install_zef_as_root` flavor when install zef manager,
see also [rakudo-pkg documentation](https://github.com/nxadm/rakudo-pkg/releases)

# Author

Alexey Melezhik

# See also

[rakudo-pkg project](https://github.com/nxadm/rakudo-pkg/releases)




