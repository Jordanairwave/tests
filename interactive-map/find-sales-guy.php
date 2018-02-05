<?php
/*
    PHP script to find sales guy information when region is click
*/

if( !empty($_POST)) {
    //Database Details
    include 'db.php';


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

        $result = array();

        //Out Put Results
        while($row = $STH->fetch()) {
            $result['firstName'] = $row['first_name'];
            $result['lastName'] = $row['last_name'];
            $result['mobileNumber'] = $row['mobile_number'];
            $result['region'] = $row['region'];
            $result['email'] = $row['email'];
            $result['pic'] = $row['profile_pic'];
        }

        echo json_encode( $result );

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