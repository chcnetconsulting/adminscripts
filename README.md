# adminscripts

WARNING
THESE SCRIPTS ARE PROVIDED AS IS! NO WARRANTY THAT IT DOES NOT DELETE YOUR
VALUABLE DATA, YOUR HARDDRIVE, BLOW UP YOUR COMPUTER AND NUKES THE WORLD. 
IF YOU DO NOT KNOW, WHAT YOU ARE DOING, DO NOT USE IT :))
HAVING SAID THAT, THESE SCRIPTS ARE PUBLIC DOMAIN, YOU CAN DO WHATEVER YOU 
WANT WITH THEM, CHANGE; REWRITE, WHATEVER :)

These are shellscript that can run automatically, via cron-job.

What does it do?

It downloads from php downloads the respective tar packages, unpacks it, and 
configures it with almost all features. 

!! You will need to install build essentials and all necessary dev libraries,
otherwise this will not work!!

Currently prepared scripts vor php 5.4, 5.5 and 5.6

This favours a layout, where all php versions are under /opt/php-X.y, where
x is the major number and y the minor. 

5.6, e.g. This does not support several versions like 5.4.1, 5.4.2, etc, 
as all new builds 

