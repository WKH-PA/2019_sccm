<?php
  // Update Luot view
  DB_que("UPDATE `#_baiviet` SET `soluotxem` = `soluotxem` + 1 WHERE `id` = '".$arr_running['id']."' LIMIT 1");
  // Update Luot view
  $kietxuat_name = DB_fet("*", "#_danhmuc", "`showhi` = 1 AND `step` = '".$slug_step."' AND `id` = '".$arr_running['id_parent']."'", "`id` DESC", 1, "arr", 1);
  if(empty($kietxuat_name)) 
    $kietxuat_name = $thongtin_step['tenbaiviet_'.$lang];
  else
    $kietxuat_name = $kietxuat_name[$arr_running['id_parent']]['tenbaiviet_'.$lang];

  $lay_all_kx = LAYDANHSACH_idkietxuat($arr_running['id_parent'], $slug_step);

  $wh           = "  AND `id` <>  '".$arr_running['id']."'";
  $numview      = 6;
  $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY RAND() LIMIT 0,$numview");


  $danhmuc_now    = DB_que("SELECT * FROM `#_danhmuc` WHERE `id` = '".$arr_running['id_parent']."' LIMIT 1");
  $danhmuc_now    = mysql_fetch_assoc($danhmuc_now);


  // $nd_total = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  // $nd_total = mysql_num_rows($nd_total);
  $gia = GET_gia($arr_running['giatien'], $arr_running['giakm'], $arr_running['opt_km'], $glo_lang['dvt'], $glo_lang['gia_lienhe'], "gia_ban", "gia_km", '','' );

  if(!empty($_SESSION['id'])) {
    $mb = DB_que("SELECT * FROM `#_members` WHERE `id` = '".$_SESSION['id']."' AND `phanquyen` = 0 LIMIT 1");
    $mb = mysql_fetch_assoc($mb);
    foreach ($mb as $key => $value) {
      ${$key} = $value;
    }
  }
  if(!empty($_SESSION['id'])) {
    $mb = DB_que("SELECT * FROM `#_members` WHERE `id` = '".$_SESSION['id']."' AND `phanquyen` = 0 LIMIT 1");
    $mb = mysql_fetch_assoc($mb);
    foreach ($mb as $key => $value) {
      ${$key} = $value;
    }
  }
  if(isset($_GET['stu'])) include "khoa-hoc-truc-tuyen-study.php";
  else{
?>
<div class="imges_id_page" style="background-image:url('<?=checkImage($fullpath, $thongtin_step['icon'], $thongtin_step['duongdantin']) ?>');"> </div>
<div class="link_page">
  <div class="pagewrap">
    <h3><?=$kietxuat_name  ?></h3>
    <ul>
      <li><a href="<?=$full_url ?>"><i class="fa fa-home"></i><img src="images/w_bg_location.gif" alt=""> <?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table) ?></li>
      <div class="clr"></div>
    </ul>
    <div class="clr"></div>
  </div>
