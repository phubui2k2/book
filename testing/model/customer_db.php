<?php
    function checkLogin($phone, $password) {
        require('model/db.php');
        if (empty($phone)  && empty($password )) return 'missingBoth';
        if (empty($phone) ) return 'missingPhone';
        if (empty($password ) ) return 'missingPassword';
        //search for email in database
        $sql = "SELECT * FROM customers WHERE phone = ?";
        $stmt = mysqli_stmt_init($con);
        if (!mysqli_stmt_prepare($stmt, $sql)) {
            return false;
        }
        else {
            mysqli_stmt_bind_param($stmt, "s",$phone );
            mysqli_stmt_execute($stmt);

            $result = mysqli_stmt_get_result($stmt);
           

            if ($row = mysqli_fetch_assoc($result)) {

                $passwordCheck = password_verify($password, $row['password']);
            
                if  ($passwordCheck) {
                    session_start();
                    $_SESSION['phone'] = $row['phone'];
                    $_SESSION['name'] = $row['name'];
                   return true;

                }
                else return false;
                
            }
        }
        return true;
      
    }

    function checkSignUp($firstName, $lastName,$phone, $email, $password, $password2) {
        //check first name
        if (strlen($firstName) < 2 || strlen($firstName) > 30) $firstNameErr = 'length';
        else $firstNameErr = 'good';

        //check last name
        if (strlen($lastName) < 2 || strlen($lastName) > 30) $lastNameErr = 'length';
        else $lastNameErr = 'good'; 

        //check phone

        include('model/db.php');

        if (strlen($phone) == 0) $phoneErr='missing';
        else {
            $searchPhone = "SELECT * FROM customers WHERE phone = '$phone'";
            $resultPhone = mysqli_query($con, $searchPhone);
            if (mysqli_num_rows($resultPhone) != 0) $phoneErr = 'hasUsed';
            else $phoneErr = 'good';
        }

        //check email
        if (strlen($email) == 0) $emailErr='missing';
        else {
            $searchEmail = "SELECT * FROM customers WHERE email = '$email'";
            $resultEmail = mysqli_query($con, $searchEmail);
            if (mysqli_num_rows($resultEmail) != 0) $emailErr = 'hasUsed';
            else $emailErr = 'good';
        }

        //check password
        if (strlen($password) < 8 || strlen($password) > 16) $passwordErr = 'length';
        else $passwordErr = 'good';

        //check password 2
        if ($password != $password2) $password2Err = 'matching';
        else $password2Err = 'good';

        $errArr = array('firstNameErr' => $firstNameErr,
                        'lastNameErr' => $lastNameErr,
                        'phoneErr' => $phoneErr,
                        'emailErr' => $emailErr,
                        'passwordErr' => $passwordErr,
                        'password2Err' => $password2Err);
        return $errArr;
    }
    function getCustomerByPhone($phone) {
        require('model/db.php');
        $searchPhone = "SELECT * FROM customers WHERE phone = '$phone'";
        $resultPhone = mysqli_query($con, $searchPhone);
        return json_encode(mysqli_fetch_object($resultPhone));
        
    }
    function addCustomer($firstName, $lastName,$phone, $email, $password) {
        //add customer to database
        require("model/db.php");
        $fullName = $firstName . ' ' . $lastName;
        $sql = "INSERT INTO customers (name, password, email, phone)
                    Value (?, ? , ? , ?);";
        $stmt = mysqli_stmt_init($con);
        if(!mysqli_stmt_prepare($stmt,$sql)) {
            // header("Location: 'index.php?controller=user&action=signup?error=sql'");
            return false;
        }
        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
        mysqli_stmt_bind_param($stmt, "ssss", $fullName, $hashedPassword , $email, $phone);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_close($stmt);


        // header("Location: index.php?controller=user&action=signup?signup=success");

        return true;
        //  $result = mysqli_query($con, $addInfo);
    }
    
    function getName($phone) {
        require('model/db.php');
        $searchPhone = "SELECT * FROM customers WHERE phone = '$phone'";
        $resultPhone = mysqli_query($con, $searchPhone);
        if (mysqli_num_rows($resultPhone) == 0) return "Undefinded";
        $phoneObj = mysqli_fetch_object($resultPhone);
        return $phoneObj->name;
    }
    
?>