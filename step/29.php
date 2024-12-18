<?php
    $phan_tram  = 0;
   if(!empty($_SESSION['id'])) {
    $member = DB_que("SELECT * FROM `#_members` WHERE `id` = '".$_SESSION['id']."' AND `phanquyen` = 0");
    $member = mysql_fetch_assoc($member);
    foreach ($member  as $key => $value) {
      ${$key} = $value;
    }
    $phan_tram  = $thongtin['chiet_khau_def'];

    if(!empty($tk_phongkham) && $tk_phongkham <> 0) {
      ALERT_js($glo_lang['tai_khoan_phong_kham_khong_the_su_dung_tinh_nang_nay']);
      LOCATION_js($full_url);
      exit();
    }
    //check khau
    $check_khau = DB_que("SELECT * FROM `#_members_nhom` WHERE `id` = '".$cong_ty."' LIMIT 1");
    if(mysql_num_rows($check_khau)) {
      $check_khau = mysql_fetch_assoc($check_khau);
      $phan_tram  = !empty($check_khau['phan_tram']) ? $check_khau['phan_tram'] : $phan_tram;
    }
    //
   }
   if(!empty($_SESSION['lichkham'])) {
    foreach ($_SESSION['lichkham'] as $key => $value) {
      ${$key} =  $value;
    }
   }
   if(isset($_GET['b']) && $_GET['b'] == 2) {
    include "29_2.php";
   }
   else if(isset($_GET['b']) && $_GET['b'] == 3) {
    include "29_3.php";
   }
   else {
?>

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
    <div class="lichkham_page_id">
      <div class="lich_kham_id">
        <h3><?=$glo_lang['thong_tin_ca_nhan'] ?></h3>
        <div class="col-md-2 row-frm">

          <input class="cls_data_check_form_dp form-control" data-rong="1" name="hoten" type="text" placeholder="<?=$glo_lang['ho_va_ten'] ?> (*)" value="<?=!empty($hoten) ? $hoten : "" ?>" data-name="<?=$glo_lang['ho_va_ten'] ?> (*)" data-msso="<?=$glo_lang['nhap_ho_ten'] ?>"/>

        </div>
        <div class="col-md-3 row-frm">
          <select name="gioitinh" class="SlectBox form-control cls_data_check_form_dp " data-rong="1" data-msso="<?=$glo_lang['chon_gioi_tinh'] ?>">
            <option value=""><?=$glo_lang['chon_gioi_tinh'] ?> *</option>
            <option value="1" <?=LAY_selected(1, @$gioitinh) ?>><?=$glo_lang['nam'] ?></option>
            <option value="2" <?=LAY_selected(2, @$gioitinh) ?>><?=$glo_lang['nu'] ?></option>
          </select>
        </div>

        <div class="col-md-2 row-frm">
          <input class="cls_data_check_form_dp form-control" data-rong="1" data-phone="1" name="sodienthoai" type="text" placeholder="<?=$glo_lang['so_dien_thoai'] ?> (*)" value="<?=!empty($sodienthoai) ? $sodienthoai : "" ?>" data-name="<?=$glo_lang['so_dien_thoai'] ?> (*)" data-msso="<?=$glo_lang['nhap_so_dien_thoai'] ?>" data-msso1="<?=$glo_lang['so_dien_thoai_khong_hop_le'] ?>"/>
        </div>
        <div class="col-md-2 row-frm">
          <input class="cls_data_check_form_dp form-control" data-rong="1" data-email="1" name="email" id="s_email" type="text" placeholder="<?=$glo_lang['email'] ?> (*)" value="<?=!empty($email) ? $email : "" ?>" data-msso="<?=$glo_lang['chua_nhap_dia_chi_email'] ?>" data-msso1="<?=$glo_lang['dia_chi_email_khong_hop_le'] ?>"/>
        </div>
        <div class="col-md-2 row-frm">
          <input class="form-control cls_data_check_form_dp" name="diachi" type="text" placeholder="<?=$glo_lang['dia_chi'] ?> *" value="<?=!empty($diachi) ? $diachi : "" ?>" data-rong="1" data-msso="<?=$glo_lang['nhap_dia_chi'] ?>"/>
        </div> 
        <div class="col-md-2 row-frm">
          <select name="ngaysinh" class="SlectBox form-control cls_data_check_form_dp" data-rong="1" data-msso="<?=$glo_lang['nhap_nam_sinh'] ?>">
            <option value=""><?=$glo_lang['nam_sinh'] ?> *</option>
            <?php 
              $year   = date("Y", time());
              for ($i = $year; $i > $year - 120; $i--) { 
                echo '<option '.LAY_selected(@$ngaysinh , $i).' value="'.$i.'">'.$i.'</option>';
              } 
            ?>
          </select>
        </div>
        <div class="clr"></div>
      </div>
    </div>
    
    <div class="lichkham_page_id">
      <div class="lich_kham_id">
        <h3><?=$glo_lang['dat_lich_kham_benh'] ?></h3>
        <div class="col-md-3 row-frm">
          <select name="danh_muc_kham" class="SlectBox form-control cls_data_check_form_dp" data-rong="1" data-msso="<?=$glo_lang['chon_danh_muc_kham'] ?>">
            <option value=""><?=$glo_lang['chon_danh_muc_kham'] ?> *</option>
            <?php 
              $sp_baiviet    = LAY_baiviet(8);
              foreach ($sp_baiviet as $rows) { 
            ?>
            <option value="<?=$rows['id'] ?>" <?=LAY_selected(@$danh_muc_kham , $rows['id']) ?>><?=$rows['tenbaiviet_'.$lang] ?></option>
            <?php } ?>
          </select>
        </div>
        <div class="col-md-3 row-frm">
          <select name="benh_vien" class="SlectBox form-control cls_data_check_form_dp" data-rong="1" data-msso="<?=$glo_lang['chon_benh_vien'] ?>" onchange="GET_phongkham(this)">
            <option value=""><?=$glo_lang['chon_benh_vien'] ?></option>
            <?php 
              $sp_baiviet    = LAY_danhmuc(2, 100, "`id_parent` = 0");
              foreach ($sp_baiviet as $rows) { 
            ?>
            <option value="<?=$rows['id'] ?>"><?=$rows['tenbaiviet_'.$lang] ?></option>
            <?php } ?>
          </select>
        </div>
        <div class="col-md-3 row-frm js_pkham sel_check_lichkham sel_check_lichkham_1">
          <select name="phong_kham" class="form-control cls_data_check_form_dp" data-rong="1" data-msso="<?=$glo_lang['chon_phong_kham'] ?>">
            <option value=""><?=$glo_lang['chon_phong_kham'] ?> *</option>
          </select>
        </div>
        <div class="col-md-3 row-frm js_bsy sel_check_lichkham sel_check_lichkham_2">
          <select name="bac_si" class="form-control cls_data_check_form_dp" data-rong="1" data-msso="<?=$glo_lang['chon_bac_si'] ?>">
            <option value=""><?=$glo_lang['chon_bac_si'] ?> *</option>
          </select>
        </div>
        <div class="col-md-2 row-frm">
          <input type="text" name="ngay_hen_kham" class="datepicker form-control cls_data_check_form_dp" placeholder="<?=$glo_lang['ngay_hen_kham'] ?> *" data-rong="1" data-msso="<?=$glo_lang['nhap_ngay_hen_kham'] ?>" value="<?=!empty($ngay_hen_kham) ? $ngay_hen_kham : "" ?>" readonly="readonly">
        </div>
        <div class="col-md-2 row-frm">
          <input type="text" name="ly_do_kham" class="form-control cls_data_check_form_dp" placeholder="<?=$glo_lang['ly_do_kham'] ?> *" data-rong="1" data-msso="<?=$glo_lang['nhap_ly_do_kham'] ?>" value="<?=!empty($ly_do_kham) ? $ly_do_kham : "" ?>">
        </div>
        <h4><a onclick="return CHECK_dp_buoc_2('#form_dp', '.cls_data_check_form_dp')" style="cursor:pointer"><?=$glo_lang['xac_nhan_dat_lich'] ?></a></h4>
        <div class="clr"></div>
      </div>
      </div>
      <div class="clr"></div>
    </form>
  </div>
</div>

<style>
  div.ui-datepicker td a.ui-state-default { width: 38px; height: 28px; padding: 4px; font-size: 13px; background: #eef1f5; border: 1px solid #d2ddec; }
  div.ui-widget.ui-widget-content { border: 1px solid #d2ddec; width: 290px; }
  div.ui-datepicker .ui-datepicker-header { background: #eef1f5; padding: 5px; border: 1px solid #d2ddec; }
  div.ui-widget-header .ui-icon { opacity: .4; }
  div.ui-datepicker .ui-datepicker-prev, div.ui-datepicker .ui-datepicker-next { border: 1px solid #eef1f5; top: 2px; left: 2px; cursor: pointer; }
  div.ui-datepicker .ui-datepicker-next {left: auto; right: 2px}
  div.ui-datepicker select.ui-datepicker-month, .ui-datepicker select.ui-datepicker-year { background: #d8e0ea; height: 22px; margin: 0 1%; border: 1px solid #d2ddec; width: 48%; cursor: pointer; }
  div.ui-widget-content .ui-state-hover { background: #d2ddec !important; }
  #ui-datepicker-div, #ui-datepicker-div * {
    -webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box;
  }
</style>
<script>
  function GET_phongkham(obj){
    $.ajax({
      type: "POST",
      url: full_url + "/get_benh_vien/",
      data: { "bv": $(obj).val() },
      success: function (data) {
          try {
              data = JSON.parse(data);
              $(".js_pkham").html(data.pkham);
              $(".js_bsy").html(data.bsy);
              $(".sel_check_lichkham").show();
          } catch (e) {
              console.log(data);
          }
      }
    });
  };
  function CHECK_lichkham_on(obj, id) {
    var data = $(obj).val();
    if(data == "") return false;
    $(".sel_check_lichkham").hide();
    $(".sel_check_lichkham select").attr("data-rong", "0")
    $(".sel_check_lichkham_"+id+" select").attr("data-rong", "0")
    $(".sel_check_lichkham_"+id).show();
  }
  function CHECK_dp_buoc_2(id_form, cls) {
    var check = 0;
    $(cls).each(function(){
        var val     = $(this).val().trim();
        var id      = $(this).attr('id');
        var rong    = $(this).attr('data-rong');
        var phone   = $(this).attr('data-phone');
        var email   = $(this).attr('data-email');

        var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if(rong == 1 && val == ""){
            alert($(this).attr('data-msso'));
            $(this).focus();
            $(".ajax_img_loading").hide();
            check = 1;
            icheck_lienhe = 0;
            return false;
        } 
        else if(email == 1 && !regex.test(val) && val != ""){
            alert($(this).attr('data-msso1'));
            $(this).focus();
            $(".ajax_img_loading").hide();
            check = 1;
            icheck_lienhe = 0;
            return false;
        }
        else if(phone == 1 && !CHECK_phone(this) && val != ""){
            alert($(this).attr('data-msso1'));
            $(this).focus();
            $(".ajax_img_loading").hide();
            check = 1;
            icheck_lienhe = 0;
            return false;
        }
    });
    if(check == 0){
        $.ajax({
            type: "POST",
            url: full_url+"/lich_kham_benh_b2/",
            data: $(id_form).serialize(),
            success: function (data) {
              window.location.href = "<?=$full_url ?>/lich-kham-benh/?b=2"
            }
        });
    }
  }
  
  $(".datepicker").each(function(){
    $(this).datepicker({
      autoclose: true,
      changeMonth: true,
      changeYear: true,
      format: 'dd-mm-yyyy'
    });
  });
</script>
<?php } ?>