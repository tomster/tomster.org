.. title: Setting up PCBSD
.. date: 2015-08-20
.. tags: FreeBSD, FOSS
.. category: 
.. link: 
.. description: Notes to myself what I needed to do to setup PCBSD to my liking
.. type: text

Packages to install
===================

- i3
- i3status
- dmenu
- autojump
- libffi
- py27-pip
- py27-virtualenv
- libxml2
- libxslt
- postgresql93-client
- readline

Various Configurations
======================

- Set bash as default shell
- ``sudo mount -t fdescfs fdesc /dev/fd`` (see `homeshick issue <https://github.com/andsens/homeshick/issues/124#issuecomment-63984418>`_)
- in *Konsole* change `bash` to `bash -l` to make it source `.bash_profile`