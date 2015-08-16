.. title: Going FOSS (again)
.. date: 2015-08-16
.. tags: FreeBSD, FOSS, MacOSX
.. category: 
.. link: 
.. description: Switching from Mac OS X to a FOSS development environment using FreeBSD
.. type: text

Basically ever since Mac OS X came out, it has been my primary development platform, replacing a dualboot MacOS 9 / Yellowdog Linux setup. Over the years I've been quite happy with it and most changes made by Apple were welcome improvements. But while I cannot exactly pin-point when it happened, over time I've been feeling less and less comfortable with a) the direction Apple is taking in regards to 'the cloud™' and b) the fact that I'm handling pretty much all of my digital existence (from my professional work, over finances all the way to the family pictures) using closed-source, proprietary software.

But the final nail in the coffin of my Mac-only setup was a slide at `Lunar's talk "How to make your software build reproducibly" <https://events.ccc.de/camp/2015/Fahrplan/events/6657.html>`_ where he argues for the need of verifiably non-tampered build chains to avoid malware injection. Specifically, it has transpired, `that the NSA has targeted XCode to insert backdoors into the binaries compiled with it <https://firstlook.org/theintercept/2015/03/10/ispy-cia-campaign-steal-apples-secrets/>`_ – in other words, one no longer has to wear a tinfoil hat to assume such attachs are not merely hypothetical.

I have made several half-assed attempts to switch to Linux as a Desktop OS in the past (either for myself or even just for the relative modest requirements of family members) but they all ended either desastrously or simply underwhelmingly – mainly in the area of multimedia or "lifestyle" applications: way too much tweaking and debugging for far too crappy results.

But this time around I'm thinking: why aim to replace my *whole* existing setup? How about focussing on what I need for developing (paid or otherwise)? Firstly, that is a significantly smaller set of features and secondly and area where open source has its strong points. As a nice side effect this would allow me to have a cleaner separation between work and non-work related computer usage. Less distractions and temptations while hacking and less reminders of work projects during casualy usage.

Since I have been using FreeBSD pretty much exclusively over the past seventeen years (damn! has it really been this long?) and since I would be targeting a much smaller feature now I decided to give `PC-BSD <http://www.pcbsd.org>`_ a try.
