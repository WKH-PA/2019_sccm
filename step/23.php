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
    $wh = "  AND `id_parent` in (".$lay_all_kx.") ";
  
  if($is_search)
    $wh .= " AND (`tenbaiviet_vi` LIKE '%".$key."%' OR `tenbaiviet_en` LIKE '%".$key."%')";

  // $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC LIMIT 0,$numview");
  // $nd_total = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  // $nd_total = mysql_num_rows($nd_total);
  include _source."phantrang_kietxuat.php";
  // $anhcon   = LAY_anhstep($thongtin_step['id'], 1);
?>
<div class="conten_left">
  <div class="box_id_home">
    <div class="title_tin_id">
      <h3><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></h3>
    </div>
    <div class="dv-baidang-dd">
      <?php 
        if($nd_total == 0){
          echo "<div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div>";
        }else{
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
            <p><?=CONVER_thu(date("l", $rows['ngaydang']), $glo_lang) ?>, <?=date('d/m/Y', $rows['ngaydang']) ?> - <?=!empty($members_dang[$rows['id_user']]['hoten']) ? $members_dang[$rows['id_user']]['hoten'] : "Administrator"  ?></p>
          </ul>
        </div>
        <div class="clr"></div>
        <div class="faq_question showText"> <a href="<?=GET_link($full_url, $rows['seo_name']) ?>">
          <?=$rows['noidung_vi'] ?>
          </a> </div>
      </div>
      <?php }} ?>
    </div>
     
    <div class="nums">
      <ul>
        <?=PHANTRANG($pzer, $sotrang, $full_url."/".$motty, $_SERVER['QUERY_STRING']) ?>
      </ul>
      <div class="clr"></div>
    </div>
  </div>
</div>
<?php include _source."right_conten.php";?>
<div class="clr"></div>
