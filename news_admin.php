<?php


if ($_SESSION['user']['role'] == 'ADMIN') {
    if ($_POST['_action_'] == FALSE) {

        print '
        <h2>Add new news</h2>
        <form action="" id="news" name="news" method="POST" class="contact">
                    <input type="hidden" id="_action_" name="_action_" value="TRUE">
        
                    <table style="width:100%;max-width:550px;border:0;" cellpadding="8" cellspacing="0">
        
                        <tr>
                            <td>
                                <label for="title">Title*:</label>
                            </td>
                            <td>
                                <input id="title" name="title" type="text" required/>
                            </td>
                        </tr>
        
                        <tr>
                            <td>
                                <label for="details">Details*:</label>
                            </td>
                            <td>
                                <input id="details" name="details" type="text" required/>
                            </td>
                        </tr>
        
                        <tr>
                            <td>
                                <label for="text">Text*:</label>
                            </td>
                            <td>
                                <textarea id="text" name="text" rows="7" cols="40"></textarea>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                <label for="date">Date:(uses current date)</label>
                            </td>
                            <td>
                                <input name="date" type="date" disabled />
                            </td>
                        </tr>

                                                
                        <tr>
                            <td>
                                <label for="image">Image:</label>
                            </td>
                            <td>
                                <input id="image" name="image" type="file" />
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


            $query  = "INSERT INTO news (title, details, text, date)";
            $query .= " VALUES ('" . $_POST['title'] . "', '" . $_POST['details'] . "', '" . $_POST['text'] . "', CURDATE() )";
            $result = @mysqli_query($MySQL, $query);

            header("Location: index.php?menu=2");
        
    }
} else {
    print '<h2>No permission to view this page</h2>';
}
