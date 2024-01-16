<?php
$controller = 'HomeController';
$action = 'index';
if(isset($_GET['c']) && !empty($_GET['c'])){
    //Controller
    $controller = $_GET['c'] . 'Controller';
    //Action
    if(isset($_GET['a']) && !empty($_GET['a'])){
        $action = $_GET['a'];
    }
}
require_once("./Controllers/BaseController.php");
require_once("./Controllers/$controller.php");
$c = new $controller();
$c->$action();
