<?php
    include_once('base_controller.php');
    class guest_controller extends base_controller{
        function home_page() {
            $this->render("view/html/UI_guest/home_page");
        }
        function login(){
            $this->render("view\html\UI_guest\login");
        }
        function login_manager(){
            $this->render("view\html\UI_guest\login_manager");
        }
        function signup(){
            $this->render("view\html\UI_guest\signup");
        }
    }
?>