cat common/start-index

cat <<EOF
    <!-- Page Content -->
    <div class="container result">
        <!-- Portfolio Section -->
        <div class="row">
            <div class="col-lg-12">
               	<div class="page-header page-header-title">
	                <h1>BlackArch</h1> <h2>Homepage</h2>
                </div>
                <p>
                    BlackArch Linux is an <a href="http://www.archlinux.org/" target="_blank">Arch Linux</a>-based penetration testing distribution for penetration testers
                    and security researchers. The repository contains <a href="tools.html">${TOOL_COUNT}</a> tools. You can install tools individually or in groups.
                    BlackArch Linux is compatible with existing Arch installs. For more information, see the
					<a href="downloads.html#install-repo">installation instructions</a>.
                    Also, news is published on our <a href="blog.html">blog</a>.
                </p>
                <p>
                    Please note that BlackArch is a relatively new project. To report bugs and request new tools, please visit the
                    <a href="https://github.com/BlackArch/blackarch/issues" target="_blank">issue tracker</a> on Github, stop by <a href="community.html">IRC</a>, or
                    <a href="mailto:team@blackarch.org">email</a> us.
                </p>
                <p>
                    The BlackArch Live ISO contains multiple window managers. Below you will find screenshots of a few of them.
                    <br /><br />
                </p>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="/images/screenshots/fluxbox.png">
                    <img class="img-responsive img-portfolio img-hover" src="/images/screenshots/fluxbox.png" alt="BlackArch Linux with fluxbox">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="/images/screenshots/openbox.png">
                    <img class="img-responsive img-portfolio img-hover" src="/images/screenshots/openbox.png" alt="BlackArch Linux with openbox">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="/images/screenshots/awesome.png">
                    <img class="img-responsive img-portfolio img-hover" src="/images/screenshots/awesome.png" alt="BlackArch Linux with awesome wm">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="/images/screenshots/spectrwm.png">
                    <img class="img-responsive img-portfolio img-hover" src="/images/screenshots/spectrwm.png" alt="BlackArch Linux with spectrwm">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="/images/screenshots/lxdm.png">
                    <img class="img-responsive img-portfolio img-hover" style="height:224px;" src="/images/screenshots/lxdm.png" alt="BlackArch Linux with lxdm">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="/images/screenshots/syslinux.png">
					<img class="img-responsive img-portfolio img-hover" style="height:224px;width:400px" src="/images/screenshots/syslinux.png" alt="BlackArch Linux wallpaper">
                </a>
            </div>
        </div>
        <!-- /.row -->
        <!-- developers -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">About BlackArch Linux Developers & Contributors</h2>
                <p>BlackArch Linux is backed by a team of volunteers. Some of them have chosen to appear in the following list.</p>
            </div>
            <div class="col-md-12">
                <div class="panel panel-default text-left">
                    <div class="panel-heading">
                        <b>Developers</b>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <table id=developers itemscope itemtype="https://www.schema.org/Person">
                                <tr>
                                    <td><b>Name</b></td>
                                    <td><b>Nickname</b></td>
                                    <td><b>E-Mail</b></td>
                                    <td><b>GPG Key</b></td>
                                    <td><b>Role</b></td>
                                </tr>
		                        <tr>
			                        <td itemprop="givenName">Evan Teitelman</td>
			                        <td>paraxor</td>
			                        <td itemprop="email">teitelmanevan@gmail.com</td>
			                        <td><a href="gpgkeys/paraxor.asc" target="_blank">0xEA87E4E3</a></td>
			                        <td itemprop="jobTitle">Founder, Developer</td>
		                        </tr>
		                        <tr>
			                        <td itemprop="givenName">Levon Kayan</td>
			                        <td>noptrix</td>
			                        <td itemprop="email">noptrix@nullsecurity.net</td>
			                        <td><a href="gpgkeys/noptrix.asc" target="_blank">0x7A747D10</a></td>
			                        <td itemprop="jobTitle">Developer</td>
		                        </tr>
		                        <tr>
			                        <td itemprop="givenName">Javier</td>
			                        <td>nrz</td>
			                        <td itemprop="email">nrz@nullsecurity.net</td>
			                        <td><a href="gpgkeys/nrz.asc" target="_blank">0x7C03DD86</a></td>
			                        <td itemprop="jobTitle">Developer</td>
		                        </tr>
                                <tr>
                                    <td itemprop="givenName">Hannes Eichblatt</td>
                                    <td>heichblatt</td>
                                    <td itemprop="email">blackarch@hanneseichblatt.de</td>
                                    <td><a href="gpgkeys/heichblatt.asc" target="_blank">0x31B0AF0E</a></td>
                                    <td>Developer</td>
                                </tr>
		                        <tr>
			                        <td itemprop="givenName">Ellis Kenyo</td>
			                        <td>elken</td>
			                        <td itemprop="email">elken.tdos@gmail.com</td>
			                        <td><a href="gpgkeys/elken.asc" target="_blank">0x0F4093D1</a></td>
			                        <td itemprop="jobTitle">Developer</td>
		                        </tr>
                                <tr>
                                    <td itemprop="givenName">Louis Dion-Marcil</td>
                                    <td>ldionmarcil</td>
                                    <td itemprop="email">louis.dionmarcil@gmail.com</td>
                                    <td><a href="gpgkeys/ldionmarcil.asc" target="_blank">0x0E61E739</a></td>
                                    <td itemprop="jobTitle">Developer</td>
                                </tr>
								<tr>
                                    <td itemprop="givenName">Dimitri Mader</td>
                                    <td>anyon3</td>
                                    <td itemprop="email">dimitri@linux.com</td>
                                    <td><a href="gpgkeys/anyon3.asc" target="_blank">0x8B8E3622</a></td>
                                    <td itemprop="jobTitle">WebDeveloper</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Jeremy Marlow</td>
                                    <td>i3_Arch</td>
                                    <td itemprop="email">jamarlow410@gmail.com</td>
                                    <td><a href="gpgkeys/i3_Arch.asc" target="_blank">0xC8173B68</a></td>
                                    <td itemprop="jobTitle">Contributor</td>
                                </tr>
			                    <tr>
                                    <td itemprop="givenName">Pierre B.</td>
			                        <td>Pi3rrot</td>
			                        <td itemprop="email">pierre@pi3rrot.net</td>
			                        <td><a href="gpgkeys/pi3rrot.asc" target="_blank">0x0B694394</a></td>
			                        <td itemprop="jobTitle">Contributor</td>
		                        </tr>
		                        <tr>
			                        <td itemprop="givenName">Halit Alptekin</td>
			                        <td>rapt0r</td>
			                        <td itemprop="email">me@halitalptekin.com</td>
			                        <td><a href="gpgkeys/rapt0r.asc" target="_blank">0x17F838F9</a></td>
			                        <td itemprop="jobTitle">Contributor</td>
		                        </tr>
		                        <tr>
			                        <td itemprop="givenName">Ano Nymous</td>
			                        <td>sudokode</td>
			                        <td itemprop="email">sudokode@gmail.com</td>
			                        <td><a href="gpgkeys/sudokode.asc" target="_blank">0xBADC0DE</a></td>
			                        <td itemprop="jobTitle">Contributor</td>
		                        </tr>
                                <tr>
                                    <td itemprop="givenName">Guy Marquez</td>
                                    <td>eserror</td>
                                    <td itemprop="email">guy.marquez@yandex.com</td>
                                    <td><a href="gpgkeys/eserror.asc" target="_blank">0x1DDA1182</a></td>
                                    <td itemprop="jobTitle">Contributor</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Felipe Montes</td>
                                    <td>GudwaL</td>
                                    <td itemprop="email">felipe@smartdefence.cl</td>
                                    <td><a href="gpgkeys/gudwal.asc" target="_blank">0x9548C879</a></td>
                                    <td itemprop="jobTitle">Contributor</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Abelardo Ricart</td>
                                    <td>abby</td>
                                    <td itemprop="email">aricart@gmail.com</td>
                                    <td><a href="gpgkeys/abby.asc" target="_blank">0xF126259B</a></td>
                                    <td itemprop="jobTitle">Contributor</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Alexander Rothenberg</td>
                                    <td>EisWiesel</td>
                                    <td itemprop="email">unreal436@gmail.com</td>
                                    <td><a href="gpgkeys/eiswiesel.asc" target="_blank">0xBADC0DE</a></td>
                                    <td itemprop="jobTitle">Contributor</td>
                                </tr>
                            </table>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /.row -->
EOF

cat common/end
