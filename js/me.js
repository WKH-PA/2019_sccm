function CHECK_divtop(cls){
    var scrollTop     = $(window).scrollTop();
    var elementOffset = $(cls).offset().top;
    var distance      = (elementOffset - scrollTop); 
    return distance;
}
var send_d_dangnhap = 0;
function check_dangnhap_v2(text_false) {
var check = 0;
$(".cls_data_check_form_check_dangky").each(function(){
    var val     = $(this).val().trim();
    var id      = $(this).attr('id');
    var rong    = $(this).attr('data-rong');
    var email   = $(this).attr('data-email');
    var place   = $(this).attr('placeholder');

    var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if(rong == 1 && (val == "" || val == place)){
        alert($(this).attr('data-msso'));
        $(this).focus();
        $(".ajax_img_loading").hide();
        check = 1;
        send_d_dangnhap = 0;
        return false;
    } 
    else if(email == 1 && !regex.test(val) && val != ""){
        alert($(this).attr('data-msso1'));
        $(this).focus();
        $(".ajax_img_loading").hide();
        check = 1;
        send_d_dangnhap = 0; 
        return false;
    }
});

if(check == 0){
  if(send_d_dangnhap == 0){
    send_d_dangnhap = 1;
    $(".img_load_from_dktv").show();
    var dataString = $('#dangnhap').serializeArray();
    $.ajax({
        type: "POST",
        url: full_url +"/check-dang-nhap/",
        data: dataString,
        success: function(response)
        {
          var obj = jQuery.parseJSON(response);
          if(obj.error > 0){
              alert(text_false);
          }else{
            window.location.reload();
          }
          $(".img_load_from_dktv").hide();
          send_d_dangnhap = 0;
        }
    });
  }
}
}
var send_ajax = 0;

function ADD_sao(idsp, id){
  if($(".ad_sao_"+idsp).length > 0) {
    $(".ad_sao_"+idsp).removeClass('checked');
    for (var i = 1; i <= id; i++) {
      $(".ad_sao_"+idsp+"_"+i).addClass('checked');
    }
  }
};
$(function(){
  $(".ad_sao").each(function(){
    var idsp = $(this).attr('data');
    var sao  = $(this).attr('data-sao');
    ADD_sao(idsp, sao);
  });         
});
function ADD_sao_num(idsp, sao){
  if(send_ajax == 1) return false;
  if($(".ad_sao_"+idsp).length > 0) {
    $(".ad_sao_"+idsp).parent().append('<img src="images/load1.gif" alt="">');
      send_ajax = 1;
      $.ajax({
        type: "POST",
        url: full_url+"/add-sao/",
        data: {"idsp": idsp, "sao": sao},
        success: function (data) {
          send_ajax = 0;
          $(".ad_sao_"+idsp).parent().find('img').remove();
          $(".ad_sao_"+idsp).removeClass("ad_sao_"+idsp);
          alert(data);
        }
    });
  };
};
function SEARCH_product() {
    if ($(".dv-timkiem-active").length == 0) $(".dv-timkiem").addClass("dv-timkiem-active");
    else $(".dv-timkiem").removeClass("dv-timkiem-active");
    event.stopPropagation();
}

function TIMKIEM_tinrao(url) {
    var key_timkiem = $(".key_timkiem").val().trim().replace(/ /g, "+");
    var key_linhvuc = $(".key_linhvuc").val();
    var key_sanpham = $(".key_sanpham").val();
    var key_khuvuc = $(".key_khuvuc").val();
    window.location.href = url + "/?key=" + key_timkiem + "&lv=" + key_linhvuc + "&sp=" + key_sanpham + "&kv=" + key_khuvuc;
}

function SEARCH_timkiem(url, cls) {
    if ($(cls).val() == '')
        $(cls).focus();
    else
        window.location.href = url + $(cls).val().trim().replace(/ /g, "+");
}

$('.input_search_enter').keypress(function (event) {
    var keycode = (event.keyCode ? event.keyCode : event.which);
    if (keycode == '13') {
        var cls = $(this).attr('data');
        var href = $(this).attr('data-href');
        SEARCH_timkiem(href, cls);
    }
});
var is_key_check = '';

