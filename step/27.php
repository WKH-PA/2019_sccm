<?php
  if((!empty($thongtin_step) && $thongtin_step['num_view'] == 0) || empty($thongtin_step))
      $numview          = 12;
  else $numview         = $thongtin_step['num_view'];

  $key       = isset($_GET['key']) ? str_replace("+", " ", strip_tags($_GET['key'])) : '';
  $is_search = isset($_GET['key']) ? true : false;

  $lay_all_kx = "";
  if($is_search){
    $lay_all_kx     = LAYDANHSACH_idkietxuat(0, $slug_step);
    $slug_step      = 4;

    $thongtin_step = DB_que("SELECT * FROM `#_step` WHERE `id` = '$slug_step' LIMIT 1");
    $thongtin_step = mysql_fetch_assoc($thongtin_step);
  }
  else if($slug_table != 'step'){
      $lay_all_kx = LAYDANHSACH_idkietxuat($arr_running['id'], $slug_step);
  }
  $wh = "";
  if($lay_all_kx != "")
    // $wh = "  AND `id_parent` in (".$lay_all_kx.") ";
    $wh = "  AND CONCAT(',', `detail_en`, ',') REGEXP ',(".str_replace(",", "|", $lay_all_kx)."),'  ";
  
  if($is_search)
    $wh .= " AND (`tenbaiviet_vi` LIKE '%".$key."%' OR `tenbaiviet_en` LIKE '%".$key."%')";


  // $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC LIMIT 0,$numview");
  // $nd_total = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  // $nd_total = mysql_num_rows($nd_total);
  include _source."phantrang_kietxuat.php";
  // $anhcon   = LAY_anhstep($thongtin_step['id'], 1);
?>
<div class="link_page">
  <div class="pagewrap">
    <ul>
      <h2><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></h2>
      <li><a href="<?=$full_url ?>"><i class="fa fa-home"></i><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table) ?></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="pagewrap page_conten_page">
  <div class="left_conten flex">
    <?php if($slug_table == 'step'){ ?>
    <div class="cv_theonganhnghe">
      <ul>
        <h3><?=$glo_lang['tim_kiem_viec_lam_theo_nganh_nghe'] ?></h3>
        <?php 
          $nd_danhmuc   = DB_que("SELECT * FROM `#_danhmuc` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") ORDER BY `catasort` ASC, `id` DESC");
          while ($rows  = mysql_fetch_assoc($nd_danhmuc)) {
            $lay_all_kx = LAYDANHSACH_idkietxuat($rows['id'], $slug_step);

            $num_bv     = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") AND CONCAT(',', `detail_en`, ',') REGEXP ',(".str_replace(",", "|", $lay_all_kx)."),' ");
        ?>
        <li>
          <a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>" >» <?=SHOW_text($rows['tenbaiviet_'.$lang]) ?> (<?=mysql_num_rows($num_bv) ?>)</a>
        </li>
        <?php } ?>
        <div class="clr"></div>
      </ul>
    </div>
    <?php 
      }else { 
        $tinhnang   = LAY_bv_tinhnang($slug_step, 0, '', ' `noi_bat` DESC, ');
        if($nd_total == 0){
          echo "<div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div>";
        }else{
          $i = 0;
          while ($rows = mysql_fetch_array($nd_kietxuat)) 
            { 
              $i++;
      ?>
      <div class="dichvuvl_page">
        <h3><a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
        <li><a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>"><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt=""/></a></li>
        <ul>
          <?php 
            $tn = unserialize($rows['tinhnang_'.$lang]);
            $a  = 0;
            foreach ($tinhnang as $value) {
              if($value['tieu_bieu']  == 0 || empty($tn[$value['id']])) continue;

              $n_val = $value['loai_hienthi'] == 1 ? $tinhnang[$tn[$value['id']]['v']]['tenbaiviet_'.$lang] : $tn[$value['id']]['v'];

              if($value['noi_bat']    == 0)
                echo '<p>'.$value['tenbaiviet_'.$lang].': '.$n_val.'</p>';
              else
                echo '<h4>'.$value['tenbaiviet_'.$lang].': '.$n_val.'</h4>';

              if($a == 0) {
                echo '<p>'.$glo_lang['ma_cong_viec'].': '.$rows['p1'].'</p>';
                $a  = 1;
              }
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
    
    <?php } ?>
  </div>
  <div class="right_conten">
    <div class="menu_left_id">
      <ul>
        <h3><?=$glo_lang['dich_vu_viec_lam'] ?></h3>
        <?php 
          $sp_baiviet = DB_fet("*","`#_step`","`id` IN (2,10)","`catasort` DESC","","arr");
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