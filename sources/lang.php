<?php 
  $las_url    = "";
  if($motty  != "") $las_url    .= "/".$motty;
  if($haity  != "") $las_url    .= "/".$haity;
  if($baty   != "") $las_url    .= "/".$baty;
  if($bonty  != "") $las_url    .= "/".$bonty;
  if($namty  != "") $las_url    .= "/".$namty;
  // if($lang == 'vi'){
?>
<ul class="right_header">
  <li><a href="<?=$fullpath.$las_url."/" ?>">Vie</a></li>
  <li>|</li>
  <li><a href="<?=$fullpath.'/en'.$las_url."/" ?>">Eng</a></li>
  <div class="clr"></div>
</ul>