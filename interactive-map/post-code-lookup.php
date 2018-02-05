<?php
/*
    Find region from postcode from
*/
    //Database Details
    include 'db.php';

    //GL50 3AH
    $postcode = $_POST['postCode'];
    //$postcode = 'GL50 3AH';
    //$postcode = 'W6 9JU';

    //Postcode Substring 
    $postcode_substring = substr($postcode, 0, 2);

    //Only get the ladders from the first two characters
    $postcodeLetters = preg_replace('/[^a-zA-Z]+/', '', $postcode_substring);

    //PDO Try statement
    try {   
        # MySQL with PDO_MYSQL
        $DBH = new PDO("mysql:host=$host;dbname=$dbname", $user, $pass);

        $DBH->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );

        //SQL to use
        $sql = "SELECT * FROM postcodes WHERE postcode = :code";

        //Prepared Statement
        $STH = $DBH->prepare($sql);

        //Bind name to name in SQL
        $STH->bindParam(':code', $postcodeLetters, PDO::PARAM_STR);

        //set PDO::FETCH_ASSOC
        $STH->setFetchMode(PDO::FETCH_ASSOC);

        //Execute Query
        $STH->execute();

        //Out Put Results
        while($row = $STH->fetch()) {
            $name = $row['region'];
        }

        //SQL to use to find sales
        $sql2 = "SELECT * FROM sales WHERE region = :name";

        //Prepared Statement
        $STH2 = $DBH->prepare($sql2);

        //Bind name to name in SQL
        $STH2->bindParam(':name', $name, PDO::PARAM_STR); 

        //set PDO::FETCH_ASSOC
        $STH2->setFetchMode(PDO::FETCH_ASSOC);

        //Execute Query
        $STH2->execute();

        $result = array();

        //Out Put Results
        while($row2 = $STH2->fetch()) {
            $result['firstName'] = $row2['first_name'];
            $result['lastName'] = $row2['last_name'];
            $result['mobileNumber'] = $row2['mobile_number'];
            $result['region'] = $row2['region'];
            $result['email'] = $row2['email'];
            $result['pic'] = $row2['profile_pic'];
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
?>