<?php
  $table = '#_danhmuc';
  $id    = isset($_GET['edit']) && is_numeric($_GET['edit']) ? SHOW_text($_GET['edit']) : 0;
  $name_title    = $step == 2 ? "Danh sách chủ đề" : "Danh sách chủ đề";
  $name_chude    = $step == 2 ? "chủ đề" : "chủ đề";
  
  if($_SERVER['REQUEST_METHOD']=='POST')
    {
      foreach ($_POST as $key => $value) {
        ${$key}           = $value;
      }
      $catasort           = str_replace(".", "", $catasort);
      $seo_title_vi       = @LAY_uutien($seo_title_vi, $tenbaiviet_vi);
      $seo_title_en       = @LAY_uutien($seo_title_en, $tenbaiviet_en);
      $seo_title_cn       = @LAY_uutien($seo_title_cn, $tenbaiviet_cn);
      $seo_title_jp       = @LAY_uutien($seo_title_jp, $tenbaiviet_jp);
      $seo_description_vi = @LAY_uutien($seo_description_vi, $tenbaiviet_vi);
      $seo_description_en = @LAY_uutien($seo_description_en, $tenbaiviet_en);
      $seo_description_cn = @LAY_uutien($seo_description_cn, $tenbaiviet_cn);
      $seo_description_jp = @LAY_uutien($seo_description_jp, $tenbaiviet_jp);
      $seo_keywords_vi    = @LAY_uutien($seo_keywords_vi, $tenbaiviet_vi);
      $seo_keywords_en    = @LAY_uutien($seo_keywords_en, $tenbaiviet_en);
      $seo_keywords_cn    = @LAY_uutien($seo_keywords_cn, $tenbaiviet_cn);
      $seo_keywords_jp    = @LAY_uutien($seo_keywords_jp, $tenbaiviet_jp);
 
    }

  if(!empty($_POST))
    {
      $seo_name                     = LAY_uutien($seo_name, $tenbaiviet_vi);
      $hinhanh                      = UPLOAD_image("icon", "../".$duongdantin."/", time());
      $icon_hover                   = UPLOAD_image("icon_hover", "../".$duongdantin."/", time());

      $_POST['ngaydang']             = time();
      $_POST['duongdantin']          = $duongdantin;
      $_POST['seo_title_vi']         = @$seo_title_vi;
      $_POST['seo_title_en']         = @$seo_title_en;
      $_POST['seo_title_cn']         = @$seo_title_cn;
      $_POST['seo_title_jp']         = @$seo_title_jp;
      $_POST['seo_description_vi']   = @$seo_description_vi;
      $_POST['seo_description_en']   = @$seo_description_en;
      $_POST['seo_description_cn']   = @$seo_description_cn;
      $_POST['seo_description_jp']   = @$seo_description_jp;
      $_POST['seo_keywords_vi']      = @$seo_keywords_vi;
      $_POST['seo_keywords_en']      = @$seo_keywords_en;
      $_POST['seo_keywords_cn']      = @$seo_keywords_cn;
      $_POST['seo_keywords_jp']      = @$seo_keywords_jp;

      $_POST['id_step']              = @$id_step;
      $_POST['step']                 = @$step;
      $_POST['catasort']             = @$catasort;
      $_POST['p1_vi']                = @$p1_vi;
      $_POST['p1_en']                = @$p1_en;
      $_POST['p1_cn']                = @$p1_cn;
      $_POST['p1_jp']                = @$p1_jp;


      if($hinhanh != false)
        {
          $_POST['icon']     = $hinhanh;
          if ($_REQUEST['anh_sp'] != '') {
            $anh_sp = explode("x", $_REQUEST['anh_sp']);
            $wid = $anh_sp[0];
            $hig = $anh_sp[1];
            TAO_anhthumb("../" . $duongdantin . "/" . $hinhanh, "../" . $duongdantin . "/thumb_" . $hinhanh, $wid, $hig, "images/trang_" . $wid . "_" . $hig . ".png");
          } else {
              TAO_anhthumb("../" . $duongdantin . "/" . $hinhanh, "../" . $duongdantin . "/thumb_" . $hinhanh, 1600, 1000);
          }
         if($id > 0){
            //xoa anh
              $sql_thongtin = DB_que("SELECT * FROM `$table` WHERE `id`='".$_GET['edit']."' LIMIT 1");
              @unlink("../".mysql_result($sql_thongtin, 0, "duongdantin")."/".mysql_result($sql_thongtin, 0, "icon"));
              @unlink("../".mysql_result($sql_thongtin, 0, "duongdantin")."/thumb_".mysql_result($sql_thongtin, 0, "icon"));
            //end
          }
        }

      if($icon_hover != false)
        {
          $_POST['icon_hover']     = $icon_hover;
          if ($_REQUEST['anh_sp'] != '') {
              $anh_sp = explode("x", $_REQUEST['anh_sp']);
              $wid = $anh_sp[0];
              $hig = $anh_sp[1];
              TAO_anhthumb("../" . $duongdantin . "/" . $icon_hover, "../" . $duongdantin . "/thumb_" . $icon_hover, $wid, $hig, "images/trang_" . $wid . "_" . $hig . ".png");
          } else {
              TAO_anhthumb("../" . $duongdantin . "/" . $icon_hover, "../" . $duongdantin . "/thumb_" . $icon_hover, 1600, 1000, "images/trang_500_500.png");
          }
          if($id > 0){
            //xoa anh
              $sql_thongtin = DB_que("SELECT * FROM `$table` WHERE `id`='".$_GET['edit']."' LIMIT 1");
              @unlink("../".mysql_result($sql_thongtin, 0, "duongdantin")."/".mysql_result($sql_thongtin, 0, "icon_hover"));
              @unlink("../".mysql_result($sql_thongtin, 0, "duongdantin")."/thumb_".mysql_result($sql_thongtin, 0, "icon_hover"));
            //end
          }
        }
   

      if($id == 0){
        $id                           = ACTION_db($_POST, $table , 'add',array("themmoi", "anh_sp", "mutifile"),NULL);
        
        $_SESSION['show_message_on'] =  "Thêm <?=$name_chude ?> thành công!";
        THEM_seoname($id, $seo_name, $table, $step, "0");
      }else{
        ACTION_db($_POST, $table, 'update', array("themmoi", "anh_sp", "mutifile"), "`id` = ".$id);
        
        $_SESSION['show_message_on'] =  "Cập nhật <?=$name_chude ?> thành công!";
        THEM_seoname($id, $seo_name, $table, $step, "1");
      }
        LOCATION_js($url_page."&step=".@$step."&id_step=".@$id_step."&edit=".$id);
        exit();
    }
 
    
  if($id > 0)
    {
      $sql_se             = DB_que("SELECT * FROM `$table` WHERE `id`='".$id."' LIMIT 1");
      $sql_se             = mysql_fetch_array($sql_se);
      foreach ($sql_se as $key => $value) {
        ${$key} = SHOW_text($value);
      }
      $catasort           = number_format($catasort,0,',','.');
      if($icon != '') 
        $icon   = "<img src='../$duongdantin/thumb_$icon' width='250px' style='display:block'>";

      if($icon_hover != '') 
        $icon_hover   = "<img src='../$duongdantin/thumb_$icon_hover' width='250px' style='display:block'>";
    }
    else 
    {
      $catasort   = layCatasort($table, '`step` = '.SHOW_text($step));
      $catasort   = number_format(SHOW_text($catasort),0,',','.');
      $id_parent  = 0;
      $edit       = 0;
    }
  $thongtin_step = DB_que("SELECT * FROM `#_step` WHERE `id` = '$step' LIMIT 1");
  $thongtin_step = mysql_fetch_assoc($thongtin_step);

  
