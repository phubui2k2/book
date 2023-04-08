<?php
    include_once('base_controller.php');
    class manager_controller extends base_controller{
        function home_page_manager() {

            session_start();
            if (!isset($_SESSION['phone'])) {
                echo "error";
                exit;
            }
            else
            $this->render('view/html/UI_manager/manager');
        }
        function login() {

            //if user has filled login form
            if (isset($_POST['username']) && isset($_POST['password'])) {
                
                include_once('model/employee_db.php');
                
                //check login infomation
                $checkLoginManager = check_login($_POST['username'], $_POST['password']);

                //if login infomation is admin => go to admin home page
                if ($checkLoginManager=='admin') {
                    session_start();
                    $_SESSION['username'] = $_POST['username'];
                    $_SESSION['is_admin'] = 1;
                    header('Location: index.php?controller=manager&action=home_page_manager');
                }
                //if login infomation is employee => go to home page for employee
                else if ($checkLoginManager=='employee'){
                    session_start();
                    $_SESSION['phone'] = $_POST['phone'];
                    $_SESSION['is_admin'] = 0;
                    header('Location: index.php?controller=employee&action=home_page_employee');
                }
                //if login information is not correct => go to login employee page
                else {
                    $data = array('loginErr' => $checkLoginManager);
                    $this->render('view\html\UI_guest\login_manager', $data);
                }
            }
            else {
                $data = array('loginErr' => 'first');
                $this->render('view/html/UI_guest/login_manager', $data);
            }
        }
        function logout() {
            session_start();
            session_destroy();
            header("Location: index.php?controller=guest&action=home_page");
        }

    }
?>