var agt = navigator.userAgent.toLowerCase();
var is_ie = ((agt.indexOf("msie") != -1) && (agt.indexOf("opera") == -1));
var is_gecko = (navigator.product == "Gecko");
var is_webkit = agt.indexOf('webkit') > -1;
var is_safari = (agt.indexOf('chrome') == -1) && is_webkit;

//json2.js
if (!this.JSON) {
    this.JSON = {};
}
(function() {
    function f(n) {
        return n < 10 ? '0' + n : n;
    }
    if (typeof Date.prototype.toJSON !== 'function') {
        Date.prototype.toJSON = function(key) {
            return isFinite(this.valueOf()) ? this.getUTCFullYear() + '-' +
                    f(this.getUTCMonth() + 1) + '-' +
                    f(this.getUTCDate()) + 'T' +
                    f(this.getUTCHours()) + ':' +
                    f(this.getUTCMinutes()) + ':' +
                    f(this.getUTCSeconds()) + 'Z' : null;
        };
        String.prototype.toJSON = Number.prototype.toJSON = Boolean.prototype.toJSON = function(key) {
            return this.valueOf();
        };
    }
    var cx = /[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g, escapable = /[\\\"\x00-\x1f\x7f-\x9f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g, gap, indent, meta = {'\b': '\\b', '\t': '\\t', '\n': '\\n', '\f': '\\f', '\r': '\\r', '"': '\\"', '\\': '\\\\'}, rep;
    function quote(string) {
        escapable.lastIndex = 0;
        return escapable.test(string) ? '"' + string.replace(escapable, function(a) {
            var c = meta[a];
            return typeof c === 'string' ? c : '\\u' + ('0000' + a.charCodeAt(0).toString(16)).slice(-4);
        }) + '"' : '"' + string + '"';
    }
    function str(key, holder) {
        var i, k, v, length, mind = gap, partial, value = holder[key];
        if (value && typeof value === 'object' && typeof value.toJSON === 'function') {
            value = value.toJSON(key);
        }
        if (typeof rep === 'function') {
            value = rep.call(holder, key, value);
        }
        switch (typeof value) {
            case'string':
                return quote(value);
            case'number':
                return isFinite(value) ? String(value) : 'null';
            case'boolean':
            case'null':
                return String(value);
            case'object':
                if (!value) {
                    return'null';
                }
                gap += indent;
                partial = [];
                if (Object.prototype.toString.apply(value) === '[object Array]') {
                    length = value.length;
                    for (i = 0; i < length; i += 1) {
                        partial[i] = str(i, value) || 'null';
                    }
                    v = partial.length === 0 ? '[]' : gap ? '[\n' + gap +
                            partial.join(',\n' + gap) + '\n' +
                            mind + ']' : '[' + partial.join(',') + ']';
                    gap = mind;
                    return v;
                }
                if (rep && typeof rep === 'object') {
                    length = rep.length;
                    for (i = 0; i < length; i += 1) {
                        k = rep[i];
                        if (typeof k === 'string') {
                            v = str(k, value);
                            if (v) {
                                partial.push(quote(k) + (gap ? ': ' : ':') + v);
                            }
                        }
                    }
                } else {
                    for (k in value) {
                        if (Object.hasOwnProperty.call(value, k)) {
                            v = str(k, value);
                            if (v) {
                                partial.push(quote(k) + (gap ? ': ' : ':') + v);
                            }
                        }
                    }
                }
                v = partial.length === 0 ? '{}' : gap ? '{\n' + gap + partial.join(',\n' + gap) + '\n' +
                        mind + '}' : '{' + partial.join(',') + '}';
                gap = mind;
                return v;
        }
    }
    if (typeof JSON.stringify !== 'function') {
        JSON.stringify = function(value, replacer, space) {
            var i;
            gap = '';
            indent = '';
            if (typeof space === 'number') {
                for (i = 0; i < space; i += 1) {
                    indent += ' ';
                }
            } else if (typeof space === 'string') {
                indent = space;
            }
            rep = replacer;
            if (replacer && typeof replacer !== 'function' && (typeof replacer !== 'object' || typeof replacer.length !== 'number')) {
                throw new Error('JSON.stringify');
            }
            return str('', {'': value});
        };
    }
    if (typeof JSON.parse !== 'function') {
        JSON.parse = function(text, reviver) {
            var j;
            function walk(holder, key) {
                var k, v, value = holder[key];
                if (value && typeof value === 'object') {
                    for (k in value) {
                        if (Object.hasOwnProperty.call(value, k)) {
                            v = walk(value, k);
                            if (v !== undefined) {
                                value[k] = v;
                            } else {
                                delete value[k];
                            }
                        }
                    }
                }
                return reviver.call(holder, key, value);
            }
            cx.lastIndex = 0;
            if (cx.test(text)) {
                text = text.replace(cx, function(a) {
                    return'\\u' +
                            ('0000' + a.charCodeAt(0).toString(16)).slice(-4);
                });
            }
            if (/^[\],:{}\s]*$/.test(text.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g, '@').replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g, ']').replace(/(?:^|:|,)(?:\s*\[)+/g, ''))) {
                j = eval('(' + text + ')');
                return typeof reviver === 'function' ? walk({'': j}, '') : j;
            }
            throw new SyntaxError('JSON.parse');
        };
    }
}());
//end of json2.js

