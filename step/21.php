<?php
  if((!empty($thongtin_step) && $thongtin_step['num_view'] == 0) || empty($thongtin_step))
      $numview          = 12;
  else $numview         = $thongtin_step['num_view'];

  $key       = isset($_GET['key']) ? str_replace("+", " ", strip_tags($_GET['key'])) : '';
  $t         = isset($_GET['t']) && is_numeric($_GET['t']) ? $_GET['t'] : 0;
  $q         = isset($_GET['q']) && is_numeric($_GET['q']) ? $_GET['q'] : 0;
  $p         = isset($_GET['p']) ? $_GET['p'] : 0;
 
  $is_search = $motty == "search" ? true : false;

  $lay_all_kx = "";
  if($is_search){
    // $lay_all_kx     = LAYDANHSACH_idkietxuat(0, $slug_step);
    $slug_step      = 4;

    $thongtin_step = DB_que("SELECT * FROM `#_step` WHERE `id` = '$slug_step' LIMIT 1");
    $thongtin_step = mysql_fetch_assoc($thongtin_step);
  }
  else if($slug_table != 'step'){
      $lay_all_kx = LAYDANHSACH_idkietxuat($arr_running['id'], $slug_step);
  }
  $wh = "";
  if($lay_all_kx != "")
    $wh = "  AND `id_parent` in (".$lay_all_kx.") ";
  
  if($key != '')
    $wh .= " AND (`tenbaiviet_vi` LIKE '%".$key."%' OR `tenbaiviet_en` LIKE '%".$key."%')";

  if($t != 0)
    $wh .= " AND (`num_1` = '".$t."')";

  if($q != 0)
    $wh .= " AND (`num_2` = '".$q."')";
  if($p != 0) {
    $p   = explode(",", $p);
    foreach ($p as $vp) {
      if(is_numeric($vp) && $vp != 0) {
        $wh .= " AND `tinhnang_".$lang."` REGEXP '.*;s:[0-9]+:\"".$vp."\".*' ";
        // $wh .= " AND  `tinhnang_".$lang."` LIKE '\"$vp\"' ";
      }
    }
  }
 
  // $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC LIMIT 0,$numview");
  // $nd_total = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  // $nd_total = mysql_num_rows($nd_total);
  include _source."phantrang_kietxuat.php";
  // $anhcon   = LAY_anhstep($thongtin_step['id'], 1);
?>
<div class="bg_load_page" style="background-image:url('<?=checkImage($fullpath, $thongtin_step['icon'], $thongtin_step['duongdantin']) ?>');"> </div>
<div class="link_page">
  <div class="pagewrap">
    <ul>
      <h2><?=$is_search ? $glo_lang['tim_kiem'] : SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></h2>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=$is_search ? ' > <a>'.$glo_lang['tim_kiem'].'</a>' : GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table) ?></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<?php include _source."loc_bds.php";?>
<div class="pagewrap page_conten_page">
  <div class="id_bds id_bds_ds no_box flex">
    <?php 
        if($nd_total == 0){
          echo "<div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div>";
        }else{
          $i = 0;
          while ($rows = mysql_fetch_array($nd_kietxuat)) 
            { 
              $i++;
      ?>
  
      <ul>
        <a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>">
        <li><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></li>
        <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
        <p><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></p>
        </a>
      </ul>
      <?php }} ?>
    
    <div class="clr"></div>
  </div>
  <div class="nums">
      <ul>
        <?=PHANTRANG($pzer, $sotrang, $full_url."/".$motty, $_SERVER['QUERY_STRING']) ?>
      </ul>
      <div class="clr"></div>
    </div>
</div>