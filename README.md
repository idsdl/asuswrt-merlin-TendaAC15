Special edition for Tenda router (Tenda ac15) based on Asuswrt-Merlin Fork 
===================

This is version for Tenda ac15 router only (NOT TESTED for any other).
- Added SPI flash support
- Light version. Exclude some features for compact flash size (16Mb SPI)
- English and Russian languague only in WEB interface!

For make TENDA_AC15_xxxxx.trx file:

I use "Centos9 4.18.0-147.el8.x86_64"

dnf install git gitk
dnf install git-tools 

 cd ~
 git clone https://github.com/...../asuswrt-merlin-TendaAC15.git asuswrt-merlin
 cd ~/asuswrt-merlin
 git-restore-mtime
 cd ~/asuswrt-merlin/release/src-rt-6.x.4708
 ./clean_Tenda.sh
 ./build_Tenda_ac15.sh

You can see new TENDA_AC15_xxxxx.trx image at:
 cd ~/asuswrt-merlin/release/src-rt-6.x.4708/image

P.S. Please check before router upgrade! Max filesize of TENDA_AC15_xxxxx.trx for 16Mb.SPI flash must be less 16384000 bytes (0xFA000) !!!

For first install to TENDA AC15 router use:
- CFE Bootloader mode (bootloader IP is 192.168.0.1)
- or use tftp server on 192.168.1.100 (You have to rename "TENDA_AC15_xxxxx.trx" to "vmlinuz")

After first install you have to do  "restore default settings" for properly nvram init.

Default LAN IP: 192.168.1.1
- Login: admin
- Pass: admin

---------

For go back to original OEM  TENDA_AC15 router Firmware use:
- CFE Bootloader mode (bootloader IP is 192.168.0.1)
- or use tftp server on 192.168.1.100
  You have to rename OEM  "TENDA_AC15_xxxxx.bin" to "vmlinuz.bin" and remove Tenda header use:
    "dd if=vmlinuz.bin of=vmlinuz skip=64 bs=1 iflag=skip_bytes"

---------

Atantion!!! 
- You can use Firmware at your own risk!!! 
- I not tested the firmware for any other models of routers!
- No any support from my side!

----------------------------------------------------------------------

This is a fork of the enhanced version of Asuswrt by RMerlin.  It is based on a snapshot of the 374.43_2 Merlin release 
as originally distributed in August 2014. Note that the master branch has had no updates since Oct 2014 and should not be
updated as it may cause compile issues with the update branch 374.43_2-update.

As compared to the latest Asuswrt-Merlin releases...

The fork does include

- Maintenance for documented security issues
- Maintenance for supporting open source components (such as dnsmasq, miniupnpd, etc)
- Backports of applicable fixes and new functions from Merlin's main branch
- Some unique support for options requested by users
- A different IPv6 stack which may work better in some environments
- Older versions of the wireless drivers that some feel offer better performance (especially on the MIPS based routers)
- Less of a lockdown on tweaking power levels

The fork does not include

- The new TrendMicro DPI engine functions for ARM routers
- The enhancements to the networkmap for custom icons, client naming, etc.
- Some of the enhanced gui formatting of later releases, for instance the new wireless log
- Support for the ASUS router control app
- Other additional changes made since the original code was released that are not documented as backported to this release


The following routers are supported by this firmware:
[*] N16, N66U, AC66U (original MIPS based revs), AC56U, AC68U (Rev A1,A2,B1) and AC68P (and the retail and color versions, R and W, of each router)
[*] AC68U Rev C1 and Rev E1, AC1900, AC1900P and AC66U-B1 starting with firmware Version 27 

The following routers were released after the base code used for this fork was available, and are NOT supported:
[*] AC87U, AC3100, AC3200, AC88U, AC5300 (and the retail R versions)

See http://www.snbforums.com/threads/18914/ for the latest download information for firmware builds.
