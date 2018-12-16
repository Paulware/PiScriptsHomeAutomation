# Note: run this with the command: sudo ./all.sh
if [[ "$EUID" -ne 0 ]]
then
 echo "Must be root, use sudo bash first"
 exit
fi

if [[ "$#" -ne 2 ]]
then
   echo "Usage: sudo ./all.sh username password"
   echo "Note: do not add @gmail to your username or use quotation marks"
   exit
fi

USERNAME=$1
PASSWORD=$2

echo "apt-get update"
apt-get update -y
#echo "apt-get upgrade"
#apt-get upgrade -y
./keyboard.sh
./timezone.sh
./ssh.sh
./crontab.sh
./mysql.sh
./apache2Php7.sh
#./ap.sh
./createUser.sh
./createTables.sh
./sendMail.sh $USERNAME $PASSWORD
echo "Please reboot your system"
