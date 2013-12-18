$(function () {
  isMobile = ('ontouchstart' in document.documentElement);

  navigation = $('header nav ul');

  resizeVideo = function () {
    $('.video iframe').attr('height', $('#banner').outerHeight());
  };

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

  watchVideoTriggered = function (e) {
    e.preventDefault();

    if ($('.video').hasClass('show')) {
      $('.video').fadeOut({
        queue: false
      }).removeClass('show');
      $(this).removeClass('show');
      $('.button-video').removeClass('hide');
    } else {
      $('.video').fadeIn({
        queue: false
      }).addClass('show');
      $(this).addClass('hide');
      $('.close-video').addClass('show');
    }
  };

  $('.icon-menu').bind(isMobile ? 'touchstart' : 'click', iconMenuTriggered);
  $('.button-video').bind('click', watchVideoTriggered);
  $('.close-video').bind('click', watchVideoTriggered);

  $(window).resize(resizeVideo);
  resizeVideo();



});

initializeMap = function () {
  var dynamicEarth = new google.maps.LatLng(55.950690,-3.174748);

  var map = new google.maps.Map(document.getElementById('map'), {
    scrollwheel: false,
    center: dynamicEarth,
    zoom: 16,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  });

  new google.maps.Marker({
      position: dynamicEarth,
      title: "Our Dynamic Earth"
  }).setMap(map);
};
google.maps.event.addDomListener(window, 'load', initializeMap);
