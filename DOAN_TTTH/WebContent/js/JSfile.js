$(document).ready(function () {
    $(".btn-number").click(function () {
        $(".btn-number").css("background-color", "white");
        $(this).css("background-color", "#11842e");
    })
    $("#btn-next").click(function () {
        alert($(".btn-number:visited").css("background-color"));
    })
    $(".frm-login").hide(); $($(this).parent().parent().parent().parent()).children().children("div.imgtile").addClass("magictime rotateUp");
});
$("tile>h3>a").click(function () {
    var obj=$($(this).parent().parent().parent().parent()).children().children("div.imgtile");

    $(obj).addClass("magictime rotateUp");
    setTimeout(function () {
        $(obj).removeClass("magictime rotateUp");
    },1000);
});

$(".panel-child").click(function () {
    var l=$(this);
    $(l).removeClass("magictime rotateUp");
   $(l).addClass("magictime rotateUp");
   var my=setTimeout(kj,1000);
    function kj() {
            $(l).removeClass("magictime rotateUp");
    }
});
$(".glyphicon-remove").click(function () {
    var obj=$(this);
    obj.attr("data-toggle","modal");
    obj.attr("data-target","#myModal");
});

$(".glyphicon-plus,.glyphicon-pencil").click(function () {
    var obj=$(this);
    obj.attr("data-toggle","modal");
    obj.attr("data-target","#myAdd");
});
$("#userinfor").click(function () {
    $("#infor").removeClass("infor");
    $("#class").addClass("class");
});

$("#inclass").click(function () {
    $("#class").removeClass("class");
    $("#infor").addClass("infor");
});


