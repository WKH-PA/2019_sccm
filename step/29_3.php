<?php
  unset($_SESSION['ma_giam_gia']);
   if(!empty($_SESSION['lichkham'])) {
    foreach ($_SESSION['lichkham'] as $key => $value) {
      ${$key} =  $value;
    }
   }
   else {
    LOCATION_js($full_url."/lich-kham-benh/");
    exit();
   }
  $danhmuc     = DB_arr("SELECT * FROM `#_danhmuc` WHERE `step` = 2 ","id");
  $baiviet     = DB_arr("SELECT * FROM `#_baiviet` WHERE `step` = 2 ","id");
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
<div class="page_conten_page" id="page_conten_page">
  <div class="pagewrap">
    <form action="" class="formBox no_box" method="post" accept-charset="UTF-8" name="form_dp" id="form_dp">
      <!-- //thong tin ca nhan -->
      <div class="lichkham_page_id" style="width: calc(100% - 20px); margin-bottom: 20px">
        <div class="lich_kham_id" >
          <h3><?=$glo_lang['thong_tin_ca_nhan'] ?></h3>
          <div class="dv-lich-kham-benh-b2 tb_rps">
            <table class="tb-new-repsive" width="100%" border="0" cellspacing="0" cellpadding="5">
              <tr>
                <th><?=$glo_lang['ho_va_ten'] ?></th>
                <th><?=$glo_lang['gioi_tinh'] ?></th>
                <th><?=$glo_lang['so_dien_thoai'] ?></th>
                <th><?=$glo_lang['email'] ?></th>
                <th><?=$glo_lang['dia_chi'] ?></th>
                <th><?=$glo_lang['nam_sinh'] ?></th>
              </tr>
              <tr>
                <td title="<?=$glo_lang['ho_va_ten'] ?>"><?=SHOW_text($_SESSION['lichkham']['hoten']) ?></td>
                <td title="<?=$glo_lang['gioi_tinh'] ?>"><?=$_SESSION['lichkham']['gioitinh'] == 1 ? $glo_lang['nam'] : $glo_lang['nu'] ?></td>
                <td title="<?=$glo_lang['so_dien_thoai'] ?>"><?=SHOW_text($_SESSION['lichkham']['sodienthoai']) ?></td>
                <td title="<?=$glo_lang['email'] ?>"><?=SHOW_text($_SESSION['lichkham']['email']) ?></td>
                <td title="<?=$glo_lang['dia_chi'] ?>"><?=SHOW_text($_SESSION['lichkham']['diachi']) ?></td>
                <td title="<?=$glo_lang['nam_sinh'] ?>"><?=SHOW_text($_SESSION['lichkham']['ngaysinh']) ?></td>
              </tr>
            </table>
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <!-- end -->
      <!-- dat lich kham benh -->
      <div class="lichkham_page_id" style="width: calc(100% - 20px); margin-bottom: 0px">
        <div class="lich_kham_id" >
          <h3><?=$glo_lang['lich_kham_benh'] ?></h3>
          <div class="dv-lich-kham-benh-b2 tb_rps">
            <table class="tb-new-repsive" width="100%" border="0" cellspacing="0" cellpadding="5">
              <tr>
                <th><?=$glo_lang['danh_muc_kham'] ?></th>
                <th><?=$glo_lang['benh_vien'] ?></th>
                <th><?=$_SESSION['lichkham']['phong_kham'] != "" ? $glo_lang['phong_kham'] : $glo_lang['bac_si'] ?></th>
                <th><?=$glo_lang['ngay_hen_kham'] ?></th>
                <th><?=$glo_lang['ly_do_kham'] ?></th>
              </tr>
              <tr>
                <td title="<?=$glo_lang['danh_muc_kham'] ?>"><?php
                    $danhmuckham = DB_arr("SELECT * FROM `#_baiviet` WHERE `showhi` = 1 AND `step` = 8","id");
                    echo SHOW_text($danhmuckham[$_SESSION['lichkham']['danh_muc_kham']]['tenbaiviet_'.$lang]) 
                  ?>
                </td>
                <td title="<?=$glo_lang['benh_vien'] ?>"><?=SHOW_text($danhmuc[$_SESSION['lichkham']['benh_vien']]['tenbaiviet_'.$lang])  ?></td>
                <td title="<?=$_SESSION['lichkham']['phong_kham'] != "" ? $glo_lang['phong_kham'] : $glo_lang['bac_si'] ?>">
                  <?php 
                    if($_SESSION['lichkham']['phong_kham'] != "") 
                      echo SHOW_text($danhmuc[$_SESSION['lichkham']['phong_kham']]['tenbaiviet_'.$lang]);
                    else {
                  ?>
                  <a href="<?=$full_url."/".$baiviet[$_SESSION['lichkham']['bac_si']]['seo_name']."/" ?>" target="_blank"><?=SHOW_text($baiviet[$_SESSION['lichkham']['bac_si']]['tenbaiviet_'.$lang]) ?></a>
                  <?php } ?>
                </td>
                <td title="<?=$glo_lang['ngay_hen_kham'] ?>"><?=SHOW_text($_SESSION['lichkham']['ngay_hen_kham']) ?></td>
                <td title="<?=$glo_lang['ly_do_kham'] ?>"><?=SHOW_text($_SESSION['lichkham']['ly_do_kham']) ?></td>
              </tr>
            </table>
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <!-- end -->
      <div class="lichkham_page_id" style="width: calc(100% - 20px)">
        <div class="lich_kham_id" >
          <div class="dv-lich-kham-benh-b2 tb_rps">
            <?php 
                $idlk = isset($_GET['lk']) && is_numeric($_GET['lk']) ? $_GET['lk'] : 0;

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
                  `lt`.`id` = '".$idlk."' AND 
                  `lt`.`benh_vien` = '".$_SESSION['lichkham']['benh_vien']."'  $sel ORDER BY `lt`.`ngay_dang` DESC");
                if(!mysql_num_rows($lichtruc)) {
                  LOCATION_js($full_url."/lich-kham-benh/");
                  exit();
                }
                else{
            ?> 
            <table class="tb-new-repsive" width="100%" border="0" cellspacing="0" cellpadding="5">
              <tr>
                <th class="text-center">STT</th>
                <th><?=$glo_lang['lich_truc'] ?></th>
                <th><?=$glo_lang['benh_vien'] ?></th>
                <th><?=$_SESSION['lichkham']['phong_kham'] != "" ? $glo_lang['phong_kham'] : $glo_lang['bac_si'] ?></th>
                <th class="text-center"><?=$glo_lang['phi_dich_vu'] ?></th>
                <th class="text-center"><?=$glo_lang['ngay_truc'] ?></th>
              </tr>
              <?php 
                $i = 0;
                $thanhtien = 0;
                $tiengoc = 0;
                while ($rows = mysql_fetch_assoc($lichtruc)) { 
                  $i++;
                  $tiengoc = $rows['giatien'];
              ?>
              <tr>
                <td title="STT" class="text-center"><?=$i ?></td>
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
                <td title="<?=$glo_lang['phi_dich_vu'] ?>" class="text-center" >
                  <?php 
                    $thanhtien = $phan_tram != 0 ? $rows['giatien'] - $rows['giatien'] * $phan_tram / 100 : $rows['giatien'];
                  ?>
                  <p style="<?=$phan_tram != 0 ? "color: #797979; text-decoration: line-through;" : " color: #ea0909;" ?>"><?=number_format($rows['giatien']).' '.$glo_lang['dvt'] ?></p>
                  <p style=" color: #ea0909;"><?=$phan_tram != 0 ? number_format($rows['giatien'] - $rows['giatien'] * $phan_tram / 100).' '.$glo_lang['dvt'] : "" ?> <?=$phan_tram != 0 ? "(-".$phan_tram."%)" : "" ?></p>
                  <p style=" color: #ea0909;" class="p_gia_ma_giam_gia"></p>
                    
                </td>
                <td title="<?=$glo_lang['ngay_truc'] ?>" class="text-center">
                  <p class="ngay"><?=date('d-m-Y', $ngay_time) ?></p>
                  <p class="gio"><?=$rows['gio_truc'] ?></p>
                </td>
              </tr>
              <?php } ?>
            </table>
            <?php } ?>
          </div>
       
          <div class="clr"></div>
        </div>
      </div>
      <div class="dv-magiagia">
        <input type="text" class="form-control cls_makm" placeholder="<?=$glo_lang['nhap_ma_khuyen_mai'] ?>">
        <button type="button" class="cur" onclick="CHECK_makm()"><?=$glo_lang['ap_dung'] ?></button>
        <p class="ma_khuyen_mai_mt"></p>
      </div>
      <div class="formBox dv-lich-kham-benh-sub">
        <a class="button" onclick="SEND_lichkham('<?=$idlk ?>')"><?=$glo_lang['dat_lich_kham_benh'] ?> <img src="images/loading2.gif" class="ajax_img_loading"></a>
        <a class="button" href="<?=$full_url."/lich-kham-benh/" ?>"><?=$glo_lang['lam_lai'] ?></a>
      </div>
    </form>
  </div>
