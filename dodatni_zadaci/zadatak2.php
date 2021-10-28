<!DOCTYPE html>
<html>
<body>

<?php
$number1 = 2;
$number2 = 5;
$operator = "+";

switch ($operator) {
  case "+":
    echo $number1 . " + " . $number2 . " = " . ($number1+$number2);
    break;
  case "-":
    echo $number1 . " - " . $number2 . " = " . ($number1-$number2);
    break;
  case "*":
    echo $number1 . " * " . $number2 . " = " . ($number1*$number2);
    break;
  case "/":
    echo $number1 . " / " . $number2 . " = " . ($number1/$number2);
    break;
  default:
    echo "Nepodrzan operator " . $operator;
}
?>
 
</body>
</html>
