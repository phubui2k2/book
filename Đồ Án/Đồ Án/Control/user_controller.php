<?php
    include_once("base_controller.php");
    class user_controller extends base_controller {
        function home_page() {
            $this->render('view/html/UI_user/home_page');
        }
        function login() {
            //if user has filled login form
            if (isset($_POST['username']) && isset($_POST['password'])) {
                
                include_once('model/customer_db.php');
                
                //check login infomation, get login error
                $checkLogin = check_login($_POST['username'], $_POST['password']);

                //if login infomation not correct, redirect to login page with error code
                if ($checkLogin!='good') {
                    $data = array('loginErr' => $checkLogin);
                    $this->render('view/html/UI_guest/login', $data);
                }
                //login infomation correct => go to home page for user
                else {
                    header('Location: index.php?controller=user&action=home_page_user');
                }
            }
            else {
                //if not filled form yet
                $data = array('loginErr' => 'first');
                $this->render('view/html/UI_guest/login', $data);
            }
        }

        //register form

        function signup() {
            //include model
            include_once('model/customer_db.php');
            if (isset($_POST['firstName']) && isset($_POST['lastName']) &&
                isset($_POST['phone']) && isset($_POST['email']) &&
                isset($_POST['password']) && isset($_POST['password2'])){     
                    //get error code 
                    $errArr = check_signup($_POST['firstName'], $_POST['lastName'],
                                $_POST['phone'], $_POST['email'], 
                                $_POST['password'], $_POST['password2']);
                    extract($errArr);
                    //if all information are good=> start session
                    //save user info and go to home page for user
                    if($firstNameErr == 'good' && $lastNameErr == 'good' &&
                       $phoneErr == 'good' && $emailErr == 'good' && 
                       $passwordErr == 'good' && $password2Err == 'good') {
                            addCustomer($_POST['firstName'], $_POST['lastName'],
                                        $_POST['phone'], $_POST['email'], 
                                        $_POST['password']);
                            session_start();
                            $_SESSION['phone'] = $_POST['phone'];
                            header("Location: index.php?controller=user&action=home_page_user");
                       }
                       //if have error, go back to signup page and display warning
                    else $this->render('view/html/UI_guest/signup', $errArr);
            }
            else {
                $errArr = array('firstNameErr' => 'first',
                'lastNameErr' => 'first',
                'phoneErr' => 'first',
                'emailErr' => 'first',
                'passwordErr' => 'first',
                'password2Err' => 'first');
                $this->render('view/html/UI_guest/signup', $errArr);
            }
        }
        
        function logout() {
            session_start();
            session_destroy();
            header("Location: index.php?controller=guest&action=home_page");
        }
    }
?>