var $window = $(window);
var scrollToTopButton = $(".scroll-to-top");
$window.on("scroll", function() {
  if ($window.scrollTop() > 300) {
    scrollToTopButton.fadeIn();
  } else {
    scrollToTopButton.fadeOut();
  }
});
scrollToTopButton.on("click", function(event) {
  $("html, body").animate({
    scrollTop: 0
  }, "slow");
  return false;
});
hljs.initHighlightingOnLoad();