function NOPHOSO_ungtuyen(id, tieude, noidung, key) {
    $(".dv-popup-cont-child .nd textarea.nd_guimail").hide();
    if (key == 'gtbb') {
        $(".noidung_popup").height(80);
        $(".nd_guimail").height(100);
        $(".dv-popup-cont-child .nd textarea.nd_guimail").show();
    } else {
        $(".noidung_popup").height(210);
    }
    $(".dv-popup-cont-child h3 span").html(tieude);
    if (is_key_check != key) {
        $(".dv-popup-cont-child .nd textarea").val('');
        is_key_check == key
    }

    $(".dv-popup-cont-child .nd textarea.noidung_popup").attr('placeholder', noidung);
    $(".key_send").val(key);
    $(".id_send").val(id);
    $(".dv-popup-cont").show();
    $(".dv-popup-cont-child").show();
}

function DONG_popup() {
    $(".dv-popup-cont").hide();
    $(".dv-popup-cont-child").hide();
}

function GUI_noidung_popup() {
    $(".load_popup").show();
    if ($(".noidung_popup").val() == '') {
        $(".noidung_popup").focus();
        $(".load_popup").hide();
    } else {
        $.ajax({
            type: "POST",
            url: "",
            data: {
                "id_send": $(".id_send").val(),
                "key_send": $(".key_send").val(),
                "nd_guimail": $(".nd_guimail").val(),
                "noidung_popup": $(".noidung_popup").val(),
                "cap_popup": $('#cap_popup').val(),
                "action_ajax": "send_popup"
            },
            success: function (data) {
                alert(data);
                $(".load_popup").hide();
                DONG_popup();
            }
        });
    }
}
var m_send_d = 0;
function DANGKY_email(url, name = '') {
    if(m_send_d == 0){
        m_send_d = 1;
        $(".ajax_img_loading_mail").show();
        var formData = new FormData($('form#dk_email_nhantin')[0]);
        formData.append('inputfile', $('#inputfile')[0].files[0]);
        $.ajax({
            type: "POST",
            url: url + "/dang-ky-mail/",
            data: formData,
            dataType: 'text',
            cache: false,
            contentType: false,
            processData: false,
            success: function(response)
            {
                try {
                    data = JSON.parse(response);
                    $("#capcha_hd").val(data.new_cap);
                    alert(data.message);
                    $("#ip_sentmail").val('');
                    $("#ip_sentmail_name").val('');
                    $("#ip_sentmail_phone").val('');
                    if(name != "" && $(".is_file_home").length > 0) {
                        $(".is_file_home").text(name);
                    }
                } catch (e) {
                    alert("ERR!");
                }
                    // console.log(response)
                $("#ip_sentmail").focus()
                $(".ajax_img_loading_mail").hide();
                m_send_d = 0;
            }
        });
    }

    // var v_email = $("#ip_sentmail").val();
    // var v_name  = $("#ip_sentmail_name").val();
    // var v_phone = $("#ip_sentmail_phone").val();
    // $.ajax({
    //     type: "POST",
    //     url: url + "/dang-ky-mail/",
    //     data: {
    //         "v_email": v_email,
    //         "v_name": v_name,
    //         "v_phone": v_phone,
    //         "capcha_hd": $('#capcha_hd').val(),
    //         "action_ajax": "dang-ky-email"
    //     },
    //     success: function (data) {
    //         try {
    //             data = JSON.parse(data);
    //             $("#capcha_hd").val(data.new_cap);
    //             alert(data.message);
    //             $("#ip_sentmail").val('');
    //             $("#ip_sentmail_name").val('');
    //             $("#ip_sentmail_phone").val('');
    //         } catch (e) {
    //             alert("ERR!");
    //             console.log(data)
    //         }
    //         $("#ip_sentmail").focus()
    //     }
    // });
}

var check_guisodt = 0;

function GUI_sodienthoai(url) {
    var v_phone = $("#s_dienthoai").val();
    var v_name = $("#ip_sentmail_name").val();
    $(".ajax_img_loading").show();
    if (!CHECK_phone("#s_dienthoai")) {
        $("#s_dienthoai").focus();
        alert($("#s_dienthoai").attr('err'));
        $(".ajax_img_loading").hide();
    } else {
        if (check_guisodt == 0) {
            check_guisodt = 1;
            $.ajax({
                type: "POST",
                url: url + "/dang-ky-phone/",
                data: {
                    "v_phone": v_phone,
                    "v_name": v_name,
                    "capcha_hd": $('#capcha_hdphone').val(),
                    "action_ajax": "dang-ky-phone"
                },
                success: function (data) {
                    $(".ajax_img_loading").hide();
                    try {
                        data = JSON.parse(data);
                        $("#capcha_hdphone").val(data.new_cap);
                        alert(data.message);
                    } catch (e) {
                        console.log(data);
                    }
                    check_guisodt = 0;
                    $("#s_dienthoai").focus()
                }
            });
        }
    }

}

