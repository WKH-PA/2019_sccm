<?php
  // Update Luot view
  // DB_que("UPDATE `#_baiviet` SET `soluotxem` = `soluotxem` + 1 WHERE `id` = '".$arr_running['id']."' LIMIT 1");
  // Update Luot view

  $kietxuat_name = DB_fet("*", "#_danhmuc", "`showhi` = 1 AND `step` = '".$slug_step."' AND `id` = '".$arr_running['id_parent']."'", "`id` DESC", 1, "arr", 1);
  if(empty($kietxuat_name)) 
    $kietxuat_name = $thongtin_step['tenbaiviet_'.$lang];
  else
    $kietxuat_name = $kietxuat_name[$arr_running['id_parent']]['tenbaiviet_'.$lang];

  // $lay_all_kx = LAYDANHSACH_idkietxuat($arr_running['id_parent'], $slug_step);

  $wh           = "  AND `id` <>  '".$arr_running['id']."'";
  $numview      = 6;
  $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC LIMIT 0,$numview");
  // $nd_total     = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  // $nd_total     = mysql_num_rows($nd_total);
 
  // $anhcon   = LAY_anhstep($thongtin_step['id'], 1);
  $anh_nv   = 'images/user.png';
  $members  = DB_que("SELECT * FROM `#_members` WHERE `id` = '".$arr_running['id_user']."' AND `phanquyen` = 0 LIMIT 1");
  if(mysql_num_rows($members)) {
    $members  = mysql_fetch_assoc($members);
    if($members['icon'] != '') {
      $anh_nv   = 'datafiles/member/'.$members['icon'];
    }
  }

  //add binh luan
  if(isset($_POST['add_binhluan'])) {
    $cont_cmnd  = isset($_POST['cont_cmnd']) ? $_POST['cont_cmnd'] : "";
    $is_key     = isset($_POST['is_key']) ? $_POST['is_key'] : "";
    if($is_key  == $_SESSION['binh_luan'] && $cont_cmnd != "") {
      $data = array();
      $data['id_baiviet']     = $arr_running['id'];
      $data['id_mb']          = $_SESSION['id'];
      $data['noidung_vi']     = LOC_char($cont_cmnd);
      $data['showhi']         = 0;
      $data['ngaydang']       = time();

      $id = ACTION_db($data, "#_baiviet_diendan", 'add', NULL, NULL);
      ALERT_js($glo_lang['binh_luan_cua_ban_da_duoc_gui']);
      LOCATION_js($full_url."/".$motty."/");
      exit();
    }
  }
  //
  

  $members_dang = DB_fet("*","`#_members`","`phanquyen`=0","`id` ASC","","arr",1); 
