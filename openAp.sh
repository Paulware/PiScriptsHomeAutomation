# see https://www.raspberrypi.org/documentation/configuration/wireless/access-point.md
# for more information
#

if [ "$EUID" -ne 0 ]
	then echo "Must be root"
	exit
fi


cat > /etc/hostapd/hostapd.conf <<EOF
interface=wlan0
ssid=vehicle1
hw_mode=g
channel=7
auth_algs=1
wmm_enabled=0

EOF

echo "after reboot your open ssid: vehicle1 (with no password) should appear"