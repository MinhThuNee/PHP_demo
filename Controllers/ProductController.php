<?php

class ProductController extends BaseController {

    private $ProductModel;
    //http://localhost/php2/index.php?c=product&a=category&id=giay
    public function __construct(){
        require_once('./Models/ProductModel.php');
        $this->ProductModel = new ProductModel();
    }

    public function category(){
        $id = NULL;
        $page = 1;
        if(isset($_GET['id']))
            $id = $_GET['id'];
        if(isset($_GET['page']))
            $page = $_GET['page'];
        $pagesize = 4;
        $offset = ($page - 1) *  $pagesize;
        $data = $this->ProductModel->GetProduct($id, $pagesize, $offset);
        $tongSoTrang = $this->ProductModel->tongSoTrang($id, $pagesize);
        $this->view('layout.fontend.main', 'fontend.product.category', ['product' => $data, 'totalPage' => $tongSoTrang, 'cPage' => $page]);
    }

    public function detail(){
        if(isset($_GET['id'])){
            $id = $_GET['id'];
            $p = $this->ProductModel->GetProductId($id);
            if(sizeof($p) < 0)
                $this->view('layout.fontend.pageerror','');
            $this->view('layout.fontend.main', 'fontend.product.detail', ['p' => $p]);
        }
        else {
            //Hiển thị lỗi
            $this->view('layout.fontend.pageerror','');
        }
    }
    
}