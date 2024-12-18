<?php

    session_start();
    include("nguoiquanly/config/sql.php");
    include("nguoiquanly/config/function.php");

    define('MOTTY', TRUE);
    define('_source', "sources/");

    $lang_group = array("en", "cn", "jp");
    $lang       = $_SESSION["lang"]   = "vi";
    $full_url   = $fullpath;
    if (in_array($motty, $lang_group)) {
        $lang       = $_SESSION["lang"]   = $motty;
        $full_url   = $fullpath . "/".$motty;
        $motty      = @$haity;
        $haity      = @$baty;
        $baty       = @$bonty;
        $bonty      = @$namty;   
    }

    //define
    $danhsach_define = AOK("*", "`#_clanguage`");
    $glo_lang        = array();
    foreach ($danhsach_define as $rows) {
        $glo_lang[$rows['code_lang']] = $rows['lang_' . $lang];
    }

    //couter
    if (!isset($_SESSION['ttwebsession'])) {
        $_SESSION['ttwebsession'] = md5(uniqid(rand(), true));
    }

    $baygio     = time();
    $timeroff   = 7884000; // 3 thang
    $online_tv  = ONLINE_user(600, $_SESSION['ttwebsession']);
    $thongke_tv = THONGKE_online();
    // end
    $check_slug = AOK("*", "#_slug", "`slug` = '" . $motty . "'", "", 1, "", "where_clear");

    $slug_step  = "";
    $slug_page  = "";
    $slug_table = "";
    $slug_id    = "";

    if (count($check_slug) > 0) {
        $check_slug  = $check_slug[0];
        $slug_step   = $check_slug['step'];
        $slug_table  = $check_slug['bang'];
        $slug_id     = $check_slug['id_bang'];

        $arr_running = AOK("*", "`#_$slug_table`", "`showhi` = 1 AND `seo_name` = '" . $motty . "'", "", 1);
        $arr_running = @$arr_running[0];
    }
    // get page
    if ($slug_step) {
        $thongtin_step = AOK("*", "`#_step`", "`id` = '" . $slug_step . "'", "", 1);
        $thongtin_step = $thongtin_step[0];
    }

    //
    $seo_description    = "";
    $seo_keywords       = "";
    $seo_title          = "";

    $thongtin           = AOK("*", "#_seo", "", "", 1, "", "where_clear");
    $thongtin           = $thongtin[0];
    $seo_description    = $thongtin['seo_description_' . $_SESSION["lang"]];
    $seo_keywords       = $thongtin['seo_keywords_' . $_SESSION["lang"]];
    $seo_title          = $thongtin['seo_title_' . $_SESSION["lang"]];
    if ($thongtin['is_khoasite'] == 1 && empty($_SESSION['luluwebproadmin'])) {
        include _source . 'khoa_site.php';
        exit();
    }

    $seo_image          = "";

    //
    include _source . "post.php";
    //
    if ($motty == "search") {
        $seo_description = $seo_keywords = $seo_title = $glo_lang['tim_kiem'];
    }

    if (!empty($arr_running)) {
        $seo_description = $arr_running['seo_description_' . $_SESSION["lang"]];
        $seo_keywords    = $arr_running['seo_keywords_' . $_SESSION["lang"]];
        $seo_title       = $arr_running['seo_title_' . $_SESSION["lang"]];

        if ($arr_running['icon'] != '') {
            $seo_image   = $fullpath . "/" . $arr_running['duongdantin'] . "/thumb_" . $arr_running['icon'];
        }
    }
    

    //islogin
    if(isset($_GET['login']) && $_GET['login'] == "fb") {
        include "login/fb.php";
        exit();
    }
    if(isset($_GET['login']) && $_GET['login'] == "google") {
        include "login/google.php";
        exit();
    }
    //end login

    include _source . "tren.php";
    include _source . "router.php";
    include _source . "duoi.php";
?>