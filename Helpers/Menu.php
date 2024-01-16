<?php

class Menu{

    public static function MenuHtml(){
        require_once('./Models/MenuModel.php');
        $data = new MenuModel();
        $menutop = $data->GetMenu(0);
        $html = "<ul>";
        foreach($menutop as $i){
            $menuchild = $data->GetMenu($i['idmenu']);
            if(sizeof($menuchild) > 0){
                //Có menu con
                $html .= "<li class='has-dropdown'>";
                    $html .= "<a href='".$i['link']."&id=".$i['slug']."'> " . $i['name'] . " </a>";
                    $html .= "<ul class='dropdown'>";
                        foreach($menuchild as $ii):
                            $html .= "<li><a href='".$ii['link']."&id=".$ii['slug']."'>".$ii['name']."</a></li>";
                        endforeach;
                    $html .= "</ul>";
                $html .= "</li>";    
            }
            else
                $html .= "<li><a href='".$i['link']."'>" . $i['name'] . "</a></li>";
        }
        $html .= "</ul>";
        return $html;   
    }
}