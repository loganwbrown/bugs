// Generated by CoffeeScript 1.7.1
(function() {
  $.fn.starJones = function() {
    var facebook, twitter;
    facebook = 'https://www.facebook.com/sharer/sharer.php?u=';
    twitter = 'https://twitter.com/share?url=';
    return this.each(function(index, link) {
      var network, styles, url;
      network = $(link).data('network');
      styles = $(link).data('style');
      switch (network) {
        case 'facebook':
          url = facebook + encodeURIComponent(window.location.href);
          break;
        case 'twitter':
          url = twitter + encodeURIComponent(window.location.href);
      }
      if (url != null) {
        return $(link).click(function() {
          window.open(url, "Share on " + network, styles);
          return false;
        });
      }
    });
  };

}).call(this);