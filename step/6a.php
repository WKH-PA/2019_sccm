<?php
  // Update Luot view
  DB_que("UPDATE `#_baiviet` SET `soluotxem` = `soluotxem` + 1 WHERE `id` = '".$arr_running['id']."' LIMIT 1");
  // Update Luot view
  $kietxuat_name = DB_fet("*", "#_danhmuc", "`showhi` = 1 AND `step` = '".$slug_step."' AND `id` = '".$arr_running['id_parent']."'", "`id` DESC", 1, "arr", 1);
  if(empty($kietxuat_name)) 
    $kietxuat_name = $thongtin_step['tenbaiviet_'.$lang];
  else
    $kietxuat_name = $kietxuat_name[$arr_running['id_parent']]['tenbaiviet_'.$lang];

  if($slug_table == 'step'){
      $lay_all_kx = LAYDANHSACH_idkietxuat(0, $slug_step);
  }
  else{
      $lay_all_kx = LAYDANHSACH_idkietxuat($arr_running['id_parent'], $slug_step);
  }

  $wh = " AND `id` <> '".$arr_running['id']."' ";
  $numview = 6;
  $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC LIMIT 0,$numview");
  // $tintuc_khac  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `id` <> '".$arr_running['id']."' $wh ORDER BY `catasort` DESC, `id` DESC LIMIT 0,6");
  // $anhcon   = LAY_anhstep($thongtin_step['id'], 1);
?>
<link href="css/lightgallery.min.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="js/lightgallery-all.min.js"></script>

<div class="link_page">
  <div class="pagewrap">
    <h3><?=$arr_running['tenbaiviet_'.$lang] ?></h3>
    <ul>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table); ?></li>
      <div class="clr"></div>
    </ul>
    <div class="clr"></div>
  </div>
</div>
<div class="pagewrap">
  <div class="page_conten_page">
    <div class="conten_left">
      <div  id="lightgallery" class="album-zoom-gallery flex" >
      <?php 
        $danhsach_img = layHinhCon($arr_running['id']);
          while ($r_img = mysql_fetch_array($danhsach_img)) 
            {
        ?>
        <div  data-src="<?=checkImage($fullpath, $r_img['p_name'], 'datafiles/'.$r_img['duongdantin']) ?>">
          <a ><img src="<?=checkImage($fullpath, $r_img['p_name'], 'datafiles/'.$r_img['duongdantin'], 'thumbnew_') ?>" alt="<?=SHOW_text($r_img['p_note']) ?>" /></a>
        </div>
        <?php } ?>
      </div>
      <div class="clr"></div>
      <div class="box_id_home">
        <div class="title_tin_id">
          <h3><?=$glo_lang['hinh_anh_lien_quan'] ?></h3>
          <div class="clr"></div>
        </div>
        <div class="video_id dv-danhsachpto flex ">
          <?php 
              while ($rows = mysql_fetch_array($nd_kietxuat)) 
                { 
          ?>
          <ul>
            <a href="<?=GET_link($full_url, $rows['seo_name']) ?>">
            <li><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></li>
            <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
            </a>
          </ul>
          <?php } ?>
          <div class="clr"></div>
        </div>
      </div>
    </div>
    <div class="conten_right">
      <?php 
        $sp_step = LAY_step(8);
        $sp_baiviet = LAY_danhmuc(8,0, "`id_parent` = 0");
        if(count($sp_baiviet) > 0){
      ?>
      <div class="box_r_conten">
        <h2><?=$sp_step[0]['tenbaiviet_'.$lang] ?></h2>
        <div class="menu_right_conten">
          <ul>
            <?php 
              foreach ($sp_baiviet as $rows) { 
            ?>
            <li><a href="<?=GET_link($full_url, $rows['seo_name']) ?>"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } ?>
      <?php include _source."right_conten.php";?>
    </div>
    <div class="clr"></div>
  </div>
</div>
 
<script type="text/javascript">
  $(document).ready(function () {
      $('#lightgallery').lightGallery();
  });
</script>