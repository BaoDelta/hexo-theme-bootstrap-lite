(function() {
  hljs.initHighlightingOnLoad();
  var $window = $(window);
  var scrollToTopButton = $(".scroll-to-top");
  function checkScroll() {
    if ($window.scrollTop() > 300) {
      scrollToTopButton.fadeIn();
    } else {
      scrollToTopButton.fadeOut();
    }
  }
  checkScroll();
  $window.on("scroll", checkScroll);
  scrollToTopButton.on("click", function(event) {
    $("html, body").animate({
      scrollTop: 0
    }, "slow");
    return false;
  });
})();