window.onload = function() {
    for (var ii = 0; ii < document.links.length; ii++) {
        document.links[ii].onfocus = function() {
            this.blur();
        }
    }
}

// ajax loading
function show_loading_body() {
    if ($("#layer_loading").length > 0) {
        $("#layer_loading").css("display") == 'none' ? $("#layer_loading").css(
                'display', '') : $("#layer_loading").css('display', 'none');
    } else {
        var yScroll = document.documentElement.scrollTop;
        var screenheight = document.documentElement.clientHeight;
        var t = yScroll + screenheight - 240;
        //alert(t);
        //if (t > document.body.clientHeight) {
        //	t = document.body.clientHeight;
        //}
        $("body")
                .append(
                '<div id="layer_loading" style="position:absolute;z-index:1001;" id="layer_loading"><img src="/images/public/load.gif" title="loading……" alt="loading……"/> loading……</div>');
        $("#layer_loading").css("left",
                (($(document).width()) / 2 - (parseInt(200) / 2)) + "px").css(
                "top", t + "px");
        $("#layer_loading").show();
    }
}

//显示loading iconsize 图片尺寸大小 1 20*20 2 50*50
function ShowLoading(obj, iconsize) {
    if (iconsize == 2) {
        $(obj).html("<center><img src='/images/public/loading2.gif'></center>");
    } else
        $(obj).html("<center><img src='/images/public/loading1.gif'></center>");
}

/**
 * 获取验证码
 */
function changeYZM(emId) {
    if (typeof (emId) == "string") {
        $("#" + emId).attr('src', "/checkcode.php?t=" + Math.random());
        return;
    } else {
        $("#img_yzm").attr('src', "/checkcode.php?t=" + Math.random());
        return;
    }
}


// 字符替换
function tpl_replace(str, obj) {
    if (!(Object.prototype.toString.call(str) === '[object String]')) {
        return '';
    }

    // {}, new Object(), new Class()
    // Object.prototype.toString.call(node=document.getElementById("xx")) :
    // ie678 == '[object Object]', other =='[object HTMLElement]'
    // 'isPrototypeOf' in node : ie678 === false , other === true
    if (!(Object.prototype.toString.call(obj) === '[object Object]' && 'isPrototypeOf' in obj)) {
        return str;
    }

    // https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/String/replace
    return str.replace(/\{([^{}]+)\}/g, function(match, key) {
        var value = obj[key];
        return (value !== undefined) ? '' + value : '';
    });
}

Array.prototype.in_array = function(e) {
    for (i = 0; i < this.length; i++) {
        if (this[i] == e)
            return true;
    }
    return false;
}

function flatten(ac) {
    var array = [];
    var group = this.arr;
    if (ac)
        group = ac;
    for (var i = 0; i < group.length; i++) {
        if (group[i] instanceof Array) {
            array = array.concat(this.flatten(group[i]));
        } else {
            array = array.concat(group[i]);
        }
    }
    return array;
}

// check used
function getObj(id) {
    return document.getElementById(id);
}

