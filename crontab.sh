#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Must be root"
  exit
fi
echo "Adding * * * * * /usr/bin/python /var/www/html/Paulware/broadcastAddress.py to crontab"
echo "MAILTO=\"\"" > mycron
echo "* * * * * /usr/bin/python /var/www/html/Paulware/broadcastAddress.py" >> mycron
echo "* * * * * cd /var/www/html/Paulware;php timer.php" >> mycron
crontab mycron
rm mycron
