<?php
/*
    PHP script to find sales guy information when region is click
*/

//Database Details
$host = '127.0.0.1';
$dbname = 'interactive-map';
$user = 'root';
$pass = 'root'


//PDO Try statement
try {   
    # MySQL with PDO_MYSQL
    $DBH = new PDO("mysql:host=$host;dbname=$dbname", $user, $pass);

    $DBH->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );

    //Prepared Statement
    $STH = $DBH->query("SELECT * FROM sales WHERE region (:name)");

    $name = "Scotland";

    $STH->bindParam(':name', $name);

    //set PDO::FETCH_ASSOC
    $STH->setFetchMode(PDO::FETCH_ASSOC);

    $STH->execute();
   
}

//PDO catch statement
catch(PDOException $e) {
    echo $e->getMessage();
    file_put_contents('PDOErrors.txt', $e->getMessage(), FILE_APPEND);
}



?>