// 检查 email 格式
function IsEmail(strg) {
    var patrn = new RegExp('^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$');
    if (!patrn.test(strg))
        return false;
    return true;
}
// 验证电话
function IsTel(strg) {
    var patrn = new RegExp('^(([0\+]\d{2,3}-)?(0\d{2,3})-)(\d{7,8})(-(\d{3,}))?$');
    if (!patrn.test(strg))
        return false;
    return true;
}
// 验证手机
function IsMobile(strg) {
    var patrn = new RegExp('^(13|15|18)[0-9]{9}$');
    if (!patrn.test(strg))
        return false;
    return true;
}
// 验证邮编
function IsZip(strg) {
    var patrn = new RegExp('^\\d{6}$');
    if (!patrn.test(strg))
        return false;
    return true;
}
// 是否是用户名
function IsUserName(strg) {
    var patrn = new RegExp('^\\w+$');
    if (!patrn.test(strg))
        return false;
    return true;
}
// 是否为货币格式
function checkmoney(str) {
    var re = /^[\d.]*$/;
    return re.test(str);
}
//验证正整数
function chkIntNumber(str) {
    var patrn = new RegExp('^[0-9]*[1-9][0-9]*$');
    return patrn.test(str);
}
//浮点四舍五入
function changeTwoDecimal(x) {
    var fx = parseFloat(x);
    fx = Math.round(fx * 100) / 100;
    return fx;
}

//<a href="#" onclick="SetHome(this,window.location)">设为首页</a>
function SetHome(obj,vrl){
	try{
		obj.style.behavior='url(#default#homepage)';obj.setHomePage(vrl);
	}catch(e){
		if(window.netscape) {
			try {
				netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
			}catch (e) {
				alert("此操作被浏览器拒绝！\n请在浏览器地址栏输入“about:config”并回车\n然后将 [signed.applets.codebase_principal_support]的值设置为'true',双击即可。");
			}
			var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch);
			prefs.setCharPref('browser.startup.homepage',vrl);
		}
	}
}

//<a href="#" onclick="AddFavorite(window.location,document.title)">加入收藏</a>
function AddFavorite(sURL, sTitle){
    try{
        window.external.addFavorite(sURL, sTitle);
    }catch (e){
        try{
            window.sidebar.addPanel(sTitle, sURL, "");
        }catch (e){
            alert("加入收藏失败，请使用Ctrl+D进行添加");
        }
    }
}

function selectAll(name, ob) {
    if (typeof (ob) == 'object') {
        $("input[name='" + name + "']").attr("checked", ob.checked);
    } else {
        $("input[name='" + name + "']").attr("checked",
                $("#" + ob).attr('checked'));
    }

}

function countStringLength(str) {
    var str_length = 0;
    for (var i = 0; i < str.length; i++) {
        if (str.charCodeAt(i) <= 256) {
            str_length += 1;
        } else {
            str_length += 2;
        }
    }
    return str_length;
}



function resizeImg(ele) {
    var a = ele;
    if (a.width < 30 || a.height < 30) {
        setTimeout(function() {
            resizeImg(a);
        }, 10)
        return false;
    }
    if (a.width > 100) {
        a.width = 100;
    } else if (a.height > 100) {
        a.height = 100;
    }
}

function DrawImage(ImgD, iwidth, iheight) {
    //alert(iwidth);
    //参数(图片,允许的宽度,允许的高度)
    var image = new Image();
    image.src = ImgD.src;
    if (image.width > 0 && image.height > 0) {
        if (image.width / image.height >= iwidth / iheight) {
            if (image.width > iwidth) {
                ImgD.width = iwidth;
                ImgD.height = (image.height * iwidth) / image.width;
            } else {
                ImgD.width = image.width;
                ImgD.height = image.height;
            }
            //ImgD.alt=image.width+"×"+image.height;
        } else {
            if (image.height > iheight) {
                ImgD.height = iheight;
                ImgD.width = (image.width * iheight) / image.height;
            } else {
                ImgD.width = image.width;
                ImgD.height = image.height;
            }
            //ImgD.alt=image.width+"×"+image.height;
        }
    }
}

function getOs() {
    var OsObject = "";
    if (navigator.userAgent.indexOf("MSIE") > 0) {
        return "MSIE";
    }
    if (isFirefox = navigator.userAgent.indexOf("Firefox") > 0) {
        return "Firefox";
    }
    if (isSafari = navigator.userAgent.indexOf("Safari") > 0) {
        return "Safari";
    }
    if (isCamino = navigator.userAgent.indexOf("Camino") > 0) {
        return "Camino";
    }
    if (isMozilla = navigator.userAgent.indexOf("Gecko/") > 0) {
        return "Gecko";
    }
}

function setCookie(name, value) {
    var Days = 1;
    var exp = new Date();
    exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
    //document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
    document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
}

function getCookie(name) {
    var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
    if (arr = document.cookie.match(reg))
        return unescape(arr[2]);
    else
        return null;
}

