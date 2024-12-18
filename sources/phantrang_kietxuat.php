<?php 
    // if($thongtin_step['num_view'] == 0)
    //     $numview          = 10;
    // else $numview         = $thongtin_step['num_view'];

    // if($slug_table == 'step'){
    //     $lay_all_kx = LAYDANHSACH_idkietxuat(0, $slug_step);
    // }
    // else{
    //     $lay_all_kx = @LAYDANHSACH_idkietxuat($arr_running['id'], $slug_step);
    // }
 
    $pzer                   = isset($_GET['page']) && is_numeric($_GET['page']) ? $_GET['page'] : 1;

    $vi_tri                 = PHANTRANG_start($pzer, $numview);
    if ($pzer               == 1 || $pzer == NULL) 
        $pzz                = 0;
    else $pzz               = $pzer * $numview;

    if(empty($wh)) $wh = '';
    if(empty($catasort)) $catasort = '';
    $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY $catasort `catasort` DESC, `id` DESC LIMIT $vi_tri,$numview");
 

// echo "SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC, `id` DESC LIMIT $vi_tri,$numview";
    
    $nd_total    = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");

    $nd_total        = @mysql_num_rows($nd_total);
    $numshow        = ceil($nd_total / $numview);
    $sotrang        = PHANTRANG_findPages($nd_total, $numview);

?>