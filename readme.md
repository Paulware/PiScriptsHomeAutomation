# PiScriptsHomeAutomation
These scripts are used to configure a Raspberry Pi 
as a home automation server. <br><h2><i>Configuration instructions:</i></h2>

  <ul>
  <li>Obtain the latest raspbian image from <a href="https://www.raspberrypi.org/downloads/raspbian/">https://www.raspberrypi.org/downloads/raspbian/</a></li>
  <li>Place the raspbian .img file on a 8gb (or larger) sd card (I use win32diskimager for this)</li>
  <li>Place all the files and directory from this repository on the sd card (this will be considered the /boot directory on the pi).  Any windows machine can be used for this as the sd card has a small amount of space which is windows compatible.</li>
  <li>Bootup the raspberry pi, open a line terminal and execute these commands:
  
  <pre>
  sudo bash
  cd /boot
  chmod 777 all.sh
  ./all.sh gmailUsername gmailPassword
  </pre>
  
  Where gmailUsername is your gmail user name, and gmailPassword is your gmail
  password.  Do not use @gmail.com in the username, and do not use any " quotation
  marks in the name or password.
  </li>
  </ul>
<p>
<h2>Description of .sh files</h2>
<table border="2px">
<tr><th>Name</th><th>Description</th></tr>
<tr><td>all.sh</td><td>Run all the .sh files.  Check that user is super user and parameter contains gmail info</td></tr>
<tr><td>ap.sh</td><td>(No longer used because pi should be connected to home router) Create an acccess point with SSID="vehicle1" and password="ABCD1234"</td></tr>
<tr><td>apache2Php7.sh</td><td>Install an apache web server and php7</td></tr>
<tr><td>createTables.sh</td><td>Create database tables that are used by the apache web server</td></tr>
<tr><td>createUser.sh</td><td>Create a user for the mysql database</td></tr>
<tr><td>crontab.sh</td><td>Setup the crontab which will run a task every minute</td></tr>
<tr><td>keyboard.sh</td><td>Configure the usb keyboard for US keys</td></tr>
<tr><td>mysql.sh</td><td>Install mysql</td></tr>
<tr><td>openAp.sh</td><td>(No longer used because pi should be connected to home router) Change the network to an open network (no password).  <i>This is not required</i></td></tr>
<tr><td>sendMail.sh</td><td>Add the ability of the pi to send an email.  A current gmail username and password is required</td></tr>
<tr><td>ssd.sh</td><td>Optional setup of ssd drive.</td></tr>
<tr><td>ssh.sh</td><td>Setup the pi for ssh access</td></tr>
<tr><td>timezone.sh</td><td>Set the pi's current timezone to match the user's locations</td></tr>
</table>  

email:paulware@hotmail.com  
  
  
  