</div>
<div class="pagewrap page_conten_page">
  <div class="left_conten sticky_top">
    <div class="menu_left_view">
      <ul>
        <li><a href="#gioithieukhoahoc_id" class="scroll_new"><?=$glo_lang['gioi_thieu_khoa_hoc'] ?></a></li>
        <li><a href="#muctieukhoahoc_id" class="scroll_new"><?=$glo_lang['muc_tieu_khoa_hoc'] ?></a></li>
        <li><a href="#chuongtrinhhoc_id" class="scroll_new"><?=$glo_lang['chuong_trinh_hoc'] ?></a></li>
        <li><a href="#phanmemsudung_id" class="scroll_new"><?=$glo_lang['phan_mem_su_dung_dao_tao'] ?></a></li>
        <li><a href="#diemnhankhoahoc_id" class="scroll_new"><?=$glo_lang['diem_nhan_khoa_hoc'] ?></a></li>
        <li><a href="#lichkhaigiang_id" class="scroll_new"><?=$glo_lang['thong_tin_khoa_hoc'] ?></a></li>
        <li><a href="#videokhoahoc_id" class="scroll_new"><?=$glo_lang['video_clip_khoa_hoc'] ?> </a></li>
        <h3><a href="#dangkyhoc" class="scroll_new"><?=$glo_lang['dang_ky_hoc'] ?></a></h3>
      </ul>
    </div>
  </div>
  <div class="right_conten" id="gioithieukhoahoc_id">
    <div class="box_kh_view">
      <div class="title_id"><?=$glo_lang['gioi_thieu_khoa_hoc'] ?></div>
      <div class="padding_pagewrap">
        <div class="showText">
          <?=SHOW_text($arr_running['mota_'.$lang]) ?><div class="clr"></div>
        </div>
      </div>
    </div>
    <div class="box_kh_view" id="muctieukhoahoc_id">
      <div class="title_id"><?=$glo_lang['muc_tieu_khoa_hoc'] ?></div>
      <div class="padding_pagewrap">
        <div class="showText">
          <?=SHOW_text($arr_running['noidung_'.$lang]) ?><div class="clr"></div>
        </div>
      </div>
    </div>
    <div class="box_kh_view" id="chuongtrinhhoc_id">
      <div class="title_id"><?=$glo_lang['chuong_trinh_hoc'] ?></div>
      <div class="padding_pagewrap">
        <div class="showText">
          <?=SHOW_text($arr_running['mt_1_'.$lang]) ?><div class="clr"></div>
        </div>
      </div>
    </div>
    <div class="box_kh_view" id="phanmemsudung_id">
      <div class="title_id"><?=$glo_lang['phan_mem_su_dung_dao_tao'] ?></div>
      <div class="padding_pagewrap">
        <?=SHOW_text($arr_running['mt_4_'.$lang]) ?><div class="clr"></div>
      </div>
    </div>
    <div class="box_kh_view" id="diemnhankhoahoc_id">
      <div class="title_id"><?=$glo_lang['diem_nhan_khoa_hoc'] ?></div>
      <div class="padding_pagewrap">
        <div class="showText">
          <?=SHOW_text($arr_running['mt_2_'.$lang]) ?><div class="clr"></div>
        </div>
      </div>
    </div>
    <div class="box_kh_view" id="lichkhaigiang_id">
      <div class="title_id"><?=$glo_lang['thong_tin_khoa_hoc'] ?></div>
      <div class="flex">
        <div class="thongtinkhoahoc_id">
          <li><img src="images/Start_date.svg" /></li>
          <ul>
            <h3><?=$glo_lang['ngay_bat_dau'] ?></h3>
            <h4><?=$arr_running['p3'] ?></h4>
            <p><?=$glo_lang['thoi_gian'] ?>: <?=$arr_running['var_1_'.$lang] ?></p>
          </ul>
          <div class="clr"></div>
        </div>
        <div class="thongtinkhoahoc_id">
          <li><img src="images/Schedule.svg" /></li>
          <ul>
            <h3><?=$glo_lang['lich_hoc_du_kien'] ?></h3>
            <div class="h4">
              <?=$arr_running['mt_5_'.$lang] ?>
            </div>
          </ul>
          <div class="clr"></div>
        </div>
        <div class="thongtinkhoahoc_id">
          <li><img src="images/Tuition.svg" /></li>
          <ul>
            <h3><?=$glo_lang['hoc_phi'] ?></h3>
            <div class="dv-price">
              <?=$gia['text_gia'].$gia['text_km'] ?>
            </div>
            <h5><a onclick="LOAD_popup_new('<?=$full_url ?>/pa-size-child/dang-ky-hoc/?id=<?=$arr_running['id'] ?>', '450px')" class="cur"><?=$glo_lang['dang_ky'] ?></a></h5>
          </ul>
          <div class="clr"></div>
        </div>
        <div class="thongtinkhoahoc_id">
          <li><img src="images/Location.svg" /></li>
          <ul>
            <h3><?=$glo_lang['dia_diem'] ?></h3>
            <p><?=$arr_running['var_2_'.$lang] ?></p>
          </ul>
          <div class="clr"></div>
        </div>
      </div>
      <div class="clr"></div>
    </div>
    <div class="box_kh_view" id="videokhoahoc_id">
      <div class="title_id"><?=$glo_lang['video_clip_khoa_hoc'] ?></div>
      <div class="padding_pagewrap">
        <?=SHOW_text($arr_running['mt_3_'.$lang]) ?>
      </div>
    </div>
    <div class="padding_pagewrap">
      <div id="sharelink"> 
        <!-- AddThis Button BEGIN -->
        <div class="addthis_toolbox addthis_default_style "> <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_google_plusone" g:plusone:size="medium"></a> <a class="addthis_counter addthis_pill_style"></a> </div>
        <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-502225fb496239a5"></script> 
        
        <!-- AddThis Button END --> 
      </div>
      <div class="dv-face">
        <?php include _source."fb_coment.php";?>
      </div>
    </div>
  </div>
  <div class="clr"></div>
