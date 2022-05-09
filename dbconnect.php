<?php

$db = mysqli_connect("us-cdbr-east-05.cleardb.net","b795d184aaff5e","df718e4c","heroku_d8c09691a4dcc03");

// Check connection
   if ($db->connect_error) {
      die("Connection failed: " . $db->connect_error);
      echo "Unsuccessful connection";
}
   else
//Display results
   echo "Connected successfully". "<br>";
?>