?>

<section class="content-header">
  <h1><?php if(isset($_SESSION['admin'])){ ?><a style="cursor: pointer;" onclick="AUTO_dich(this)">[NGÔN NGỮ]</a> <a class="js_okkk" style="cursor: pointer;" onclick="OKKK_by_lh()">[UPDATE] </a> <?php } ?><?=$name_title ?></h1> 
  <ol class="breadcrumb">
      <li><a href="<?=$fullpath_admin ?>"><i class="fa fa-home"></i> Trang chủ</a></li>
      <li class="active">Quản lý <?=$name_chude ?></li>
  </ol>
</section>
<form id="form_submit" name="form_submit" action="" method="post"  enctype='multipart/form-data'>
  <input type="hidden" name="anh_sp" value="<?=$step == 2 ? "560x300" : (!empty($thongtin_step['size_img_dm']) && $thongtin_step['size_img_dm'] != '' ? $thongtin_step['size_img_dm'] : '') ?>">

  <section class="content form_create">
    <div class="row">
      <section class="col-lg-12">
        <?php include _source."mesages.php"; ?>
        <div class="box">
          <div class="box-header with-border">
            <h2 class="h2_title">
                <i class="fa fa-pencil-square-o"></i><?=GETNAME_step($step)?> > <?=$id > 0 ? 'Sửa' : 'Thêm' ?> <?=$name_chude ?>
            </h2>
            <h3 class="box-title box-title-td pull-right">
                <button onclick="return checkSubmit()" type="submit" class="btn btn-primary"><i class="fa fa-floppy-o"></i> <?=luu_lai ?></button>
                <a href="<?=$url_page ?>&them-moi=true&step=<?=@$step?>&id_step=<?=@$id_step?>" class="btn btn-primary"><i class="fa fa-plus"></i> Thêm mới</a>
                <a href="<?=$url_page ?>&step=<?=@$step?>&id_step=<?=@$id_step?>" class="btn btn-primary"><i class="fa fa-sign-out"></i> Thoát</a>
            </h3>
          </div>
          <div class="nav-tabs-custom">
            <?php include _source."lang.php" ?>
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
                
                <div class="form-group">
                  <label>Tên <?=$name_chude ?></label>
                  <input type="text" class="form-control" value="<?=!empty($tenbaiviet_vi) ? SHOW_text($tenbaiviet_vi) : ''?>" name="tenbaiviet_vi" id="tenbaiviet_vi">
                </div>
                <!-- <div class="form-group">
                  <label>Tên hiển thị</label>
                  <input type="text" class="form-control" value="<?=!empty($p1_vi) ? SHOW_text($p1_vi) : ''?>" name="p1_vi" id="p1_vi">
                </div> -->
                
                <?php if(in_array($step, $st_danhmuc_mt)){ ?>
                <div class="form-group">
                  <label>Mô tả</label>
                  <textarea id="mota_vi" name="mota_vi" class="paEditor" ><?=!empty($mota_vi) ? SHOW_text($mota_vi) : ''?></textarea>
                </div>
                <?php } ?>
                <?php if(in_array($step, $st_danhmuc_nd)){ ?>
                <div class="form-group">
                  <label>Nội dung</label>
                  <textarea id="noidung_vi" name="noidung_vi" class="paEditor" rows="10" cols="80"><?=!empty($noidung_vi) ? SHOW_text($noidung_vi) : ''?></textarea>
                </div>
                <?php } ?>

                <div class="form-group">
                  <label>Seo Title</label>
                  <input type="text" class="form-control" name="seo_title_vi" value="<?=!empty($seo_title_vi) ? Show_text($seo_title_vi) : "" ?>">
                </div>

                <div class="form-group">
                  <label>Seo Description</label>
                  <input type="text" class="form-control" name="seo_description_vi" value="<?=!empty($seo_description_vi) ? Show_text($seo_description_vi) : "" ?>">
                </div>

                <div class="form-group">
                  <label>Seo keywords</label>
                  <input type="text" class="form-control" name="seo_keywords_vi" value="<?=!empty($seo_keywords_vi) ? Show_text($seo_keywords_vi) : "" ?>">
                </div>
              </div>
              <?php if($lang_nb2){ ?>
              <div class="tab-pane" id="tab_2">
                <div class="form-group">
                  <label>Tên <?=$name_chude ?> (<?=_lang_nb2_key ?>)</label>
                  <input type="text" class="form-control" value="<?=!empty($tenbaiviet_en) ? SHOW_text($tenbaiviet_en) : ''?>" name="tenbaiviet_en" id="tenbaiviet_en">
                </div>
                <!-- <div class="form-group">
                  <label>Tên hiển thị (<?=_lang_nb2_key ?>)</label>
                  <input type="text" class="form-control" value="<?=!empty($p1_en) ? SHOW_text($p1_en) : ''?>" name="p1_en" id="p1_en">
                </div> -->

                
                <?php if(in_array($step, $st_danhmuc_mt)){ ?>
                <div class="form-group">
                  <label>Mô tả (<?=_lang_nb2_key ?>)</label>
                  <textarea id="mota_en" name="mota_en" class="paEditor"><?=!empty($mota_en) ? SHOW_text($mota_en) : ''?></textarea>
                </div>
                <?php } ?>
                <?php if(in_array($step, $st_danhmuc_nd)){ ?>
                <div class="form-group">
                  <label>Nội dung (<?=_lang_nb2_key ?>)</label>
                  <textarea id="noidung_en" name="noidung_en" class="paEditor"><?=!empty($noidung_en) ? SHOW_text($noidung_en) : ''?></textarea>
                </div>
                <?php } ?>

                <div class="form-group">
                  <label>Seo Title (<?=_lang_nb2_key ?>)</label>
                  <input type="text" class="form-control" name="seo_title_en" value="<?=!empty($seo_title_en) ? Show_text($seo_title_en) : "" ?>">
                </div>

                <div class="form-group">
                  <label>Seo Description (<?=_lang_nb2_key ?>)</label>
                  <input type="text" class="form-control" name="seo_description_en" value="<?=!empty($seo_description_en) ? Show_text($seo_description_en) : "" ?>">
                </div>

                <div class="form-group">
                  <label>Seo keywords (<?=_lang_nb2_key ?>)</label>
                  <input type="text" class="form-control" name="seo_keywords_en" value="<?=!empty($seo_keywords_en) ? Show_text($seo_keywords_en) : "" ?>">
                </div>
              </div>
              <?php } ?>
              <?php if($lang_nb3){ ?>
              <div class="tab-pane" id="tab_3">
                <div class="form-group">
                  <label>Tên <?=$name_chude ?> (<?=_lang_nb3_key ?>)</label>
                  <input type="text" class="form-control" value="<?=!empty($tenbaiviet_cn) ? SHOW_text($tenbaiviet_cn) : ''?>" name="tenbaiviet_cn" id="tenbaiviet_cn">
                </div>

                <?php if(in_array($step, $st_danhmuc_mt)){ ?>
                <div class="form-group">
                  <label>Mô tả (<?=_lang_nb3_key ?>)</label>
                  <textarea id="mota_cn" name="mota_cn" rows="10" cols="80"><?=!empty($mota_cn) ? SHOW_text($mota_cn) : ''?></textarea>
                </div>
                <?php } ?>
                <?php if(in_array($step, $st_danhmuc_nd)){ ?>
                <div class="form-group">
                  <label>Nội dung (<?=_lang_nb3_key ?>)</label>
                  <textarea id="noidung_cn" name="noidung_cn" rows="10" cols="80"><?=!empty($noidung_cn) ? SHOW_text($noidung_cn) : ''?></textarea>
                </div>
                <?php } ?>

                <div class="form-group">
                  <label>Seo Title (<?=_lang_nb3_key ?>)</label>
                  <input type="text" class="form-control" name="seo_title_cn" value="<?=!empty($seo_title_cn) ? Show_text($seo_title_cn) : "" ?>">
                </div>

                <div class="form-group">
                  <label>Seo Description (<?=_lang_nb3_key ?>)</label>
                  <input type="text" class="form-control" name="seo_description_cn" value="<?=!empty($seo_description_cn) ? Show_text($seo_description_cn) : "" ?>">
                </div>

                <div class="form-group">
                  <label>Seo keywords (<?=_lang_nb3_key ?>)</label>
                  <input type="text" class="form-control" name="seo_keywords_cn" value="<?=!empty($seo_keywords_cn) ? Show_text($seo_keywords_cn) : "" ?>">
                </div>
              </div>
              <?php } ?>
              <?php if($lang_nb4){ ?>
              <div class="tab-pane" id="tab_4">
                <div class="form-group">
                  <label>Tên <?=$name_chude ?> (<?=_lang_nb4_key ?>)</label>
                  <input type="text" class="form-control" value="<?=!empty($tenbaiviet_jp) ? SHOW_text($tenbaiviet_jp) : ''?>" name="tenbaiviet_jp" id="tenbaiviet_jp">
                </div>

                <?php if(in_array($step, $st_danhmuc_mt)){ ?>
                <div class="form-group">
                  <label>Mô tả (<?=_lang_nb4_key ?>)</label>
                  <textarea id="mota_jp" name="mota_jp" rows="10" cols="80"><?=!empty($mota_jp) ? SHOW_text($mota_jp) : ''?></textarea>
                </div>
                <?php } ?>
                <?php if(in_array($step, $st_danhmuc_nd)){ ?>
                <div class="form-group">
                  <label>Nội dung (<?=_lang_nb4_key ?>)</label>
                  <textarea id="noidung_jp" name="noidung_jp" rows="10" cols="80"><?=!empty($noidung_jp) ? SHOW_text($noidung_jp) : ''?></textarea>
                </div>
                <?php } ?>

                <div class="form-group">
                  <label>Seo Title (<?=_lang_nb4_key ?>)</label>
                  <input type="text" class="form-control" name="seo_title_jp" value="<?=!empty($seo_title_jp) ? Show_text($seo_title_jp) : "" ?>">
                </div>

                <div class="form-group">
                  <label>Seo Description (<?=_lang_nb4_key ?>)</label>
                  <input type="text" class="form-control" name="seo_description_jp" value="<?=!empty($seo_description_jp) ? Show_text($seo_description_jp) : "" ?>">
                </div>

                <div class="form-group">
                  <label>Seo keywords (<?=_lang_nb4_key ?>)</label>
                  <input type="text" class="form-control" name="seo_keywords_jp" value="<?=!empty($seo_keywords_jp) ? Show_text($seo_keywords_jp) : "" ?>">
                </div>
              </div>
              <?php } ?>
            </div>
          </div>
        </div>
      </section>
      <section class="col-lg-12">
        <div class="box p10">
          <div class="form-group">
            <label>Nằm trong</label>
            <?=LAY_chude($id_parent, $step, 'id_parent', 'form-control SlectBox', 0, $id_step, $id , 'true', 0) ?>
          </div>
          <div class="form-group">
            <label>Seo name <a data-tooltip="Đường dẫn chuẩn bao gồm các ký tự [a-zA-Z0-9-]."> </a></label>
            <input type="text" class="form-control" name="seo_name" id="seo_name" value="<?=!empty($seo_name) ? Show_text($seo_name) : "" ?>">
            <label class="noweight noweight-top checkbox-mini">
              <input class="minimal auto_get_link" type="checkbox" <?=empty($id) || $id == 0 ? 'checked="checked"' : '' ?>> Lấy đường dẫn tự động
            </label>
          </div>

          <div class="form-group">
            <label for="exampleInputFile">Hình đại diện <?=$step == 2 ? '(560px x 300px)' : (!empty($thongtin_step['size_img_dm']) && $thongtin_step['size_img_dm'] != '' ? "(".str_replace("x", "px x ", $thongtin_step['size_img_dm'])."px)" : '') ?></label>
            <?=!empty($icon) ? $icon : '' ?>
            <input name="icon" type="file" class="form-control" id="exampleInputFile">
          </div>
          <?php if($id_step == 2){ ?>
          <!-- <div class="form-group">
            <label for="exampleInputFile">Hình đại diện (560px x 300px)</label>
            <?=!empty($icon_hover) ? $icon_hover : '' ?>
            <input name="icon_hover" type="file" class="form-control" id="exampleInputFile">
          </div> -->
          <?php } ?>


          

          <div class="form-group">
            <label>Số thứ tự</label>
            <input type="text" class="form-control" name="catasort" id="catasort" value="<?=SHOW_text($catasort)?>" onkeyup="SetCurrency(this)">
          </div>

          <div class="form-group">
            <label class="mr-20">
              <input type="radio" name="showhi" class="minimal" value="1" <?=(isset($_GET['edit'])) ? LAY_checked($showhi, 1) : 'checked' ?>> Hiện thị
            </label>
            <label>
              <input type="radio" name="showhi" class="minimal" value="2" <?=(isset($_GET['edit'])) ? LAY_checked($showhi, 2) : '' ?>> Ẩn
            </label>
          </div>
        </div>
      </section>
    </div>
  </section>

  <div class="box-header mb-60">
  <h3 class="box-title box-title-td pull-right">
    <button onclick="return checkSubmit()" type="submit" class="btn btn-primary"><i class="fa fa-floppy-o"></i> <?=luu_lai ?></button>
    <a href="<?=$url_page ?>&them-moi=true&step=<?=@$step?>&id_step=<?=@$id_step?>" class="btn btn-primary"><i class="fa fa-plus"></i> Thêm mới</a>
    <a href="<?=$url_page ?>&step=<?=@$step?>&id_step=<?=@$id_step?>" class="btn btn-primary"><i class="fa fa-sign-out"></i> Thoát</a>
  </h3>
</div>
</form>

<script>
  function checkSubmit(){
    if($("#tenbaiviet_vi").val().trim() == '')
    {
      alert("Hãy nhập tên <?=$name_chude ?>!");
      $("#tenbaiviet_vi").focus();
      return false;
    }
    document.getElementById("form_submit").submit();
  }
</script>
 
<script>
    function OKKK_by_lh(){
        var tenbaiviet_vi = $('input[name="tenbaiviet_vi"]').val();
        $('input[name="seo_title_vi"]').val(tenbaiviet_vi);
        $('input[name="seo_description_vi"]').val(tenbaiviet_vi);
        $('input[name="seo_keywords_vi"]').val(tenbaiviet_vi);
        var tenbaiviet_en = $('input[name="tenbaiviet_en"]').val();
        $('input[name="seo_title_en"]').val(tenbaiviet_en);
        $('input[name="seo_description_en"]').val(tenbaiviet_en);
        $('input[name="seo_keywords_en"]').val(tenbaiviet_en);

        var str = convertVietnamese2(tenbaiviet_vi);
        $("#seo_name").val(str);
        $(".js_okkk").html("[OK]");
    }
</script>