function addCart(urlpath, alert_dat_hang, idsp, qty = '1') {
    if (idsp == '' || idsp <= 0 || isNaN(idsp) || qty == '' || qty <= 0 || isNaN(qty)) {
        alert(alert_dat_hang);
    }
    else {
        $.ajax({
            type: "POST",
            url: urlpath + "/add-cart/",
            data: {"idsp": idsp, "qty": qty},
            success: function (data) {
                window.location.href = urlpath + "/gio-hang/";
            }
        });
    }
}

function GOTO_sport(cls) {
    var target = $(cls);
    if (target.length) {
        $('html, body').animate({
            scrollTop: target.offset().top
        }, 700);
    }
}

var is_busy = false;
var page = 1;
var stopped = false;

function LOAD_ajax_product(url, id, step, key, total, numview, id_run = 0) {
    if (is_busy == true) {
        return false;
    }
    if (stopped == true) {
        return false;
    }
    is_busy = true;
    page++;
    $(".ajax_img_loading").show();
    $.ajax(
        {
            type: 'post',
            dataType: 'text',
            url: url,
            data: {
                "page": page,
                "id": id,
                "step": step,
                "key": key,
                "numview": numview,
                "total": total,
                "id_run": id_run
            },
            success: function (result) {
                $(".dv-danhsachpto").append(result);
            }
        })
        .always(function () {
            $(".ajax_img_loading").hide();

            setTimeout(function () {
                GOTO_sport(".ajax_scron_" + page);
            }, 700);
            is_busy = false;
        });
    return false;
}

function RefreshFormMailContact(FormNameContact) {
    FormNameContact.reset();
}

