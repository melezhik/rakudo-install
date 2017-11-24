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

There are two flavors to set Rakudo Perl6 distribution name:

## Relying on OS specific default distro

    # install OS specific default distro, you don't need to
    # set it explicitly as the plugin takes care about 
    # distro name resolution by examining OS name

    $ sparrow plg run rakudo-install

## Or setting url for distro explicitly

    # The urls can be found here:
    # https://github.com/nxadm/rakudo-pkg/releases :

    $ sparrow plg run rakudo-install \
    --param url=https://github.com/nxadm/rakudo-pkg/releases/download/2017.02/perl6-rakudo-moarvm-CentOS7.3.1611-20170200-01.x86_64.rpm
    $ sparrow plg run rakudo-install \
    --param url=https://github.com/nxadm/rakudo-pkg/releases/download/2017.02/perl6-rakudo-moarvm-ubuntu16.04_20170200-01_i386.deb

# Usage with sparrowdo

    $ cat sparrowfile

    task-run 'install Rakudo', 'rakudo-install';

    # or by using a specific distro:

    task-run 'install Rakudo', 'rakudo-install', %(
      url =>  'https://github.com/nxadm/rakudo-pkg/releases/download/2017.02/perl6-rakudo-moarvm-ubuntu16.04_20170200-01_i386.deb'
    );

# Other options

## sudo (\*)

Set to `on` if want invoke "sudo" install. Default value is `off`.

\* This option is only available for Ubuntu OS

## user_install

Set to `on` if you want `install_zef_as_user` rather than `install_zef_as_root` flavor when install zef manager,
see also [rakudo-pkg documentation](https://github.com/nxadm/rakudo-pkg/releases)

# Author

Alexey Melezhik

# See also

[rakudo-pkg project](https://github.com/nxadm/rakudo-pkg/releases)




