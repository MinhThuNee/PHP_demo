<?php
class UserModel {
    public $con;

    public function __construct(){
        require_once('./Models/DB.php');
        $db = new DB();
        $this->con = $db->con;
    }

    public function login($us, $pa){
        $sql = "SELECT * FROM khachhang1 WHERE username LIKE N'$us' AND matkhau = '$pa'";
        echo $sql;
        $data = $this->con->prepare($sql);
        $data->execute();
        $user = $data->fetchAll();
        if(sizeof($user) == 1){
            return true;
        }
        return false;
    }
}