function CheckAll(form, type) {
    for (var i = 0; i < form.elements.length; i++) {
        var e = form.elements[i];
        if (e.type == "checkbox") {
            if (typeof(type) != 'undefined') {
                e.checked == true ? e.checked = false : e.checked = true;
            } else {
                e.checked = true;
            }
        }
    }
}

//隐藏子菜单
function cateopen(id) {
    try {
        var o = $('#cate_' + id);
        if (o == null)
            return;
        if (o.css('display') == 'none') {
            o.css('display', '');
            $('#bt_' + id).attr('class', 'expand expand_a');
        } else {
            o.css('display', 'none');
            $('#bt_' + id).attr('class', 'expand expand_b');
        }
    } catch (e) {
    }
}

/**
 * 获取广告
 * @param {type} id
 * @param {type} obj
 * @returns {undefined}
 */
function getadvert(id, obj, playback, text) {
    var url = '/request/index.php?t=' + Math.random();
    var jsonarr = {cmd: "advert_index", 'data': {id: id, act: 'getadvert', playback: playback, text: text}};
    var jsonstr = JSON.stringify(jsonarr);
    $.ajax({
        type: 'get',
        url: url,
        data: {json: jsonstr},
        timeout: 90000,
        beforeSend: function() {
        },
        dataType: 'json',
        success: function(o) {
            $('#' + obj).html(o.data);
        },
        complete: function() {
        },
        error: function() {
        }
    });
}

/**
 * 往光标位置插入值
 * @param {type} $
 * @returns {undefined}
 */
(function($) {
    $.fn.extend({
        insertAtCaret: function(myValue) {
            var $t = $(this)[0];
            if (document.selection) {
                this.focus();
                sel = document.selection.createRange();
                sel.text = myValue;
                this.focus();
            }
            else
            if ($t.selectionStart || $t.selectionStart == '0') {
                var startPos = $t.selectionStart;
                var endPos = $t.selectionEnd;
                var scrollTop = $t.scrollTop;
                $t.value = $t.value.substring(0, startPos) + myValue + $t.value.substring(endPos, $t.value.length);
                this.focus();
                $t.selectionStart = startPos + myValue.length;
                $t.selectionEnd = startPos + myValue.length;
                $t.scrollTop = scrollTop;
            }
            else {
                this.value += myValue;
                this.focus();
            }
        }
    });
})(jQuery);


//倒计时函数
function updateEndTime(type) {
    var time = getSystemTime();
    var text_str = (type == 1) ? "剩余时间" : "剩";
    $(".timeleft_label").each(function(i) {
        var endTime = this.getAttribute("end"); //结束时间秒数
        var lag = (endTime - time) //当前时间和结束时间之间的秒数
        if (lag > 0) {
            var second = Math.floor(lag % 60);
            var minite = Math.floor((lag / 60) % 60);
            var hour = Math.floor((lag / 3600) % 24);
            var day = Math.floor((lag / 3600) / 24);
            $(this).html("<font style='color:#666;'>" + text_str + "：</font><font class=\"day\">" + day + "</font>天<font class=\"hour\">" + hour + "</font>小时<font class=\"minute\">" + minite + "</font>分<font class=\"second\">" + second + "</font>秒");
        } else {
            if (type == 1) {
                $("#getGradeBox").hide();
            }
            var pid = this.getAttribute("rel");
            products.goodsExpire(pid);
            $(this).html("<font color='#999'>已经到期啦！</font>").removeClass('timeleft_label');
        }
    });
    setTimeout("updateEndTime(" + type + ")", 1000);
}


/**
 * 获取广告
 * @param {int} id 广告位id
 * @param {object} obj 需要显示广告的位置对象
 * @param {string} playback 展示形式，只为轮播广告才有效
 * @param {int} text 是否显示标题
 * @returns {undefined}
 */
function getadvert(id, obj, playback, text) {
    var url = '/request/index.php?t=' + Math.random();
    var jsonarr = {cmd: "advert_index", 'data': {id: id, act: 'getadvert', playback: playback, text: text}};
    var jsonstr = JSON.stringify(jsonarr);
    $.ajax({
        type: 'get',
        url: url,
        data: {json: jsonstr},
        beforeSend: function() {
        },
        dataType: 'json',
        success: function(o) {
            $('#' + obj).html(o.data);
        },
        complete: function() {
        },
        error: function() {
        }
    });
}