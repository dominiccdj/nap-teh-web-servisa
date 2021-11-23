<?php
	session_start();
	
	unset($_POST);
	unset($_SESSION['user']);

    $_SESSION['user']['valid'] = 'false';
    $_SESSION['message'] = '<p>Logout successful!</p>';
	
	header("Location: index.php?menu=1");
