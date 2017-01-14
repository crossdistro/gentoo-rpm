# Gentoo ebuilds for Fedora, CentOS and other RPM distribution development

## Usage

    layman -a rpm

    emerge -av @fedora-packaging-9999 @centos-packaging-9999

## Configure Kerberos

At the following line at the beginning of `/etc/krb5.conf`:

    includedir /etc/krb5.conf.d/
