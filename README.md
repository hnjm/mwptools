mwptools
========

"A mission planner for the rest of us"

## Overview

mwptools provides a mission planner, ground control station, real time flight logger and log
replay / blackbox replay functions for the iNav FC firmware.

![mwp](https://raw.githubusercontent.com/wiki/stronnag/mwptools/images/ltm-normal.png)

mwp supports the following telemetry protocols:

* MSP (MultiWii Serial Protocol)
* LTM (Lightweight Telemetry)
* MAVLink (iNav subset)
* Smartport

In addition to a mission planner and ground control station, mwptools provides a small suite of tools to manage a MultiWii NAV flight controller and other CleanFlight based FCs. The suite consists of tools that the author finds useful to manage and monitor 'in the field' using a low powered Linux based netbook or chromebook running Arch Linux.

mwp also provides logging, the replay of mwp log files and Blackbox logs.

## Tools

 * mwp : "A mission planner for the rest of us". Simple mission planning and monitoring. Mission Planning is provided for iNav and MW-NAV (MW 2.4). Monitoring, logging and recording for iNav and MultiWii
 * fc-cli : Manage backup and restoration of CLI dump and diff (fc-set, fc-get)

### Legacy (MW)

 * pidedit : PID editor (MW);
 * switchedit : Transmitter switch editor (MW);
 * mspsim : An MSP (MultiWii Serial Protocol) simulator. Used to develop the other components of the suite.

 ### Miscellaneous

 * Tools to transform mwp log files to SQL, GPX and KML, analyse black box logs, Ublox GPS and more.

## Platforms and OS

The tools are designed to be portable and as far as possible platform and architecture agnostic. The suite is developed on Arch Linux and is tested on Ubuntu (latest and most recent LTS), Fedora (current), Debian (Buster, Sid) and FreeBSD (current release); building and running on any platform that supports (recent versions of):

 * gtk+3.0 (3.18 or later);
 * vala and gcc;
 * Clutter (software GL is fine);
 * libchamplain;
 * libespeak;
 * libgdl;
 * POSIX API
 * mspsim requires Posix pseudo-terminals.

Please see the `docs` directory for specific development requirements for individual OS.The `docs` directory also contains a user guide / manual in ODT and PDF formats (`docs/mwptools.{odt,pdf}`).

mwptools is tested on x86_64, ia32 and ARM devices (Linux / FreeBSD).

It is also possible to run mwp on MS Windows using:

* [Cygwin](https://www.cygwin.com/)
* Windows 10 / WSL
* A virtual machine with a Linux guest.

The [wiki](https://github.com/stronnag/mwptools/wiki) provides further guidance.


## Installation

* Review / install the dependencies for your platform. The [documentation](docs/) directory lists dependencies for Fedora and Debian/Ubuntu like systems.

* Clone the repository `git clone https://github.com/stronnag/mwptools.git`

* Compile and install
  ````
  cd mwptools
  make && sudo make install
  ````

[Installation video](https://vimeo.com/256052320/)

If you're new to Linux (or just new to mwp), please start with the [easy install wiki page](https://github.com/stronnag/mwptools/wiki/Install-mwp-on-a-Windows-computer-for-Linux-noobs), which describes installing to an Ubuntu VM using VirtualBox hosted on a Windows computer.

Support questions are best asked in the [RC Groups board](https://www.rcgroups.com/forums/showthread.php?2633708-mwp)

### Updating

As mwptools makes no formal releases, you can update your installation from the master branch:

````
cd mwptools # the initial installation directory
git pull && make && sudo make install

````

## Arch Linux

Arch users can install mwptools from the AUR package `mwptools-git`

## Compatibility

As well as supporting iNav, mwp aims to be compatible with EOSBandi's WinGUI for MW. It used the same XML mission file format (with mwp extensions) and aims to provide similar functionally where it is possible to reverse engineer the required protocol formats.

## Licence

GPL v3 or later
