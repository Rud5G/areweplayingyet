<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>AreWePlayingYet? — A pragmatic HTML5 Audio test suite</title>
  <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="author" content="SoundCloud - Tomás Senart, Yves Van Goethem, Kasper Lahti, Matas Petrikas">
  <meta name="description" content="AreWePlayingYet? - A pragmatic HTML5 Audio test suite">
  <link rel="stylesheet" href="/css/prettify.css">
  <link rel="stylesheet" href="/css/awpy.css">
  <link rel="stylesheet" href="/css/mobile.css" media="handheld, only screen and (max-device-width:540px)">
  <link rel="shortcut icon" href="/images/favicon.ico">
</head>
<body>
  <div class="container">
    <div class="content">
      <div class="wrapper-header">
        <header>
          <div class="page-header">
            <div class="play">
              <button class="run btn big"><span class="icon"><span></button>
              <label>Run All Tests</label>
            </div>
            <div class="display">
              <a href="/">
                <h1>Are We Playing Yet?</h1>
                <h2>A pragmatic HTML5 Audio browser test suite</h2>
              </a>
            </div>
            <div class="submit">
              <a class="github btn big" href="https://github.com/soundcloud/areweplayingyet/issues">Github</a>
              <label>Contribute</label>
            </div>
          </div>
        </header>
      </div>
      <table id="tests" class="zebra-striped">
        <thead>
          <tr>
            <td>&nbsp;</td>
            <td class="name">Name</td>
            <td class="genre">Genre</td>
          </tr>
        </thead>
        <tbody>
          {{#tests}}
            <tr class="test">
              <td>
                <button class="btn run small" data-test-name="{{name}}"><span>▶</span></button>
              </td>
              <td class="name">
                <a href="/{{name}}">{{description}}</a>
              </td>
              <td class="genre">{{genre}}</td>
            </tr>
          {{/tests}}
        </tbody>
      </table>
      <div class="row">
      </div>
      <div id="browserscope" class="row">
        <div class="span">
          <table class="zebra-striped">
            <thead>
              <tr>
                <td>Browser</td><td>Count</td><td>Score</td>
              </tr>
            </thead>
            <tbody></tbody>
          </table>
        </div>
      </div>
    </div>
    <footer>
      <p>&copy; SoundCloud 2011</p>
    </footer>
  </div>

  <script src="/js/augment-0.3.1.min.js"></script>
  <script src="http://code.jquery.com/jquery-1.7.min.js"></script>
  <script src="/js/prettify.js"></script>
  <script src="/js/awpy.js"></script>
  <script src="/js/runner.js"></script>
  <script src="/js/ga.js"></script>
  <script>
    AWPY.tests.init([{{{js}}}]);
    AWPY.runner.init();
  </script>
</body>
</html>