?>
<div class="conten_left">
  <div class="box_id_home">
    <div class="title_tin_id">
      <h3><?=$kietxuat_name ?></h3>
    </div>
    <div class="faq_online_id">
      <div class="name_left_faq">
        <li><img src="<?=$anh_nv ?>" width="300" height="300" /></li>
        <ul>
          <h3><?=$arr_running['tenbaiviet_vi'] ?></h3>
          <p><?=CONVER_thu(date("l", $arr_running['ngaydang']), $glo_lang) ?>, <?=date('d/m/Y', $arr_running['ngaydang']) ?> - <?=!empty($members_dang[$arr_running['id_user']]['hoten']) ? $members_dang[$arr_running['id_user']]['hoten'] : "Administrator"  ?></p>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="faq_question showText">
        <?=SHOW_text($arr_running['noidung_vi']) ?>
      </div>
      
      <?php 
        $numview                = 10;
        $pzer                   = isset($_GET['page']) && is_numeric($_GET['page']) ? $_GET['page'] : 1;

        $vi_tri                 = PHANTRANG_start($pzer, $numview);
        if ($pzer               == 1 || $pzer == NULL) 
            $pzz                = 0;
        else $pzz               = $pzer * $numview;

        $baiviet_diendan  = DB_que("SELECT * FROM `#_baiviet_diendan` WHERE `showhi` =  1 AND `id_baiviet` = '".$arr_running['id']."' ORDER BY  `id` DESC LIMIT $vi_tri,$numview");

        $nd_total    = DB_que("SELECT * FROM `#_baiviet_diendan` WHERE `showhi` =  1 AND `id_baiviet` = '".$arr_running['id']."'");

        $nd_total        = @mysql_num_rows($nd_total);
        $numshow        = ceil($nd_total / $numview);
        $sotrang        = PHANTRANG_findPages($nd_total, $numview);

        
        while ($rows  = mysql_fetch_assoc($baiviet_diendan)) { 
      ?>
      <div class="traloi_cauhoi">
        <h3><?=!empty($members_dang[$rows['id_mb']]['icon']) && $members_dang[$rows['id_mb']]['icon'] != '' ? '<img src="datafiles/member/'.$members_dang[$rows['id_mb']]['icon'].'">' : '<i class="fa fa-comments-o"></i>' ?> <?=!empty($members_dang[$rows['id_mb']]['hoten']) ? $members_dang[$rows['id_mb']]['hoten'] : "Administrator" ?></h3>
        <div class="showText">
          <?=SHOW_text($rows['noidung_vi']) ?>
        </div>
      </div>
      <?php } ?>

      <div class="nums">
        <ul>
          <?=PHANTRANG($pzer, $sotrang, $full_url."/".$motty, $_SERVER['QUERY_STRING']) ?>
        </ul>
        <div class="clr"></div>
      </div>
      <?php if(!empty($_SESSION['id'])){ ?>
      <div class="bonhluan_cauhoi">
        <form action="" method="post">
          <h3><?=$glo_lang['binh_luan'] ?></h3>
          <ul>
            <div class="col-md-3 row-frm">
              <textarea name="cont_cmnd" class="form-control" placeholder="<?=$glo_lang['noi_dung_binh_luan'] ?>"></textarea>
            </div>      
          </ul>
          <input type="hidden" name="is_key" value="<?=$_SESSION['binh_luan'] = md5(time()) ?>">
          <h4><button name="add_binhluan"><?=$glo_lang['gui_y_kien'] ?></button></h4>
          <div class="clr"></div>
        </form>
      </div>
      <?php } ?>
    </div>
  </div>
  <div class="box_id_home">
    <div class="title_tin_id">
      <h3><?=$glo_lang['bai_viet_lien_quan'] ?></h3>
    </div>
    <div class="dv-baidang-dd">
      <?php 
        $i = 0;
          $members_dang = DB_fet("*","`#_members`","`phanquyen`=0","`id` ASC","","arr",1); 
          while ($rows = mysql_fetch_array($nd_kietxuat)) 
            { 
              $i++;
              $anh_nv   = 'images/user.png';
              if(!empty($members_dang[$rows['id_user']]['icon']) && $members_dang[$rows['id_user']]['icon'] != "") {
                $anh_nv = 'datafiles/member/'.$members_dang[$rows['id_user']]['icon'];
              }
              
      ?>
      <div class="faq_online_id">
        <div class="name_left_faq">
          <li><a href="<?=GET_link($full_url, $rows['seo_name']) ?>"><img src="<?=$anh_nv ?>" width="300" height="300" /></a></li>
          <ul>
            <a href="<?=GET_link($full_url, $rows['seo_name']) ?>"><h3><?=$rows['tenbaiviet_vi'] ?></h3></a>
            <p><?=CONVER_thu(date("l", $rows['ngaydang']), $glo_lang) ?>, <?=date('d/m/Y', $rows['ngaydang']) ?><?=!empty($members_dang[$rows['id_user']]['hoten']) ? $members_dang[$rows['id_user']]['hoten'] : "Administrator"  ?></p>
          </ul>
        </div>
        <div class="clr"></div>
        <div class="faq_question showText"> <a href="<?=GET_link($full_url, $rows['seo_name']) ?>">
          <?=$rows['noidung_vi'] ?>
          </a> </div>
      </div>
      <?php } ?>
    </div>
    
  </div>
</div>
<?php include _source."right_conten.php";?>
<div class="clr"></div>
