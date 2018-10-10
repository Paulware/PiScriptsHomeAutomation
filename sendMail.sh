#!/bin/bash
if [[ "$EUID" -ne 0 ]]
	then
 echo "Must logged in as root or use sudo"
 echo "To log in as root, you can use putty and log in as root@ip.add.res.s"
 echo "Or you can enter the command:"
 echo "  su root"
 echo "  raspberry"
 echo "Assuming that raspberry is the password for the root user"
 echo "Then enter the command again:"
 echo "./filename.sh"
	exit 1 || return 1
fi

if [[ $# -ne 2 ]];
then 
  echo "You need to specify gmail account and password"
  echo "Note: do not include the @gmailcom in the username"
	 echo "Usage:"
	 echo ". /boot/sendMail.sh myEmailAccount myPassword"
  exit 1 || return 1
fi 

USERNAME=$1
PASSWORD=$2

# update_file filename "Find String" "Replace String"
update_file() {
  cat $1 | sed -e "s/$2/$3/" > /f
  mv /f $1
}

# return true if line exists
line_exists_in () {
   if grep -Fxq "$2" $1
   then
      return 0
   else
      return 1
   fi
}

sudo apt-get -y install ssmtp mailutils
update_file /etc/ssmtp/ssmtp.conf "mailhub=mail" "mailhub=smtp.gmail.com:587"

if line_exists_in /etc/ssmtp/ssmtp.conf "# Responsible for encryption"
then
   echo "Do not need to update /etc/ssmtp/ssmtp.conf"
else 
   echo "Add the lines"
cat >> /etc/ssmtp/ssmtp.conf <<EOF
AuthUser=$USERNAME@gmail.com
AuthPass=$PASSWORD
# Responsible for encryption
UseSTARTTLS=YES
UseTLS=YES

EOF
fi

chmod 777 /var/www/html/Paulware/GmailConfig.py

echo "class GmailConfig():" > /var/www/html/Paulware/GmailConfig.py
echo "   def __init__ (self):" >> /var/www/html/Paulware/GmailConfig.py
echo "      self.login ='$USERNAME'" >> /var/www/html/Paulware/GmailConfig.py
echo "      self.password = '$PASSWORD'" >> /var/www/html/Paulware/GmailConfig.py

echo "To test this update try the command:"
echo "echo \"Hello inbox\" | mail -s \"Test\" emailAddress@hotmail.com"
