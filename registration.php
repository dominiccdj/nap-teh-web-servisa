<?php

if ($_POST['_action_'] == FALSE) {
    
print '
<h2>Registration</h2>
<form action="" id="registration" name="registration" method="POST" class="contact">
            <input type="hidden" id="_action_" name="_action_" value="TRUE">

            <table style="width:100%;max-width:550px;border:0;" cellpadding="8" cellspacing="0">

                <tr>
                    <td>
                        <label for="firstname">First Name*:</label>
                    </td>
                    <td>
                        <input id="firstname" name="firstname" type="text" required/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="lastname">Last Name*:</label>
                    </td>
                    <td>
                        <input id="lastname" name="lastname" type="text" required/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="email">Email address*:</label>
                    </td>
                    <td>
                        <input id="email" name="email" type="email" required/>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <label for="country">Country:</label>
                    </td>
                    <td>
                    <select name="country" id="country">
				    <option value="">choose</option>';
				        $query  = "SELECT * FROM countries";
				        $result = @mysqli_query($MySQL, $query);
				        while($row = @mysqli_fetch_array($result)) {
					        print '<option value="' . $row['id'] . '">' . $row['country_name'] . '</option>';
				}
			print '
			</select>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="city">City:</label>
                    </td>
                    <td>
                        <input name="city" type="text" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="street">Street:</label>
                    </td>
                    <td>
                        <input name="street" type="text" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="date">Date of birth:</label>
                    </td>
                    <td>
                        <input name="date" type="date" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="password">Password:</label>
                    </td>
                    <td>
                        <input name="password" type="password" />
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <input name="Submit" type="submit" value="Submit" />
                    </td>
                </tr>
            </table>
        </form>';
}

else if ($_POST['_action_'] == TRUE) {
    
		$query  = "SELECT * FROM users";
		$query .= " WHERE email='" .  $_POST['email'] . "'";
		$result = @mysqli_query($MySQL, $query);
        $row = @mysqli_fetch_array($result, MYSQLI_ASSOC);
        		
		if ($row['email'] == '') {
			
			$pass_hash = password_hash($_POST['password'], PASSWORD_DEFAULT, ['cost' => 12]);
			
			$query  = "INSERT INTO users (name, lastname, email, country_id, city, street, date, password_hash, role)";
			$query .= " VALUES ('" . $_POST['firstname'] . "', '" . $_POST['lastname'] . "', '" . $_POST['email'] . "', '" . $_POST['country'] . "', '" .  $_POST['city'] . "', '" .  $_POST['street'] . "', '" .  $_POST['date'] . "', '" . $pass_hash . "', '" .  "USER" . "')";
			$result = @mysqli_query($MySQL, $query);
			
			echo '<p>' . $_POST['firstname'] . ' ' .  $_POST['lastname'] . ', thank you for registration </p>
			<hr>';
		}
		else {
			echo '<p>User with this email already exist!</p>';
		}
}
