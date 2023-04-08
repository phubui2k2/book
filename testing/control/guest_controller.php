<?php
    include_once('base_controller.php');
    class guestController extends baseController {
        //display home page UI for guest
        function home_page() {
            $this->render("View/html/UI_guest/home_page");
        }

        //display login UI for guest
        function login() {
            $this->render("View\html\UI_guest\login");
        }

        //display login UI for manager
        function login_manager() {
            $this->render("View\html\UI_guest\login_manager");
        }

        //display signup UI
        function signup() {
            $this->render('View\html\UI_guest\signup');
        }

    }
?>