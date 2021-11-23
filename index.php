<?php
session_start();

include ("db.php");

if(!isset($_POST['_action_']))  { $_POST['_action_'] = FALSE;  }

print '
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NTPWS Dominik J</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
';
include("nav.php");

if (isset($_SESSION['message'])) {
    print $_SESSION['message'];
    unset($_SESSION['message']);
}

if (!isset($_GET['menu']) || $_GET['menu'] == 1) { include("home.php"); }
	
else if ($_GET['menu'] == 2) { include("news.php"); }

else if ($_GET['menu'] == 3) { include("contact.php"); }

else if ($_GET['menu'] == 4) { include("about.php"); }

else if ($_GET['menu'] == 5) { include("gallery.php"); }

else if ($_GET['menu'] == 6) { include("registration.php"); }

else if ($_GET['menu'] == 7) { include("login.php"); }

else if ($_GET['menu'] == 8) { include("admin.php"); }

print '
<footer>
Copyright Dominik Jurkovic
<a href="https://github.com/dominiccdj/ntpws">
    <img src="assets/github.png" alt="github logo footer">
</a>

</footer>

</body>

</html>
';