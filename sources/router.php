<?php 
    if(!defined("_source")) exit();

    if($motty == "") {
        include _source."home".(!empty($visiton) ? $visiton : "").".php";
    }
    else if(isset($slug_step) && $slug_step == "0"){
        include "step/1a.php";
    }
    else if(!empty($arr_running) && !empty($thongtin_step['step']) && $thongtin_step['step'] != ''){
        if($slug_table     == "baiviet"){
            include "step/".$thongtin_step['step']."a.php";
            if(empty($_SESSION['viewbv'][$arr_running['id']])) {
                DB_que("UPDATE `#_baiviet` SET `soluotxem` = `soluotxem` + 1 WHERE `id` = '".$arr_running['id']."' LIMIT 1");
                $_SESSION['viewbv'][$arr_running['id']] = 1;
            }

        }
        else
            include "step/".$thongtin_step['step'].".php";
    }
    
    else {
        $motty = "404";
        include "step/1a.php";
    }
?>