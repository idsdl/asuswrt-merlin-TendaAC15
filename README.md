Special edition for Tenda router (Tenda ac15) based on Asuswrt-Merlin Fork 
===================

This is version for Tenda ac15 router only (NOT TESTED for any other).
- Added SPI flash support
- Light version. Exclude some features for compact flash size (16Mb SPI)

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
