<?php
  // // Update Luot view
  // $data['soluotxem'] = array();
  // $data['soluotxem'] = $arr_running['soluotxem'] + 1;
  // ACTION_db($data, '#_baiviet', 'update', NULL, "`id` = ".$arr_running['id']);
  // // Update Luot view

  $kietxuat_name = DB_fet("*", "#_danhmuc", "`showhi` = 1 AND `step` = '".$slug_step."' AND `id` = '".$arr_running['id_parent']."'", "`id` DESC", 1, "arr", 1);
  if(empty($kietxuat_name)) 
    $kietxuat_name = $thongtin_step['tenbaiviet_'.$lang];
  else
    $kietxuat_name = $kietxuat_name[$arr_running['id_parent']]['tenbaiviet_'.$lang];
  
  if((!empty($thongtin_step) && $thongtin_step['num_view'] == 0) || empty($thongtin_step))
      $numview          = 14;
  else $numview         = $thongtin_step['num_view'];
  $lay_all_kx = LAYDANHSACH_idkietxuat($arr_running['id_parent'], $slug_step);

  // $wh           = "  AND `id_parent` in (".$lay_all_kx.") AND `id` <>  '".$arr_running['id']."'";
  // $numview      = 6;
  // $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC LIMIT 0,$numview");
  // $nd_total = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  // $nd_total = mysql_num_rows($nd_total);
 
  // $anhcon   = LAY_anhstep($thongtin_step['id'], 1);
  $wh = "";
  if($lay_all_kx != "")
    $wh = "  AND `id_parent` in (".$lay_all_kx.") ";

  $pzer                   = isset($_GET['page']) && is_numeric($_GET['page']) ? $_GET['page'] : 1;

  $vi_tri                 = PHANTRANG_start($pzer, $numview);
  if ($pzer               == 1 || $pzer == NULL) 
      $pzz                = 0;
  else $pzz               = $pzer * $numview;

  if(empty($wh)) $wh = '';
  $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC, `id` DESC LIMIT $vi_tri,$numview");

  // echo "SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC, `id` DESC LIMIT $vi_tri,$numview";
  
  $nd_total       = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");

  $nd_total       = @mysql_num_rows($nd_total);
  $numshow        = ceil($nd_total / $numview);
  $sotrang        = PHANTRANG_findPages($nd_total, $numview);
?>
<div class="link_page">
  <div class="pagewrap">
    <ul>
      <h2><?=$kietxuat_name ?></h2>
      <li><a href="<?=$full_url ?>"><i class="fa fa-home"></i><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table) ?> // <a><?=SHOW_text($arr_running['tenbaiviet_'.$_SESSION['lang']]) ?></a></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="pagewrap page_conten_page">
  <div class="left_conten">
    <?php 
      $tinhnang    = LAY_bv_tinhnang($slug_step);
      if($nd_total == 0){
        echo "<div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div>";
      }else{
        $i = 0;
        while ($rows = mysql_fetch_array($nd_kietxuat)) 
          { 
            $i++;
    ?>
    <div class="list_dn">
      <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
      <li><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></li>
      <ul>
        <?php 
          $tn = unserialize($rows['tinhnang_'.$lang]);
          $a  = 0;
          foreach ($tinhnang as $value) {
            if(empty($tn[$value['id']])) continue;
            echo '<p>'.$value['tenbaiviet_'.$lang].'<span>: '.$tn[$value['id']]['v'].'</span></p>';
            

          }
        ?>
      </ul>
      <div class="clr"></div>
    </div>
    <?php }} ?>
     
    <div class="clr"></div>
    <div class="nums">
      <ul>
        <?=PHANTRANG($pzer, $sotrang, $full_url."/".$motty, $_SERVER['QUERY_STRING']) ?>
      </ul>
      <div class="clr"></div>
    </div>
  </div>
  <div class="right_conten">
    <div class="menu_left_id">
      <ul>
        <h3><?=$thongtin_step['tenbaiviet_'.$lang] ?></h3>
        <?php 
          $sp_baiviet = LAY_danhmuc($thongtin_step['id']);
          foreach ($sp_baiviet as $rows) { 
        ?>
        <li><a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>">» <?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
        <?php } ?>
      </ul>
    </div>
    <?php include _source."left_conten.php";?>
  </div>
  <div class="clr"></div>
</div>