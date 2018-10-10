<?php
  include "common.inc";
  include "common.php";
  $username = getParam ( "username");
  $password = getParam ( "password");
?>

<html>
<head> <Title>Update Gmail Configuration</Title>
</head>
<body>
<?php
  $cmd = "python makeGmailConfig.py \"$username\" \"$password\"";
  exec ($cmd);
  echo ( "<h1>CMD:</h1><br>$cmd<BR>\n"); 
?>
<br>
<input type="button" value="back" onclick="window.location.href='configure.php';">
</Body>
</html>