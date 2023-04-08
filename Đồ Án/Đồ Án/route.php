<?php
    //list of controllers and action
    $controllers = array('guest' => ['home_page', 'login', 'signup', 'menu', 'getDiscount', 'login_manager'],
                         'user' => ['home_page_user', 'signup', 'login', 'logout'],
                         'manager' => ['home_page_manager', 'manage_employee', 'login', 'logout', 'add_employee', 'delete_employee', 'update_employee'],
                         'employee');
    //if controller or action not in above list, go to error page
    if (!array_key_exists($controller, $controllers) || !in_array($action, $controllers[$controller])) {
        $controller = 'user';
        $action = 'error';
    }

    //execute action
    include_once('control/' . $controller . '_controller.php');
    $klass = $controller . '_controller';
    $controller = new $klass;
    $controller->$action();
?>