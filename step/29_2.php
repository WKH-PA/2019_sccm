<?php
   if(!empty($_SESSION['lichkham'])) {
    foreach ($_SESSION['lichkham'] as $key => $value) {
      ${$key} =  $value;
    }
   }
 
?>
<link rel="stylesheet" href="nguoiquanly/css/select2.min.css">
<script src="nguoiquanly/js/select2.full.min.js"></script>
<div class="bg_load_page" style="background-image:url(<?=checkImage($fullpath, $thongtin_step['icon'], $thongtin_step['duongdantin']) ?>)">
</div>
<div class="link_page">
  <div class="pagewrap">
    <ul>
      <h2><?=SHOW_text($arr_running['tenbaiviet_'.$_SESSION['lang']]) ?></h2>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table) ?></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="page_conten_page">
  <div class="pagewrap">
    <form action="" class="formBox no_box" method="post" accept-charset="UTF-8" name="form_dp" id="form_dp">
    <div class="lichkham_page_id" style="width: calc(100% - 20px)">
      <div class="lich_kham_id" >
        <h3><?=$glo_lang['chon_lich_kham_benh'] ?></h3>
        <div class="dv-lich-kham-benh-b2">
          <?php 
            if(empty($_SESSION['lichkham']) || ($_SESSION['lichkham']['phong_kham'] == "" && $_SESSION['lichkham']['bac_si'] == "")) {
              echo $glo_lang['khong_tim_thay_lich_kham']
            
          ?>
          <div class="dv-back">
          <a href="<?=$full_url."/lich-kham-benh/" ?>"><i class="fa fa-undo" aria-hidden="true"></i> <?=$glo_lang['quay_lai'] ?></a></div>
          <?php 
            } else{ 
               // _lichtruc
              $ngay_hen_kham = explode("-", $_SESSION['lichkham']['ngay_hen_kham']);

              $ngay       = $ngay_hen_kham[0];
              $thang      = $ngay_hen_kham[1];
              $nam        = $ngay_hen_kham[2];
              $jd         = cal_to_jd(CAL_GREGORIAN,$thang,$ngay,$nam);
              $tuan       = jddayofweek($jd,0);
              $ngay_time  = mktime(0,0,0,$thang,$ngay,$nam);

              $sel        = $_SESSION['lichkham']['phong_kham'] != "" ? " AND `lt`.`phong_kham` IN (".$_SESSION['lichkham']['phong_kham'].")" : " AND `lt`.`bac_si` IN (".$_SESSION['lichkham']['bac_si'].")";
 
              $lichtruc   = DB_que("SELECT 
                `lt`.`id`  as `id`,
                `lt`.`benh_vien`  as `benh_vien`,
                `lt`.`tenbaiviet_vi`  as `tenbaiviet_vi`,
                `lt`.`tenbaiviet_en`  as `tenbaiviet_en`,
                `lt`.`phong_kham`     as `phong_kham`,
                `lt`.`bac_si`         as `bac_si`,
                `ltdt`.`ngay_truc`    as `ngay_truc`,
                `ltdt`.`gio_truc`     as `gio_truc`,
                `lt`.`giatien`     as `giatien`

               FROM `#_lichtruc` `lt`, `#_lichtruc_detail` `ltdt` WHERE 
                `lt`.`id` = `ltdt`.`id_lichtruc` AND 
                (`ltdt`.`ngay_truc` = '$ngay_time' OR `ltdt`.`ngay_truc` = '$tuan') AND 
                `ltdt`.`showhi` = 1 AND 
                `lt`.`showhi` = 1 AND 
                `lt`.`benh_vien` = '".$_SESSION['lichkham']['benh_vien']."'  $sel ORDER BY `lt`.`ngay_dang` DESC");
              if(!mysql_num_rows($lichtruc)) {
                echo $glo_lang['khong_tim_thay_lich_kham'];
                echo '<div class="dv-back">
                      <a href="'.$full_url."/lich-kham-benh/".'"><i class="fa fa-undo" aria-hidden="true"></i> '.$glo_lang['quay_lai'].'</a></div>';
              }
              else{
          ?>
          <div class="tb_rps">
            <table class="tb-new-repsive " width="100%" border="0" cellspacing="0" cellpadding="5">
              <tr>
                <th class="text-center">STT</th>
                <th><?=$glo_lang['lich_truc'] ?></th>
                <th><?=$glo_lang['benh_vien'] ?></th>
                <th><?=$_SESSION['lichkham']['phong_kham'] != "" ? $glo_lang['phong_kham'] : $glo_lang['bac_si'] ?></th>
                <th class="text-center"><?=$glo_lang['phi_dich_vu'] ?></th>
                <th class="text-center"><?=$glo_lang['ngay_truc'] ?></th>
                <th class="text-center"><?=$glo_lang['chon'] ?></th>
              </tr>
              <?php 
                $i = 0;
                $danhmuc     = DB_arr("SELECT * FROM `#_danhmuc` WHERE `step` = 2 ","id");
                $baiviet     = DB_arr("SELECT * FROM `#_baiviet` WHERE `step` = 2 ","id");

                while ($rows = mysql_fetch_assoc($lichtruc)) { 
                  $i++;
              ?>
              <tr>
                <td class="text-center"><?=$i ?></td>
                <td title="<?=$glo_lang['lich_truc'] ?>"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></td>
                <td title="<?=$glo_lang['benh_vien'] ?>"><?=SHOW_text($danhmuc[$rows['benh_vien']]['tenbaiviet_'.$lang]) ?></td>
                <td title="<?=$_SESSION['lichkham']['phong_kham'] != "" ? $glo_lang['phong_kham'] : $glo_lang['bac_si'] ?>">
                  <?php 
                    if($_SESSION['lichkham']['phong_kham'] != "") 
                      echo SHOW_text($danhmuc[$_SESSION['lichkham']['phong_kham']]['tenbaiviet_'.$lang]);
                    else {
                  ?>
                  <a href="<?=$full_url."/".$baiviet[$_SESSION['lichkham']['bac_si']]['seo_name']."/" ?>" target="_blank"><?=SHOW_text($baiviet[$_SESSION['lichkham']['bac_si']]['tenbaiviet_'.$lang]) ?></a>
                  <?php } ?>
                </td>
                <td title="<?=$glo_lang['phi_dich_vu'] ?>" class="text-center">
                  <p style="<?=$phan_tram != 0 ? "color: #797979; text-decoration: line-through;" : " color: #ea0909;" ?>"><?=number_format($rows['giatien']).' '.$glo_lang['dvt'] ?></p>
                  <p style=" color: #ea0909;"><?=$phan_tram != 0 ? number_format($rows['giatien'] - $rows['giatien'] * $phan_tram / 100).' '.$glo_lang['dvt'] : "" ?> <?=$phan_tram != 0 ? "(-".$phan_tram."%)" : "" ?></p>
                    
                </td>
                <td title="<?=$glo_lang['ngay_truc'] ?>" class="text-center">
                  <p class="ngay"><?=date('d-m-Y', $ngay_time) ?></p>
                  <p class="gio"><?=$rows['gio_truc'] ?></p>
                </td>
                <td title="<?=$glo_lang['chon'] ?>" class="text-center"><a href="<?=$full_url."/lich-kham-benh/?b=3&lk=".$rows['id'] ?>" class="del"><?=$glo_lang['chon'] ?></a></td>
              </tr>

              <?php } ?>
            </table>
          </div>
          <?php }} ?>
        </div>
     
        <div class="clr"></div>
      </div>
    </div>
 
  </div>
</div>
 