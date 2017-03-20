# SYNOPSIS

Install Rakudo as system package.

# Description

This is simple installer of Rakudo Perl6.

Platforms supported:

* CentOS
* Ubuntu

# Install

    $ sparrow plg install rakudo-install

# Usage

    # install default distro
    $ sparrow plg run rakudo-install 

    # sets url for distro
    $ sparrow plg run rakudo-install --param url=https://github.com/nxadm/rakudo-pkg/releases/download/2017.02/perl6-rakudo-moarvm-CentOS7.3.1611-20170200-01.x86_64.rpm
    $ sparrow plg run rakudo-install --param url=https://github.com/nxadm/rakudo-pkg/releases/download/2017.02/perl6-rakudo-moarvm-ubuntu16.04_20170200-01_i386.deb

# Usage with sparrowdo

    $ cat sparrowfile

    task-run 'install Rakudo', 'rakudo-install';

# Author

Alexey Melezhik

# See also

[rakudo-pkg project](https://github.com/nxadm/rakudo-pkg/releases)




