<?php
$redis_on_off = "off";//"off";
$cache_file   = "off";
if($redis_on_off    == "on") {
    $redis_ip       = gethostbyname($_SERVER['HTTP_HOST']);
    $redis_pass     = "";
    $redis_port     = "6379";
    $co_so_du_lieu  = 1;
    $redis_id       = str_replace(".", "_", $_SERVER['HTTP_HOST']);
    try {
        if(class_exists('Redis')) {
            $ob_redis   = new Redis();
            $ob_redis->connect($redis_ip, $redis_port, $co_so_du_lieu);
            $ob_redis->auth($redis_pass);
            if($ob_redis->ping() != "+PONG") {
                $redis_on_off     = "off";
            }
        }
    }
    catch(RedisException $e) {
        // echo $e->getMessage();
        $redis_on_off     = "off";
    }

}

function SET_redis($key, $value) {
    global $ob_redis, $redis_id, $redis_on_off, $cache_file, $is_connect;
    $key = empty($key) ? "wyc_pa" : strtolower($key);
    if($ob_redis === NULL || $redis_on_off != "on") { 
        // ghi file
        if($cache_file == "on" && $is_connect == "on") {
            $thumuc_check   = explode("@", $key);
            $thumuc         = $thumuc_check[0];
            if($thumuc != "") {
                if (!is_dir('datafiles/cache')) {
                    mkdir('datafiles/cache');
                    chmod('datafiles/cache', 0777);
                }
                if (!is_dir('datafiles/cache/'.$thumuc)) {
                    mkdir('datafiles/cache/'.$thumuc);
                    chmod('datafiles/cache/'.$thumuc, 0777);
                }
                if(!empty($thumuc_check[1]) && $thumuc_check[1] != "") {
                    $path = "datafiles/cache/".$thumuc."/".$thumuc_check[1].".txt";
                    if(!file_exists($path)) {
                        file_put_contents($path, $value);
                    }
                }
            }
        }
        // end 
        return;
    }
    $time_luu = 864000; //10 day
    $ob_redis->setex($redis_id.'@' . $key, $time_luu, $value);

}

function GET_redis($key) {
    global $ob_redis, $redis_id, $redis_on_off, $cache_file;
    $key = empty($key) ? "wyc_pa" : strtolower($key);
    if($ob_redis === NULL){
        // doc file
        if($cache_file == "on") {
            $thumuc_check   = explode("@", $key);
            if(!empty($thumuc_check[0]) && !empty($thumuc_check[1])) {
                $path = "datafiles/cache/".$thumuc_check[0]."/".$thumuc_check[1].".txt";
                if(file_exists($path)) {
                    return file_get_contents($path);
                }
            }
        }
        // end 
        return;  
    } 
    return $ob_redis->get($redis_id.'@' . $key);
}

function CHECK_redis($key) {
    global $ob_redis, $redis_id, $redis_on_off;
    $key = empty($key) ? "wyc_pa" : strtolower($key);
    if($ob_redis === NULL || $redis_on_off != "on") return false;
    return $ob_redis->exists( $redis_id.'@' . $key);
}

function DEL_redis($key = ''){
    global $ob_redis, $redis_id, $redis_on_off;
    if($redis_on_off != "on") return false;

    $key    = empty($key) ? "" : strtolower($key);
    $pathen = $redis_id.'@*';
    if($key != "") {
        $pathen .= $key . '*';
    }
    @$ob_redis->del($ob_redis->keys($pathen));
}
function DEL_redis_table($table, $key = ''){
    global $ob_redis, $redis_id, $redis_on_off, $cache_file;
    $table      = str_replace("#_", "", $table);
    if($table   == "" || $redis_on_off != "on") { 
        if($cache_file == "on") {
            $table      = str_replace("`", "", $table);
            if($table != "") {
                XOA_thumuc("datafiles/cache/".$table);
            }
        }
        return;
    }
    $key        = empty($key) ? "" : strtolower($key);
    $pathen     = $redis_id.'@'.$table.'@*';
    if($key != "") {
        $pathen .= $key . '*';
    }
    @$ob_redis->del($ob_redis->keys($pathen));
}
function XOA_thumuc($dirname) {
    if (!file_exists($dirname)) {
        return false;
    }
    if (is_file($dirname)) {
        return unlink($dirname);
    }
    $dir = dir($dirname);
    while (false !== $entry = $dir->read()) {
        if ($entry == '.' || $entry == '..') {
            continue;
        }
        XOA_thumuc("$dirname/$entry");
    } 
    $dir->close();
    // return XOA_thumuc($dirname);
}
?>