<?php
	
	if (isset($_GET['action']) && $_GET['action'] != '') {
		$query  = "SELECT * FROM news";
		$query .= " WHERE id=" . $_GET['action'];
		$result = @mysqli_query($MySQL, $query);
        $row = @mysqli_fetch_array($result);
        

        print '<article class="individual-article">';
        print '<p class="article-date">' . $row['date'] . '</p>';
        print '<h1>' . $row['title'] . '</h1>';
        print '<h2>' . $row['details'] . '</h2>';
        $imagesQuery = "SELECT * FROM news_pictures WHERE news_id = " . $row['id'];
        $imagesResult = @mysqli_query($MySQL, $imagesQuery);
        while($imageRow = @mysqli_fetch_array($imagesResult)) {
            print '<figure>';
            print '<a href="../assets'. $imageRow['path'] . '">';
            print '<img src="../assets/' .  $imageRow['path'] . '"alt="news photo"></a>';
            print '<figcaption>' . $imageRow['figcaption'] . '</figcaption>';
            print '</figure>';
        }
        print $row['text'];
        print '</article><a href="index.php?menu=2">Back to news</a>';

	}
	else {
		$query  = "SELECT * FROM news";
        $result = @mysqli_query($MySQL, $query);
        
        print '<main>
        <h1>NEWS</h1>
        <div class="article-list">';


		while($row = @mysqli_fetch_array($result)) {
			print '
            <div class="article-preview">';

            $imagesQuery = "SELECT * FROM news_pictures WHERE news_id = " . $row['id'] . " LIMIT 1";
            $imagesResult = @mysqli_query($MySQL, $imagesQuery);
            while($imageRow = @mysqli_fetch_array($imagesResult)) {
                print('<img src="assets/' . $imageRow['path'] . '" alt="news image preview">');
            }
            print '<a href="index.php?menu=2&amp;action=' . $row['id'] . '"><h3>' . $row['title'] . '</h3></a>';
            print '<p>' . $row['details'] . '</p>';
            print '<p class="article-date">' .$row['date'] . '</p>';
            print '</div>';
        }
        
        print '        </div>
        </main>';
	}
?>