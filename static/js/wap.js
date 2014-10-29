
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

$(function() {
    var imglist = document.getElementsByTagName("img");
    //安卓4.0+等高版本不支持window.screen.width，安卓2.3.3系统支持  
    var _width;
    doDraw();

    window.onresize = function() {
        //捕捉屏幕窗口变化，始终保证图片根据屏幕宽度合理显示  
        doDraw();
    };

    function doDraw() {
        _width = window.innerWidth - 50;
        for (var i = 0, len = imglist.length; i < len; i++) {
            DrawImage(imglist[i], _width);
        }
    }

    function DrawImage(ImgD, _width) {
        var image = new Image();
        image.src = ImgD.src;
        image.onload = function() {
            //限制，只对宽高都大于_width的图片做显示处理  
            if (image.width > _width) {
                if (image.width > _width) {
                    ImgD.width = _width;
                    ImgD.height = (image.height * _width) / image.width;
                } else {
                    ImgD.width = image.width;
                    ImgD.height = image.height;
                }

            }
        }
    }
});