# The StarJones jQuery plugin
# let's you share like you're star Jones
# big bad and bold
# copyright 2014 (c) DevPointLabs Vegas peeps

$.fn.starJones = ()->
  facebook = 'https://www.facebook.com/sharer/sharer.php?u='
  twitter = 'https://twitter.com/share?url='
  
  @each (index, link)->
    network = $(link).data('network')
    styles = $(link).data('style')

    switch network
      when 'facebook'
        url = facebook + encodeURIComponent(window.location.href)
      when 'twitter'
        url = twitter + encodeURIComponent(window.location.href)

    if url?
      $(link).click ->
        window.open(url, "Share on #{network}", styles)
        false
