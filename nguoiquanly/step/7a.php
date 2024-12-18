<div class="box-body table-responsive no-padding table-danhsach-cont">
  <table class="table table-hover table-danhsach">
    <tbody>
      <tr>
        <th class="w50 text-center">
          <label>
            <input type='checkbox' class='minimal cls_showxoa_all'> Xóa
          </label>
        </th>
        <th class="w80 text-center">STT</th>
        <th>Tiêu đề</th>
        <th class="w200">File</th>
        <th class="w90 text-center">Hiển thị</th>
        <th class="w120 text-center">Tác vụ</th>
      </tr>
<?php
  $cl = 0;
  while($rows = mysql_fetch_assoc($sql))
  {
    $ida                = SHOW_text($rows['id']);
    foreach ($rows as $key => $value) {
      ${$key}         = SHOW_text($value);
    }
    $catasort           = number_format(SHOW_text($rows['catasort']),0,',','.');

?>
      <tr>
        <td class="text-center">
          <input name='xoa_gr_arr_<?=$cl?>' type='checkbox' class='minimal cls_showxoa'>
          <input name='key_<?=$cl?>' type='hidden' value="<?=$key ?>">
        </td>
        <td class="text-center">
          <input name="idme<?=$cl?>" value="<?=$ida?>" type="hidden">
          <input type="text" class="text-center" name="sortby<?=$cl?>" value="<?=$catasort?>" onkeyup="SetCurrency(this)">
        </td>
        <td>
          <div class="name">
            <input type="text" name="ncata_vi<?=$cl?>" class="cls_emty_name" value="<?=$tenbaiviet_vi?>" placeholder="Tiêu đề (<?=_lang_nb1_key ?>)">
          </div>
          <?php if($lang_nb2){ ?>
          <div class="name" id="en">
            <input type="text" name="ncata_en<?=$cl?>" class="" value="<?=$tenbaiviet_en ?>" placeholder="Tiêu đề (<?=_lang_nb2_key ?>)">
          </div>
          <?php } ?>
          <a class="a_nguoidang" href="?module=quan-ly-thanh-vien&action=danh-sach-thanh-vien-quan-tri&edit=<?=$id_user ?>">Đăng bởi: <?=$members_dang[$id_user]['hoten'] ?> (<?=$members_dang[$id_user]['tentruycap'] ?>) - <?=date('d-m-Y H:i:s', $rows['ngaydang']) ?></a>

          <?php if(isset($_SESSION['admin'])){ ?>
          <label>
            <input name='coppy_row<?=$cl?>' type='checkbox' class='minimal'> [Coppy]
          </label>
          <?php } ?>
        </td>
        <td>
          <?=!empty($dowload) ? '<p style="margin: 7px 0;"><a href="'.$fullpath."/datafiles/files/".$dowload.'" download>'.$dowload.'</a></p>' : '' ?>
        </td>
        <td class="text-center">
          <div id="cus" class="cus_menu">
            <label><input type="checkbox" class='minimal' name="showhi_<?=$cl ?>" value="1" <?=(($showhi == 1) ? "checked='checked'" : "" )?> ></label>
            </div>
        </td>
        <td class="text-center">
            <a href="<?=$url_page ?>&step=<?=$step?>&id_step=<?=$id_step?>&edit=<?=$ida?>" title="Cập nhật"><i class="fa fa-pencil-square-o"></i></a>
            <a href="<?=$url_page.'&del=ok&catalogid='.$ida.'&key='.$key ?>&step=<?=$step?>&id_step=<?=$id_step?>&token=<?=GET_token() ?>" class="do"  onclick="return confirm('Bạn thật sự muốn xóa?')"><i class="fa fa-times"></i></a>
        </td>
      </tr>
      <?php
            $cl++;
          }
      ?> 
    </tbody>
  </table>
  <input type='hidden' value='<?=$cl?>' name='maxvalu'>
</div>