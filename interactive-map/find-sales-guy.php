<?php
/*
    PHP script to find sales guy information when region is click
*/

if( !empty($_POST)) {
    //Database Details - These would go in a seperate file
    $host = '127.0.0.1';
    $dbname = 'interactive-map';
    $user = 'root';
    $pass = 'root';


    //PDO Try statement
    try {   
        # MySQL with PDO_MYSQL
        $DBH = new PDO("mysql:host=$host;dbname=$dbname", $user, $pass);

        $DBH->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );

        //SQL to use
        $sql = "SELECT * FROM sales WHERE region = :name";

        //Prepared Statement
        $STH = $DBH->prepare($sql);

        //Name of clicked Region
        $name = $_POST['region'];

        //Bind name to name in SQL
        $STH->bindParam(':name', $name, PDO::PARAM_STR); 

        //set PDO::FETCH_ASSOC
        $STH->setFetchMode(PDO::FETCH_ASSOC);

        //Execute Query
        $STH->execute();

        //Out Put Results
        while($row = $STH->fetch()) {
            echo $row['first_name'] . "\n";
            echo $row['last_name'] . "\n";
            echo $row['mobile_number'] . "\n";
            echo $row['region'] . "\n";
            echo $row['email'] . "\n";
            echo $row['profile_pic'] . "\n";
        }

        # close the connection
        $DBH = null;
    
    }

    //PDO catch statement
    catch(PDOException $e) {
        echo $e->getMessage();
        file_put_contents('PDOErrors.txt', $e->getMessage(), FILE_APPEND);
    }
}

?>