$(document).ready(function(){

  // $(".js-switch").each(function(){
  //   new Switchery(this);
  // })

  var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));

  elems.forEach(function(html) {
    var switchery = new Switchery(html);
  });

  $("body").on("change", ".js-switch", function(){
    var $completed = $(this).prop("checked");
    var $url = $(this).data("url");

    $.post($url,{ completed : $completed}, function(){

    })
  })

})
