cat common/start-news

cat <<\EOF
  <!-- Page Content -->
  <div class="container result">
     <!-- Page Heading/Breadcrumbs -->
    <div class="row">
      <div class="col-lg-12">
         <div class="page-header page-header-title">
        <h1>News</h1> <h2>News of BlackArch</h2>
        </div>
        <ol class="breadcrumb">
          <li>
            <a class=home href="index.html">Home</a>
          </li>
          <li>
            <a href="community.html">Community</a>
          </li>
          <li class="active">
            News
          </li>
        </ol>
      </div>
      <div vlass="row">
      <div class="col-md-12">
        <a class="twitter-timeline" data-lang="en" data-width="1135" data-height="1030" data-dnt="true" data-theme="dark" href="https://twitter.com/blackarchlinux?ref_src=twsrc%5Etfw">Tweets by blackarchlinux</a>
        <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
      </div>
      </div>
    </div>
    <br>
    <!-- /.row -->
EOF

cat common/end
