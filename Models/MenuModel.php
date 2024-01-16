<?php

class MenuModel{
    public $con;

    public function __construct(){
        require_once('./Models/DB.php');
        $db = new DB();
        $this->con = $db->con;
    }

    public function GetMenu($id){
        $sql = "SELECT * FROM menu WHERE parent_id = $id ORDER BY STT DESC";
        $db = $this->con->prepare($sql);
        $db->execute();
        $menu = $db->fetchAll();
        return $menu;
    }
}