<?php
class HomeController extends BaseController{

    public function index(){
        //Đầu tiên là layout, thứ 2 giao diện cần hiển thị
        $this->view('layout.fontend.main', 'fontend.home.index');
    }

    public function taikhoan(){
        if(!isset($_COOKIE['user_login'])) {
            if($_SERVER["REQUEST_METHOD"] == "POST"){
                if(isset($_POST['us'], $_POST['pa'])){
                    $us = $_POST['us'];
                    $pa = $_POST['pa'];
                    require_once('./Models/UserModel.php');
                    $user = new UserModel();
                    $result = $user->login($us, $pa);
                    if($result){
                        $cookie_name = "user_login";
                        setcookie($cookie_name, $us, time() + (86400 * 30), "/");
                        header('Location: http://localhost/php2/index.php');
                    }
                    else{
                        $this->view('layout.fontend.login', '', ['error'=>'Sai tên truy cập hoặc mật khẩu']);
                    }
                }
            }
            $this->view('layout.fontend.login', '');
        }
        else
            header('Location: http://localhost/php2/index.php');
    }
} 