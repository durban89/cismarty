//消息提示
function altTip(txt, icon, ok, no, time) {
    artDialog({
        content: txt,
        icon: icon,
        time: time,
        lock: true,
        yesFn: ok,
        noFn: no
    });
}

function suggestKey(field, len) {
    var key = 'abcdefhijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWYXZ~!@$^*()+-,.;[]{}|/';
    var i = 0;
    var suggestKey = '';
    if (!len) len = 16;
    while (i ++ < len)
    {
        suggestKey += key.charAt(Math.random() * key.length);
    }
    $("#"+field).val(suggestKey);
}
//ueditor 编辑器工具栏 精简 定义
var toolbar = [
    ['source', '|', 'undo', 'redo', 'bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch', 'autotypeset', 'blockquote', 'pasteplain', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall', 'cleardoc', '|','justifyleft', 'justifycenter', 'justifyright','customstyle', 'paragraph', 'fontfamily', 'fontsize','indent']];