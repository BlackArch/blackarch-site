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
				            You can find the BlackArch Linux community in several places. If you need to contact the core development team directly, you can email
                    <a href="mailto:blackarchlinux [at] gmail [dot] com">blackarchlinux[at]gmail.com</a>.
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
								  You can find all BlackArch Linux code
								  (including build scripts and website source)
								  on our <a href="https://github.com/BlackArch"
									  target="_blank">github</a>.
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
                            Follow us on Twitter! We mainly tweet about <b>new tools</b>, <b>new mirrors</b>, and major <b>project changes</b>.
                        </p>
                        <p>
                            We also accept bug reports and suggestions through Twitter. Just mention us. We'll respond.
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
                        Come keep us company. We have a little community here. Anything is on topic but the large majority of discusision is related to security and/or BlackArch.
					          </p>
                    <p>
					              If you need help, this is the best place to ask.
					          </p>
                    <p>
					              We also have a little bot that notifies the channel of git commits and package updates/additions.
                    </p>
                    <p>
                        You can find the official BlackArch IRC channel here:
                        <a href="irc://irc.freenode.net/blackarch" target="_blank">#blackarch</a> on Freenode
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
						            We have an on-site <a href="blog.html">blog</a>. The posts are usually more detailed than our Twitter posts and focus on more big project issues.
					          </p>
                    <p>
                        We also release interesting blog entries about BlackArch Linux, hacking, and security written by users. If you wish to add a blog entry please open a
						            pull request on <a href="https://github.com/BlackArch/blackarch-site" target="_blank">Github</a>.
                    </p>
                </div>
            </div>
        </div>
        <!-- /.row -->
EOF

cat common/end
