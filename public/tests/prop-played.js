({
  description: 'Property "played"',
  spec: 'http://dev.w3.org/html5/spec/Overview.html#dom-mediacontroller-played',
  longdesc: '',
  assert: function(finish) {
    var audio = this.audio = new Audio(),
        counter = 0;

    audio.addEventListener('timeupdate', function() {
      if (++counter >= 5 && audio.currentTime > 0) {
        try {
          finish(audio.played.length);
        } catch (e) {
          finish(false);
        }
      }
    }, false);

    audio.addEventListener('loadedmetadata', function() {
      audio.volume = 0;
      audio.play();
    }, false);

    audio.setAttribute('preload', 'metadata');
    audio.setAttribute('src', AWPY.sound.long.stream_url(true));
  }
});