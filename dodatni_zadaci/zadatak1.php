<!DOCTYPE html>
<html>
<body>

<?php
$input = 5;
$random = rand(1, 9);

if ($input == $random) {
  echo "Broj " . $input . " je pogoden!";
} else {
  echo "Broj nije pogoden, random broj je " . $random . " !";
}
?>
 
</body>
</html>
