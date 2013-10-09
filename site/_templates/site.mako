<%inherit file="base.mako" />
<!doctype html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width">
  <meta charset="utf-8">
  <!-- build:css(.tmp) /assets/styles/main.css -->
  <link rel="stylesheet" href="${bf.util.site_path_helper('assets/styles/main.css')}">
  <!-- endbuild -->

  <title>${bf.config.blog.name}</title>
  <meta name="description" content="${bf.config.blog.description}">
%if bf.config.site.author:
  <meta name="author" content="${bf.config.site.author}">
%endif

  <link rel="alternate" type="application/rss+xml" title="RSS 2.0"
        href="${bf.util.site_path_helper(
                  bf.config.blog.path, '/feed',trailing_slash=True)}">
  <link rel="alternate" type="application/atom+xml" title="Atom 1.0"
        href="${bf.util.site_path_helper(
                  bf.config.blog.path, '/feed/atom', trailing_slash=True)}">

  <link rel="shortcut icon" href="${bf.util.site_path_helper('assets/images/tomster-16.png')}">
  <link rel="apple-touch-icon"
        href="${bf.util.site_path_helper('assets/images/tomster-48.png')}">
</head>
  <body>

    <div class="row">
      <div class="large-12 columns">

        <div class="row">

            <nav class="top-bar">

              <ul class="title-area">
                <li class="toggle-topbar menu-icon"><a href="#"><span></span></a></li>
                <li class="name"><a href="${bf.util.site_path_helper('/')}">tomster.org</a></li>
              </ul>

              <section class="top-bar-section">
                <ul class="right">
                  <li class="divider"></li>
                  <li class=""><a href="${bf.util.site_path_helper('/')}">Home</a></li>
                  <li class="divider"></li>
                  <li class=""><a href="${bf.util.site_path_helper('/blog/')}">Blog</a></li>
                  <li class="divider"></li>
                  <li><a href="${bf.util.site_path_helper('/imprint.html')}">Imprint</a></li>
                  <li class="divider"></li>
                </ul>
              </section>
            </nav>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="large-12 columns">
        ${next.body()}
      </div>
    </div>

    <footer class="row">
    <p>
        Copyright 2013
        ${bf.config.site.author}. 
        Powered by <a href="http://www.blogofile.com">Blogofile</a>
      </p>
    </footer>

    <!-- build:js /assets/scripts/vendor.js -->
    <!-- bower:js -->
    <script src="${bf.util.site_path_helper('/assets/bower_components/jquery/jquery.js')}"></script>
    <script src="${bf.util.site_path_helper('/assets/bower_components/foundation/js/foundation/foundation.js')}"></script>
    <script src="${bf.util.site_path_helper('/assets/bower_components/foundation/js/foundation/foundation.topbar.js')}"></script>
    <!-- endbower -->
    <!-- endbuild -->

    <script>
      $(document).foundation();
    </script>
  </body>
</html>