</div>
 
<?php include _source."paypal.php"; ?>

<script>
var icheck_buy = 0;
  function CHECK_makm(){
    if($(".cls_makm").val() == 0) {
      $(".cls_makm").focus();
      return false;
    }
    if (icheck_buy == 0) {
      icheck_buy = 1;
      $(".ma_khuyen_mai_mt").html('<img src="images/loading8.gif" alt="">');
        $.ajax({
        type: "POST",
        url: full_url+"/check_mkm/",
        data: {"cls_makm" : $(".cls_makm").val(), "tt" : "<?=$thanhtien ?>", "tg": "<?=$tiengoc ?>"},
        success: function (data) {
            icheck_buy = 0;
            $(".p_gia_ma_giam_gia").html("");
            $(".ma_khuyen_mai_mt").html('');
            try {
                data = JSON.parse(data);
                if(data['err'] == 0) {
                  $(".p_gia_ma_giam_gia").html(data.giatien);
                }
                $(".ma_khuyen_mai_mt").text(data.text);
            } 
            catch (e) {
              $(".ma_khuyen_mai_mt").html('');
             console.log(data)
            }
        }
      });
    }
  }
var icheck_lich_kham = 0;
function SEND_lichkham(id) {
    if (icheck_lich_kham == 0) {
        icheck_lich_kham = 1;
        $(".ajax_img_loading").show();
        $.ajax({
            type: "POST",
            url: full_url+"/send_lichkham/",
            data: {"lich_kham" : id},
            success: function (data) {
                icheck_lich_kham = 0;
                $(".ajax_img_loading").hide();
                try {
                    data = JSON.parse(data);
                    $("#capcha_hd").val(data.new_cap);
                    $(".dv-paypal").show();
                    $(".dv-paypal-cont").show();
                    TIEN_paypal(data.thanhtien, data.id);
                    $( ".paypal_form_new" ).click();
                } catch (e) {
                  alert("ERR!");
                  console.log(data)
                }
            }
        });
    }
    return false;
}
</script>