</div>
<div class="box_khoanhoc_home" id="dangkyhoc">
  <div class="pagewrap">
    <div class="padding_pagewrap">
      <div class="title_id" style="margin-left: 0"><?=$glo_lang['dang_ky_khoa_hoc'] ?></div>
      <div class="contact">
        <!--  -->
        <form action="" class="formBox no_box" method="post" accept-charset="UTF-8" name="formnamecontact2" id="formnamecontact2">
          <input type="hidden" name="send_khoahoc">
          <input type="hidden" class="lang_ok" value="<?=$glo_lang['yeu_cau_cua_ban_da_duoc_gui'] ?>">
          <input type="hidden" class="lang_false" value="<?=$glo_lang['nhap_ma_bao_ve_chua_dung'] ?>">
          <input type="hidden" name="tieude_lienhe" value="<?=base64_encode($glo_lang['dang_ky_khoa_hoc']) ?>">
          <div class="left">
            <li class="name">
              <input type="hidden" name="s_fullname_s" value="<?=base64_encode($glo_lang['ho_va_ten']) ?>">
              <input class="cls_data_check_form" data-rong="1" name="s_fullname" id="s_fullname" type="text" placeholder="<?=$glo_lang['ho_va_ten'] ?> (*)" value="<?=!empty($_POST['s_fullname']) ? $_POST['s_fullname'] : @$hoten ?>" onFocus="if (this.value == '<?=$glo_lang['ho_va_ten'] ?> (*)'){this.value='';}" onBlur="if (this.value == '') {this.value='<?=$glo_lang['ho_va_ten'] ?> (*)';}" data-name="<?=$glo_lang['ho_va_ten'] ?> (*)" data-msso="<?=$glo_lang['nhap_ho_ten'] ?>"/>
            </li>
            <li class="phone">
              <input type="hidden" name="s_dienthoai_s" value="<?=base64_encode($glo_lang['so_dien_thoai']) ?>">
              <input class="cls_data_check_form" data-rong="1"  name="s_dienthoai" id="s_dienthoai" type="text" placeholder="<?=$glo_lang['so_dien_thoai'] ?> (*)" value="<?=!empty($_POST['s_dienthoai']) ? $_POST['s_dienthoai'] : @$sodienthoai ?>" onFocus="if (this.value == '<?=$glo_lang['so_dien_thoai'] ?> (*)'){this.value='';}" onBlur="if (this.value == '') {this.value='<?=$glo_lang['so_dien_thoai'] ?> (*)';}" data-name="<?=$glo_lang['so_dien_thoai'] ?> (*)" data-msso="<?=$glo_lang['nhap_so_dien_thoai'] ?>" data-msso1="<?=$glo_lang['so_dien_thoai_khong_hop_le'] ?>"/>
            </li>
            <li class="mail">
              <input type="hidden" name="s_email_s" value="<?=base64_encode($glo_lang['email']) ?>">
              <input class="cls_data_check_form" data-rong="1" data-email="1" name="s_email" id="s_email" type="text" placeholder="<?=$glo_lang['email'] ?> (*)" value="<?=!empty($_POST['s_email']) ? $_POST['s_email'] : @$email  ?>" onFocus="if (this.value == '<?=$glo_lang['email'] ?> (*)'){this.value='';}" onBlur="if (this.value == '') {this.value='<?=$glo_lang['email'] ?> (*)';}" data-msso="<?=$glo_lang['chua_nhap_dia_chi_email'] ?>" data-msso1="<?=$glo_lang['dia_chi_email_khong_hop_le'] ?>"/>
            </li>
            
          </div>
          <div class="right">
            <li class="local">
              <input type="hidden" name="s_address_s" value="<?=base64_encode($glo_lang['dia_chi']) ?>">
              <input name="s_address" id="s_address" type="text" placeholder="<?=$glo_lang['dia_chi'] ?>" value="<?=!empty($_POST['s_address']) ? $_POST['s_address'] : @$diachi ?>" onFocus="if (this.value == '<?=$glo_lang['dia_chi'] ?>'){this.value='';}" onBlur="if (this.value == '') {this.value='<?=$glo_lang['dia_chi'] ?>';}"/>
            </li>
            <li class="subject">
              <input type="hidden" name="s_title_s" value="<?=base64_encode($glo_lang['khoa_hoc']) ?>">
              <input name="s_title" id="s_title" type="text" placeholder="<?=$glo_lang['khoa_hoc'] ?>" value="<?=$arr_running['tenbaiviet_'.$lang] ?>" onFocus="if (this.value == '<?=$glo_lang['khoa_hoc'] ?>'){this.value='';}" onBlur="if (this.value == '') {this.value='<?=$glo_lang['khoa_hoc'] ?>';}" data-name="<?=$glo_lang['khoa_hoc'] ?>" data-msso="<?=$glo_lang['nhap_tieu_de'] ?>"/>
            </li>
            <li class="code">
              <span style="line-height: 0;padding-right: 0;"><img src="<?=$full_url."/load-capcha/" ?>" alt="CAPTCHA code" style="height: 43px; width: auto; cursor: pointer; position: relative; top: 1px; right: 1px;" onclick="$(this).attr('src','<?=$full_url."/load-capcha/" ?>')" id="img_contact_cap"><i class="fa fa-refresh" style="position: absolute; right: 3px; bottom: 3px; font-size: 10px; color: #666;" onclick="$('#img_contact_cap').attr('src','<?=$full_url."/load-capcha/" ?>')"></i></span>
              <input class="cls_data_check_form" data-rong="1" name="mabaove" id="mabaove" type="text" placeholder="<?=$glo_lang['ma_bao_ve'] ?> (*)" value="" onFocus="if (this.value == '<?=$glo_lang['ma_bao_ve'] ?> (*)'){this.value='';}" onBlur="if (this.value == '') {this.value='<?=$glo_lang['ma_bao_ve'] ?> (*)';}" data-msso="<?=$glo_lang['vui_long_nhap_ma_bao_ve'] ?>"/>
            </li>
            <input type="hidden" name="idbv" value="<?=$arr_running['id'] ?>">
            <p class="require_pc" style="color:red;"><?=$glo_lang['thong_tin_bat_buoc'] ?></p>
            <a onclick="RefreshFormMailContact(formnamecontact2)" style="cursor:pointer" class="button"><?=$glo_lang['lam_lai']  ?></a>
            <a onclick="return CHECK_send_lienhe('<?=$full_url ?>/','#formnamecontact2')" style="cursor:pointer" class="button"><?=$glo_lang['gui']  ?> <img src="images/loading2.gif" class="ajax_img_loading"></a>   
          </div>
          <div class="clr"></div>
        </form>
        <!--  -->
      </div>
    </div>
  </div>
