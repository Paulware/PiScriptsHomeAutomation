# PiScriptsHomeAutomation
These scripts are used to configure a Raspberry Pi 
as a home automation server. <i>Configuration instructions:</i>

  <ul>
  <li>Place the latest raspbian image from <a href="https://www.raspberrypi.org/downloads/raspbian/">https://www.raspberrypi.org/downloads/raspbian/</a></li>
  <li>Next place .img on a 8gb or larger sd card (I use win32diskimager for this)</li>
  <li>Place all the files here to the sd card (this is considered the /boot directory on the pi).  Any windows machine can be used for this as the sd card has a small amount of space which is windows compatible.</li>
  <li>Bootup the raspberry pi,  open a line terminal and execute these commands:
  
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
Note: If you prefer an open network for sensors, run: 
<pre>
./openAp.sh
</pre>

After ./all.sh was run.  This will create a "vehicle1" ssid with no password.<br>
<p>
<h2>Description of .sh files</h2>
<table border="2px">
<tr><th>Name</th><th>Description</th></tr>
<tr><td>all.sh</td><td>Run all the .sh files.  Check that user is super user and parameter contains gmail info</td></tr>
<tr><td>ap.sh</td><td>Create an acccess point with SSID="vehicle1" and password="ABCD1234"</td></tr>
</table>  

email:paulware@hotmail.com  
  
  
  