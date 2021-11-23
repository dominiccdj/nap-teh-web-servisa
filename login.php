<?php

if ($_POST['_action_'] == FALSE) {

    print '
<h2>Login</h2>
<form action="" id="login" name="login" method="POST" class="contact">
            <input type="hidden" id="_action_" name="_action_" value="TRUE">

            <table style="width:100%;max-width:550px;border:0;" cellpadding="8" cellspacing="0">

                <tr>
                    <td>
                        <label for="email">Email address*:</label>
                    </td>
                    <td>
                        <input id="email" name="email" type="email" required/>
                    </td>
                </tr>
                

                    <td>
                        <label for="password">Password:</label>
                    </td>
                    <td>
                        <input id="password" name="password" type="password" />
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <input name="Submit" type="submit" value="Submit" />
                    </td>
                </tr>
            </table>
        </form>';
} else if ($_POST['_action_'] == TRUE) {
    $query  = "SELECT * FROM users";
    $query .= " WHERE email='" .  $_POST['email'] . "'";
    $result = @mysqli_query($MySQL, $query);
    $row = @mysqli_fetch_array($result, MYSQLI_ASSOC);

    if ($row['valid'] == 0) {
        unset($_SESSION['user']);
        echo '<p>User has to be approved by administrator before logging in! <a href="index.php?menu=7">Retry</a> </p>';
    }
    else {
        if (password_verify($_POST['password'], $row['password_hash'])) {
            $_SESSION['user']['valid'] = 'true';
            $_SESSION['user']['id'] = $row['id'];
            $_SESSION['user']['role'] = $row['role'];
            $_SESSION['message'] = '<p>Login successful!</p>';
            header("Location: index.php?menu=1");
        }
    
        # Bad username or password
        else {
            unset($_SESSION['user']);
            echo '<p>Wrong email or password! <a href="index.php?menu=7">Retry</a> </p>';
        }
    }

   
}
