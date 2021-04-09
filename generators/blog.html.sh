cat common/start-blog

cat <<\EOF
  <!-- Page Content -->
  <div class="container result">
     <!-- Page Heading/Breadcrumbs -->
    <div class="row">
      <div class="col-lg-12">
         <div class="page-header page-header-title">
        <h1>Blog</h1> <h2>News of BlackArch</h2>
        </div>
        <ol class="breadcrumb">
          <li>
            <a class=home href="index.html">Home</a>
          </li>
          <li>
            <a href="community.html">Community</a>
          </li>
          <li class="active">
            Blog
          </li>
        </ol>
      </div>
      <div vlass="row">
      <div class="col-md-12">
        <div style="border: 1px solid #aaa; border-radius:4px; height:1030px; width:1135px; text-align:center;" align="center">
          <a class="twitter-timeline" href="https://twitter.com/blackarchlinux" data-widget-id="368746180060004352" data-theme="dark">Tweets by @blackarchlinux</a>
          <script>
            !function(d,s,id) {
              var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';
              if(!d.getElementById(id)) {
                js=d.createElement(s);
                js.id=id;
                js.src=p+"://platform.twitter.com/widgets.js";
                fjs.parentNode.insertBefore(js,fjs);
              }
            }
            (document,"script","twitter-wjs");
          </script>
        </div>
      </div>
      </div>
    </div>
    <br>
    <!-- /.row -->
EOF

cat common/end
