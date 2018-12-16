# return true if file found
file_exists() {
   if [ -e $1 ]
   then
       # file found 
       return 0
   else
       return 1
   fi
}

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

# note: When ssd card is flashed /cmdline.txt will have a value for boot which matches drive
if line_exists_in /boot/config.txt "program_usb_timeout=1"
then
  echo "program_usb_timeout=1 found in /boot/config.txt"
else
  echo "Adding program_usb_timeout=1 to /boot/config"
  echo "program_usb_timeout=1" >> /boot/config.txt
fi

