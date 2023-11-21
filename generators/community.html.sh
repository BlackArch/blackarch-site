cat common/start-community

cat <<\EOF
    <!-- Page Content -->
    <div class="container result">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <div class="page-header page-header-title">
	            <h1>Community</h1> <h2>Join Us</h2>
                </div>
                <ol class="breadcrumb">
                    <li><a class=home href="index.html">Home</a>
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
                    <a href="mailto:team@blackarch.org">team@blackarch.org</a>.
                </p>
                <hr />
                <div class="community-head">
                    <b>Github</b>
                </div>
                    <div class="community-body">
                        <div class="community-body-right">
                            <a href="https://github.com/BlackArch" target="_blank"><i class="fab fa-github fa-5x"></i></a>
                        </div>
                    <p>
					    You can find all BlackArch Linux code (including build scripts and website source) on our
                        <a href="https://github.com/BlackArch" target="_blank">github</a>.
					</p>
                    <p>
						If you have any questions, suggestions, or bugs to report, feel free to post on the
                        <a href="https://github.com/BlackArch/blackarch/issues" target="_blank">issue tracker</a>.
						We also accept pull requests of all sizes and importance.
                    </p>
                </div>
                <br />
                <div class="community-head">
                    <b>Twitter</b>
                </div>
                    <div class="community-body">
                        <div class="community-body-right">
                            <a href="https://twitter.com/blackarchlinux" target="_blank"><i class="fas fa-twitter fa-5x"></i></a>
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
                    <b>Youtube</b>
                </div>
                    <div class="community-body">
                        <div class="community-body-right">
                            <a href="https://www.youtube.com/channel/UChw5hByy70ey2F7QeLEGICQ" target="_blank"><i class="fas fa-youtube fa-5x"></i></a>
                        </div>
                        <p>
                            Follow us and subscribe on our YouTube channel! We mainly upload self-made videos about <b>installation</b>, <b>configuration</b>, and major <b>tool usage</b>.
                        </p>
                        <p>
                            We also accept your videos to our YouTube channel. Just mention us. We'll respond.
                        </p>
                </div>
                <br />
                <div class="community-head">
                    <b>Matrix</b>
                </div>
                <div class="community-body">
                    <div class="community-body-right">
                        <a href="https://matrix.to/#/#BlackArch:matrix.org" target="_blank"><i class="fas fa-comment fa-5x"></i></a>
                    </div>
                    <p>
                        Come keep us company. We have a little community on <a href="https://matrix.to/#/#BlackArch:matrix.org" target="_blank">Matrix</a>
						Anything is on topic but the large majority of discussion is related to security and BlackArch.
					</p>
                    <p>
					    If you need help, this is the best place to ask.
					</p>
                    <!--<p>
					    We also have a little bot that notifies the channel of git commits and package updates/additions.
                    </p>-->
                    <p>
                        You can find the official BlackArch Matrix channel here:
                        <a href="https://matrix.to/#/#BlackArch:matrix.org" target="_blank">https://matrix.to/#/#BlackArch:matrix.org</a>
                    </p>
                </div>
            </div>
        </div>
        <!-- /.row -->
EOF

cat common/end
