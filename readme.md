# PiScriptsHomeAutomation
These scripts are used to configure a Raspberry Pi 
as a home automation server

  First place the latest raspbian image on an sd card (I use win32diskimager)

  Then, get these files and directory and copy them to the raspberry pi sd card.
  
  Bootup the raspberry pi and open a line terminal and execute these commands:
  
  sudo bash
  cd /boot
  chmod 777 all.sh
  ./all.sh gmailUsername gmailPassword
  
  Where gmailUsername is your gmail user name, and gmailPassword is your gmail
  password.  Do not use @gmail.com in the username, and do not use any " quotation
  marks in the name or password.
  
  
  
  
  