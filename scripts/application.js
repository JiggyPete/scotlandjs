$(function () {
  isMobile = ('ontouchstart' in document.documentElement);

  navigation = $('header nav ul');

  iconMenuTriggered = function (e) {
    e.preventDefault();

    if (navigation.hasClass('show')) {
      navigation.slideUp({
        queue: false,
        done: function () {
          $(this).attr('style', '');
        }
      }).removeClass('show');
    } else {
      navigation.slideDown({
        queue: false
      }).addClass('show');
    }
  };

  $('.icon-menu').bind(isMobile ? 'touchstart' : 'click', iconMenuTriggered);
});