</div>
<div class="tintuc_box_home">
  <div class="pagewrap">
    <div class="titBox left">
      <div class="tit"><?=$glo_lang['cac_khoa_hoc_lien_quan'] ?></div>
    </div>
    <div class="khoanhoc_id flex">
      <?php
        while ($rows = mysql_fetch_assoc($nd_kietxuat)) { 
          $gia = GET_gia($rows['giatien'], $rows['giakm'], $rows['opt_km'], $glo_lang['dvt'], $glo_lang['gia_lienhe'], "gia_ban", "gia_km", '','' );
      ?>
      <ul>
        <li><a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>"><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin']) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></a></li>
        <h3><a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
        <h2><?=$glo_lang['gia'] ?>: <?=$gia['text_gia'].$gia['text_km'] ?></h2>
        <p><i class="fa fa-calendar-check-o" aria-hidden="true"></i><?=$glo_lang['thoi_gian_hoc'] ?>: <?=$rows['p3'] ?></p>
        <h4><a class="cur" onclick="LOAD_popup_new('<?=$full_url ?>/pa-size-child/dang-ky-hoc/?id=<?=$rows['id'] ?>', '450px')"><?=$glo_lang['dang_ky'] ?><i class="fa fa-sign-out" aria-hidden="true"></i></a></h4>
        <h5><a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>"><?=$glo_lang['xem_chi_tiet'] ?><i class="fa fa-long-arrow-right"></i></a></h5>
        <div class="clr"></div>
      </ul>
      <?php } ?> 
      <div class="clr"></div>
    </div>
  </div>
</div>
<script>
    (function ($) {
        $(".scroll_new").click(function(event){   
          event.preventDefault();
          updateSidebar();
          $('html,body').animate({scrollTop:$(this.hash).offset().top  - 90},1000);
          $(this).addClass('active').siblings('.active').removeClass('active');
        });

        $(window).scroll(function () {
            updateSidebar();
        });

        function updateSidebar() {
            $('.scroll_new').each(function () {
                var currentLink = $(this);
                var refElement = $(currentLink.attr('href'));

                if (refElement.offset().top <= $(this).offset().top) {
                    // $(this).addClass('active').siblings('.active').removeClass('active');
                    $(".scroll_new").removeClass('active');
                    $(this).addClass('active');
                }
            });
        }

    }(window.jQuery))
</script>
<?php } ?>