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

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get -y install apache2
apt-get -y install libapache2-mod-php7* php7.0-cli php7.0-mysql
service apache2 restart
