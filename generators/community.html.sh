cat common/start

cat <<\EOF
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    <a>Community <small> of BlackArch Linux</small></a>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">Community</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <div class="col-lg-12">
                <p>
				            You can find the BlackArch Linux community in several places.
                </p>
                <p>
                    If you need to contact the core development team directly, you can email <a href="mailto:blackarchlinux [at] gmail [dot] com">blackarchlinux[at]gmail.com</a>.
                </p>
                <hr />
                <div class="community-head">
                    <b>Github</b>
                </div>
                    <div class="community-body">
                        <div class="community-body-right">
                            <a href="https://github.com/BlackArch" target="_blank"><img src="images/icons/github.png" /></a>
                        </div>
                    <p>
					              You can find all BlackArch Linux code (including build scripts and website source) on our <a href="https://github.com/BlackArch" target="_blank">github</a>.
					          </p>
                    <p>
						            If you have any questions, suggestions, or bugs to report, feel free to post on the
                        <a href="https://github.com/BlackArch/blackarch/issues" target="_blank">issue tracker</a>. We also accept pull requests of all sizes and importance.
                    </p>
                </div>
                <br />
                <div class="community-head">
                    <b>Twitter</b>
                </div>
                    <div class="community-body">
                        <div class="community-body-right">
                            <a href="https://twitter.com/blackarchlinux" target="_blank"><img src="images/icons/twitter.png" /></a>
                        </div>
                        <p>
                            We mainly tweet about <b>new tools</b>, <b>new mirrors</b>, and major <b>project changes</b>. We also accept bug reports and suggestions through Twitter.
							              Just mention us. We'll respond.
                        </p>
						            <p>
                            foo bar foobar
						            </p>
                </div>
                <br />
                <div class="community-head">
                    <b>IRC</b>
                </div>
                <div class="community-body">
                    <div class="community-body-right">
                        <a href="irc://irc.freenode.net/blackarch" target="_blank"><img src="images/icons/irc.png" /></a>
                    </div>
                    <p>
                        We use IRC to discuss about BlackArch but also about social things. Also, you would see any changes made on our github repositories through
						            <b>notification-bot</b>. That way, you would immediately see if a new tool has been released or any upgrades has been performed, etc.
                    </p>
                    <p>
                        You can find the official BlackArch Internet Relay Chat channel here:
                        <br />
                        <a href="irc://irc.freenode.net/blackarch" target="_blank">#blackarch</a> on freenode IRC servers.
                    </p>
                </div>
                <br />
                <div class="community-head">
                    <b>Blog & News</b>
                </div>
                <div class="community-body">
                    <div class="community-body-right">
                        <a href="blog.html"><img src="images/icons/blog.png" /></a>
                    </div>
                    <p>
                        Blog entries and news about BlackArch Linux can be found on our <a href="blog.html">blog site</a>. The content is mostly a more detailed
                        version of our <a href="https://twitter.com/blackarchlinux" target="_blank">twitter feeds</a>, but you will also find news about
                        <b>new ISO releases</b> and other news.
                    </p>
                    <p>
                        We also release interesting blog entries about BlackArch Linux, hacking and security written not only by our developers. If you want to
                        add a blog entry feel free to open a pull request on our
                        <a href="https://github.com/BlackArch/blackarch-site" target="_blank">blackarch-site</a> repository.
                    </p>
                </div>
            </div>
        </div>
        <!-- /.row -->
EOF

cat common/end
