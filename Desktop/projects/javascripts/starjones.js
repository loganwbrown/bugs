$.fn.starJones = function() {
  var facebook = 'https://www.facebook.com/sharer/sharer.php?u=';
  var twitter = 'https://twitter.com/share?url=';
  
  return this.each(function(index, link){
    var network = $(link).data('network');
    var styles = $(link).data('style');

    switch(network) {
    case 'facebook':
      var url = facebook + encodeURIComponent(window.location.href);
      break;
    case 'twitter':
      var url = twitter + encodeURIComponent(window.location.href);
      break;
    }

    if(typeof url != 'undefined') {
      $(link).click(function(){
        window.open(url, 'Share on ' + network, styles);
        return false;
      });
    };
  });
};