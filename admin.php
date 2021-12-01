<style>
    /* Iz nekog razloga, ne zeli mi ovdje povuci style.css */
    .admin-table {
        border: solid 1px #AAA;
        border-collapse: collapse;
        border-spacing: 0;
        font: normal 13px Arial, sans-serif;
    }

    .admin-table thead th {
        background-color: #DDD;
        border: solid 1px #AAA;
        color: #336B6B;
        padding: 10px;
        text-align: left;
        text-shadow: 1px 1px 1px #fff;
    }

    .admin-table tbody td {
        border: solid 1px #AAA;
        color: #333;
        padding: 10px;
        text-shadow: 1px 1px 1px #fff;
    }
</style>
<?php

echo '<p><a href="index.php?menu=9">News admin page</a></p>';

if ($_SESSION['user']['role'] == 'ADMIN') {


    if (isset($_POST['edit']) && $_POST['_action_'] == 'TRUE') {
        $query  = "UPDATE users SET name='" . $_POST['firstname'] . "', lastname='" . $_POST['lastname'] . "', email='" . $_POST['email'] . "', city='" . $_POST['city'] . "', street='" .  $_POST['street'] . "', country_id='" . $_POST['country'] . "', valid='" . $_POST['valid'] . "', role='" . $_POST['role'] . "'" ;
        $query .= " WHERE id=" . (int)$_POST['edit'];
        $query .= " LIMIT 1";
        $result = @mysqli_query($MySQL, $query);
        @mysqli_close($MySQL);

        $_SESSION['message'] = '<p>User profile updated!</p>';

        header("Location: index.php?menu=8");
    }
    if (isset($_GET['delete']) && $_GET['delete'] != '') {
        $query  = "DELETE FROM users";
        $query .= " WHERE id=" . (int)$_GET['delete'];
        $query .= " LIMIT 1";
        $result = @mysqli_query($MySQL, $query);

        $_SESSION['message'] = '<p>User profile deleted!</p>';

        header("Location: index.php?menu=8");
    }
    if (isset($_GET['edit']) && $_GET['edit'] != '') {
        $query  = "SELECT * FROM users";
        $query .= " WHERE id=" . $_GET['edit'];
        $result = @mysqli_query($MySQL, $query);
        $row = @mysqli_fetch_array($result);
        $valid = false;

        print '
		<h2>Edit user profile</h2>
		<form action="" id="registration_form" name="registration_form" method="POST">
			<input type="hidden" id="_action_" name="_action_" value="TRUE">
			<input type="hidden" id="edit" name="edit" value="' . $_GET['edit'] . '">
			
			<input type="hidden" id="_action_" name="_action_" value="TRUE">

            <table style="width:100%;max-width:550px;border:0;" cellpadding="8" cellspacing="0">

                <tr>
                    <td>
                        <label for="firstname">First Name*:</label>
                    </td>
                    <td>
                        <input id="firstname" name="firstname" type="text" value="' . $row['name'] . '" required/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="lastname">Last Name*:</label>
                    </td>
                    <td>
                        <input id="lastname" name="lastname" type="text" value="' . $row['lastname'] . '" required/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="email">Email address*:</label>
                    </td>
                    <td>
                        <input id="email" name="email" type="email" value="' . $row['email'] . '" required/>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <label for="country">Country:</label>
                    </td>
                    <td>
                    <select name="country" id="country">
				    <option value="">choose</option>';
        $_query  = "SELECT * FROM countries";
        $_result = @mysqli_query($MySQL, $_query);
        while ($_row = @mysqli_fetch_array($_result)) {
            print '<option value="' . $_row['id'] . '" ' ;
            if ($row['country_id'] == $_row['id']) {
                print 'selected';
            }
            print  ' >' . $_row['country_name'] . '</option>';
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
                        <input name="city" type="text" value="' . $row['city'] . '" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="street">Street:</label>
                    </td>
                    <td>
                        <input name="street" type="text" value="' . $row['street'] . '" />
                    </td>
                </tr>

                <tr>
                <td>
                    <label for="role">Role:</label>
                </td>
                <td>
                    <select name="role" id="role">
                        <option value="ADMIN">ADMIN</option>
                        <option value="USER">USER</option>
                        <option value="EDITOR">EDITOR</option>
                    </select>
                </td>
            </tr>

                <tr>
                <td>
                    <label for="valid">Valid:</label><br />
                </td>
                    <td>
                        <input type="radio" name="valid" value="1"'; if($row['valid'] == '1') { echo ' checked="checked"'; $valid = true; } echo ' /> Yes &nbsp;&nbsp;
                        <input type="radio" name="valid" value="0"'; if($valid == false) { echo ' checked="checked"'; } echo ' /> No
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <input name="Submit" type="submit" value="Submit" />
                    </td>
                </tr>
            </table>
			
		</form>
		<p><a href="index.php?menu=8">Back</a></p>';
    } else {
        $query = "SELECT * FROM users";
    $result = @mysqli_query($MySQL, $query);

    echo "
        <h1>Admin page</h1>
        <h2>Users</h2>
        <table class='admin-table'>
        <thead>
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Country</th>
                    <th>City</th>
                    <th>Street</th>
                    <th>Role</th>
                    <th>Valid</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
";

    while ($row = @mysqli_fetch_array($result)) {
        echo "<tr>" .
            "<td>" . $row['id'] . "</td>" .
            "<td>" . $row['name'] . "</td>" .
            "<td>" . $row['lastname'] . "</td>" .
            "<td>" . $row['email'] . "</td>" .
            "<td>";
        $_query  = "SELECT * FROM countries";
        $_query .= " WHERE id='" . $row['country_id'] . "'";
        $_result = @mysqli_query($MySQL, $_query);
        $_row = @mysqli_fetch_array($_result, MYSQLI_ASSOC);
        echo $_row['country_name'] . "</td>" .
            "<td>" . $row['city'] . "</td>" .
            "<td>" . $row['street'] . "</td>" .
            "<td>" . $row['role'] . "</td>" .
            "<td>";
        if ($row['valid'] == 1) {
            echo "Yes";
        } else {
            echo "No";
        }

        echo "</td>" .
            '<td><a href="index.php?menu=8&amp;edit=' . $row['id'] . '">EDIT</a></td>
             <td><a href="index.php?menu=8&amp;delete=' . $row['id'] . '">DELETE</a></td>' .
            "</tr>";
    }

    echo "</tbody></table>";

    }



    
} else {
    print '<h2>No permission to view this page</h2>';
}

?>