var icheck_lienhe = 0;
function CHECK_send_lienhe(url, id_form, cls = '.cls_data_check_form') {
    if (icheck_lienhe == 0) {
        icheck_lienhe = 1;
        $(".ajax_img_loading").show();
        var check = 0;
        $(cls).each(function(){
            var val     = $(this).val().trim();
            var id      = $(this).attr('id');
            var rong    = $(this).attr('data-rong');
            var phone   = $(this).attr('data-phone');
            var email   = $(this).attr('data-email');
            var d_check = $(this).attr('data-check');
            var place   = $(this).attr('placeholder');

            var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            if(rong == 1 && (val == "" || val == place)){
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
            // else if(phone == 1 && !CHECK_phone(this) && val != ""){
            //     alert($(this).attr('data-msso1'));
            //     $(this).focus();
            //     $(".ajax_img_loading").hide();
            //     check = 1;
            //     icheck_lienhe = 0;
            //     return false;
            // }
            else if(d_check == 1 && !$(this).is(":checked")){
                alert($(this).attr('data-msso'));
                $(this).focus();
                $(".ajax_img_loading").hide();
                check = 1;
                icheck_lienhe = 0;
                return false;
            }
        });

        if(check == 0){
            var formData = new FormData($(id_form)[0]);
            if($('#inputfile').length > 0) {
                formData.append('inputfile', $('#inputfile')[0].files[0]);
            }
            if($('#inputfile_1').length > 0) {
                formData.append('inputfile_1', $('#inputfile_1')[0].files[0]);
            }
            $.ajax({
                type: "POST",
                url: url+"send_form/",
                data: formData,
                dataType: 'text',
                cache: false,
                contentType: false,
                processData: false,
                success: function (data) {

                    icheck_lienhe = 0;
                    $(".ajax_img_loading").hide();
                    if($("#id_token").length == 0){
                        if (data == 1) {
                            
                            $(id_form)[0].reset();
                            alert($(".lang_ok").val());
                            window.location.reload();
                            
                        }
                        else {
                            $("#mabaove").focus();
                            alert($(".lang_false").val());
                            // console.log(data);
                        }
                    }else{
                        try {
                            data = JSON.parse(data);
                            if (data.err == 1) {
                                
                                // thanh toan paypal
                                if($("#type3").length > 0 && $("#type3").is(":checked")){
                                    $(".dv-paypal").show();
                                    $(".dv-paypal-cont").show();
                                    TIEN_paypal(data.thanhtien, data.id);
                                    $( ".paypal_form_new" ).click();
                                }
                                // 
                                else {
                                    $(id_form)[0].reset();
                                    alert($(".lang_ok").val());
                                    window.location.reload();
                                }
                            }
                            else {
                                alert($(".lang_false").val());
                                window.location.reload();
                                // console.log(data);
                            }
                            $("#id_token").val(data.token);
                        } catch (e) {
                            alert("ERR#3");
                        }
                    }
                    console.log(data);
                    
                }
            });
        }
    }
    return false;
}
function updateQty_notthis(url, id) {
    var qty = $("#product-quantity-"+id).val();
    if (qty == '' || qty <= 0 || isNaN(qty) || !Number.isSafeInteger(parseFloat(qty))) {
        alert($(".cls_datafalse").val());
        window.location.reload();
    }
    else {
        $.ajax({
            type: "POST",
            url: url,
            data: {'id': id, "qty": qty, "post": "update-qty"},
            success: function (data) {
                if (data != '') {
                    if (data == "reload") {
                        window.location.reload();
                    }
                    else {
                        try {
                            var js_de = JSON.parse(data);
                            $(".td_thanhtien_" + id).html(js_de.thanhtien);
                            $(".tb_tongtien").html(js_de.tongtien);
                        } catch (e) {
                            console.log(data);
                        }

                    }
                }
            }
        });
    }
}

function updateQty(url, id, obj) {
    var qty = $(obj).val();
    if (qty == '' || qty <= 0 || isNaN(qty) || !Number.isSafeInteger(parseFloat(qty))) {
        alert($(".cls_datafalse").val());
        window.location.reload();
    }
    else {
        $.ajax({
            type: "POST",
            url: url,
            data: {'id': id, "qty": qty, "post": "update-qty"},
            success: function (data) {
                if (data != '') {
                    if (data == "reload") {
                        window.location.reload();
                    }
                    else {
                        try {
                            var js_de = JSON.parse(data);
                            $(".td_thanhtien_" + id).html(js_de.thanhtien);
                            $(".tb_tongtien").html(js_de.tongtien);
                        } catch (e) {
                            console.log(data);
                        }

                    }
                }
            }
        });
    }
}

function CHECK_phone(cls) {
    var flag = false;
    var phone = $(cls).val().trim();
    phone = phone.replace('(+84)', '0');
    phone = phone.replace('+84', '0');
    phone = phone.replace('0084', '0');
    phone = phone.replace(/ /g, '');
    if (phone != '') {
        var firstNumber = phone.substring(0, 2);
        if ((firstNumber == '09' || firstNumber == '08') && phone.length == 10) {
            if (phone.match(/^\d{10}/)) {
                flag = true;
            }
        } else if (firstNumber == '01' && phone.length == 11) {
            if (phone.match(/^\d{11}/)) {
                flag = true;
            }
        }
    }
    return flag;
}

$("body").click(function () {
    $(".dv-timkiem").removeClass("dv-timkiem-active");
});
$(".body-nohide").click(function (event) {
    event.stopPropagation();
});

function PLAY_video(id) {
    $(".video_view_top iframe").attr("src", "https://www.youtube.com/embed/" + id + "?rel=0&autoplay=1");
    setTimeout(function () {
        GOTO_sport(".id_hide_video");
    }, 200);
};
$(".menu-active a").each(function () {
    var href = $(this).attr("href");
    href = href.replace(fullpath, "");
    href = href.replace(/\//g, "");
    href = href.toLowerCase();
    var url = window.location.href;
    url = url.replace(fullpath, "");
    url = url.replace(/\//g, "");
    url = url.toLowerCase();
    if (href == url) {
        $(this).parents('.menu-active > li').eq(0).addClass("active");
        return;
    }
});

function CHECK_room(id, url) {
    var from = $(".ngayden" + id).val();
    var to = $(".ngaydi" + id).val();
    var adu = $(".nguoilon" + id).val();
    var chil = $(".tremem" + id).val();
    var pro = $(".makhuyemai" + id).val();
    var room = '';
    if (id == 1) {
        room = $(".loaiphong" + id).val();
    }
    window.location.href = url + "/check-room/?from=" + from + "&to=" + to + "&adu=" + adu + "&chil=" + chil + "&pro=" + pro + "&room=" + room;
}

function GET_diadiem(obj, cls, text, url){
    $.ajax({
      type: "POST",
      url: url,
      data: {'action_s': 'get_diadiem', "id": $(obj).val(), "text": text },
      success: function(data) {
         $(cls).html(data);
         // console.log(data)
      }
    });
}
function SHOW_timkiem_bds(url){
  var uri = "?tin="+$("#id_loaitin").val();
  if($("#id_quan").val()    != "") uri += "&t="+$("#id_quan").val();
  if($("#id_huyen").val()   != "") uri += "&q="+$("#id_huyen").val();
  if($("#id_phuong").val()  != "") uri += "&p="+$("#id_phuong").val();
  var list_id                = "";
  $(".id_tinhnang").each(function(){
    if($(this).val() != "" && $(this).val() != 0){
      if(list_id != "") 
        list_id += "-";
        list_id += $(this).val();
    }
  });
  if(list_id != "") uri += "&tn="+list_id;
  if($(".cls_nangcao").val() != '') uri += "&nc=true";
  window.location.href = url+uri;
}
function SHOW_timkiemnc(){
    if($(".hide_search.activex").length > 0) {
        $(".hide_search.activex").removeClass("activex");
        $('.hide_search select option[value=""]').attr('selected','selected');
        $(".cls_nangcao").val('');
    }
    else {
        $(".hide_search").addClass("activex");
        $(".cls_nangcao").val('true');
    }
}
var popup_active = 0;
function LOAD_popup_new(url, wid = ''){
    $(".dv-popup-new-child").removeAttr("style");
    if(wid != '') $(".dv-popup-new-child").width(wid);
    $("body").append('<div class="dv-loadding-pop"><img src="images/loadernew.gif" alt=""></div>');
    $( ".dv-nd-popup" ).load(url, function() {
        $(".dv-loadding-pop").remove();
        $("body").addClass("body_hide");
        resize_popup_new();
    });
}
function resize_popup_new(){
    popup_active = 1;
    $(".dv-popup-new").addClass("acti");
    if(($(".dv-popup-new-child").height()+20) > $(window).height()){
      $(".dv-popup-new-child").addClass("actiok");
    }
    else {
      $(".dv-popup-new-child").removeClass("actiok");
    }
}
$(window).load(function() {
    if(popup_active == 1){
        resize_popup_new();    
    }
});
$( window ).resize(function() {
    if(popup_active == 1){
        resize_popup_new();    
    }
});
// $(".popup-close, .dv-popup-new").click(function(){
$(".popup-close").click(function(){
    $(".dv-nd-popup").html("");
    popup_active = 0;
    $("body").removeClass("body_hide");
    $(".dv-popup-new").removeClass("acti");
});
$(".dv-nd-popup").click(function(event){
    event.stopPropagation();
});
function LOAD_height(cls){
    var maxHeight = 0;
    $(cls).each(function(){
      if ($(this).height() > maxHeight) { maxHeight = $(this).height(); }
    });
    if(maxHeight != 0) $(cls).height(maxHeight);
}
function ADD_list_sp(id){
    alert(id)
}
function LOAD_tinhthanh(obj, cls, name){
    $.ajax({
        type: "POST",
        url: full_url+"/load-tinh-thanh/",
        data: {'id': $(obj).val().trim(), 'name': name },
        success: function(data) {
            $(cls).html(data);
        }
    });
}
$(function(){
    $.ajax({
        type: "POST",
        url: full_url + "/captcha/",
        data: {"action_ajax": "captcha" },
        success: function (data) {
            $('#capcha_hd').val(data);
        }
    });
})

function add_num_sp(id, loai) {
    var num = $(id).val();
    if(!isNaN(num)) {
        if(loai == "-1") {
            if(num > 1) num--;
        }
        else {
            num++;
        }
        $(id).val(num);
    }
    
}
function setCookie(name,value,days) {
    var expires = "";
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days*24*60*60*1000));
        expires = "; expires=" + date.toUTCString();
    }
    document.cookie = name + "=" + (value || "")  + expires + "; path=/";
}

function getCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1,c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
    }
    return null;
}
function ADD_yeuthich(obj, id){
  var loai    = $(obj).attr('data');
  var cook_yt = getCookie('sp_yeuthich');
  if(cook_yt  == null) cook_yt = id;
  else {
    list_new      = cook_yt.split(",");
    var cook_yt   = "";
    if(loai       == 0) {
      cook_yt     = id;
      $(obj).attr('data', '1');
      $(".p_yeuthich").addClass('acti');
    }
    else {
      $(obj).attr('data', '0');
      $(".p_yeuthich").removeClass('acti');
    }
    list_new.forEach(function(key){
      if(key      != id) {
        if(cook_yt == "") {
          cook_yt += key;
        } 
        else {
          cook_yt += "," + key;
        }
      }
    });
  }
  setCookie('sp_yeuthich', cook_yt, 365);

}