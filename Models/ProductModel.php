<?php
class ProductModel {
    public $con;

    public function __construct(){
        require_once('./Models/DB.php');
        $db = new DB();
        $this->con = $db->con;
    }

    public function GetProduct($id, $pagesize, $offset){
       
        $sql = "SELECT * FROM hanghoa LIMIT $pagesize OFFSET $offset";
        if(strlen($id) > 0)
            $sql = "SELECT * FROM hanghoa WHERE menu_id = (SELECT idmenu FROM menu WHERE slug like '$id') LIMIT $pagesize OFFSET $offset";
        $data = $this->con->prepare($sql);
        $data->execute();
        $product = $data->fetchAll();
        return $product;
    }
    public function tongSoTrang($id, $pagesize){
        $sql = "SELECT * FROM hanghoa";
        if(strlen($id) > 0)
            $sql = "SELECT * FROM hanghoa WHERE menu_id = (SELECT idmenu FROM menu WHERE slug like '$id')";
        $data = $this->con->prepare($sql);
        $data->execute();
        $product = $data->fetchAll();
        $totalProduct = sizeof($product);
        $totalpage = ceil($totalProduct / $pagesize);
        return $totalpage;
    }

    public function GetProductId($id){
        $sql = "SELECT * FROM hanghoa WHERE mahh = $id";
        $data = $this->con->prepare($sql);
        $data->execute();
        $product = $data->fetchAll();
        return $product;
    }
}