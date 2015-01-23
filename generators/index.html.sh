cat common/start-index

cat <<EOF
    <!-- Page Content -->
    <div class="container">

        <!-- Portfolio Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">About BlackArch Linux</h2>
                <p>
                    BlackArch Linux is a lightweight expansion to <a href="http://www.archlinux.org/" target="_blank">Arch Linux</a> for penetration testers
                    and security researchers. The repository contains <a href="tools.html">${TOOL_COUNT}</a> tools. You can install tools individually or in groups. BlackArch Linux is compatible
                    with existing Arch installs. For more information, see the <a href="downloads.html#install-repo">installation instructions</a>.
                </p>
                <p>
                    Please note that although BlackArch is past the beta stage, it is still a relatively new project. To report bugs and request new tools,
                    please visit the <a href="https://github.com/BlackArch/blackarch/issues" target="_blank">issue tracker</a> on Github, stop by
                    <a href="community.html">IRC</a>, or <a href="mailto:blackarchlinux@gmail.com">email</a> us.
                </p>
                <p>
                    The BlackArch Live ISO contains multiple window managers. Here are screenshots of a few of them, of the lxdm display manager and of the syslinux bootloader:
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
                <h2 class="page-header">
                    About BlackArch Linux Developers & Contributors
                </h2>
                <p>
                    BlackArch Linux is backed by a team of volunteers. Some of them have chosen to appear in the following list.
                </p>
            </div>
            <div class="col-md-12">
                <div class="panel panel-default text-left">
                    <div class="panel-heading">
                        <b>Developers</b>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <table style="table-layout:fixed;width=600">
                                <col width="180px" />
                                <col width="140px" />
                                <col width="260px" />
                                <col width="150px" />
                                <tr>
                                    <td align="left"><b>Name</b></td>
                                    <td align="left"><b>Nickname</b></td>
                                    <td align="left"><b>E-Mail</b></td>
                                    <td align="left"><b>GPG Key</b></td>
                                    <td align="left"><b>Role</b></td>
                                </tr>
                                <tr><td><br /></td></tr>
		                        <tr>
			                        <td>Evan Teitelman</td>
			                        <td>paraxor</td>
			                        <td>teitelmanevan[at]gmail.com</td>
			                        <td><a href="gpgkeys/paraxor.asc" target="_blank">0xEA87E4E3</a></td>
			                        <td>Founder, Developer</td>
		                        </tr>
		                        <tr>
			                        <td>Levon Kayan</td>
			                        <td>noptrix</td>
			                        <td>noptrix[at]nullsecurity.net</td>
			                        <td><a href="gpgkeys/noptrix.asc" target="_blank">0xDCA45D42</a></td>
			                        <td>Developer</td>
		                        </tr>
		                        <tr>
			                        <td>Javier</td>
			                        <td>nrz</td>
			                        <td>nrz[at]nullsecurity.net</td>
			                        <td><a href="gpgkeys/nrz.asc" target="_blank">0x7C03DD86</a></td>
			                        <td>Developer</td>
		                        </tr>
		                        <tr>
			                        <td>Ellis Kenyo</td>
			                        <td>elken</td>
			                        <td>elken.tdos[at]gmail.com</td>
			                        <td><a href="gpgkeys/elken.asc" target="_blank">0x0F4093D1</a></td>
			                        <td>Developer</td>
		                        </tr>
                                <tr>
                                    <td>Louis Dion-Marcil</td>
                                    <td>ldionmarcil</td>
                                    <td>louis.dionmarcil[at]gmail.com</td>
                                    <td><a href="gpgkeys/ldionmarcil.asc" target="_blank">0x0E61E739</a></td>
                                    <td>Developer</td>
                                </tr>
                                <tr>
                                    <td>Jeremy Marlow</td>
                                    <td>i3_Arch</td>
                                    <td>jamarlow410[at]st.nashcc.edu</td>
                                    <td><a href="gpgkeys/i3_arch.asc" target="_blank">0xC8173B68</a></td>
                                    <td>Contributor</td>
                                </tr>
			                    <tr>
                                    <td>Pierre B.</td>
			                        <td>Pi3rrot</td>
			                        <td>pierre[at]pi3rrot.net</td>
			                        <td><a href="gpgkeys/pi3rrot.asc" target="_blank">0x0B694394</a></td>
			                        <td>Contributor</td>
		                        </tr>
		                        <tr>
			                        <td>Anon Anon</td>
			                        <td>sudokode</td>
			                        <td>sudokode[at]gmail.com</td>
			                        <td><a href="gpgkeys/sudokode.asc" target="_blank">0x8B0554C7</a></td>
			                        <td>Contributor</td>
		                        </tr>
                                <tr>
                                    <td>Guy Marquez</td>
                                    <td>w4rk3n</td>
                                    <td>guy[at]smartdefence.cl</td>
                                    <td><a href="gpgkeys/w4rk3n.asc" target="_blank">0x27F4E268</a></td>
                                    <td>Contributor</td>
                                </tr>
                                <tr>
                                    <td>Felipe Montes</td>
                                    <td>GudwaL</td>
                                    <td>felipe[at]smartdefence.cl</td>
                                    <td><a href="gpgkeys/gudwal.asc" target="_blank">0x9548C879</a></td>
                                    <td>Contributor</td>
                                </tr>
                                <tr>
                                    <td>Abelardo Ricart</td>
                                    <td>abby</td>
                                    <td>aricart[at]gmail.com</td>
                                    <td><a href="gpgkeys/abby.asc" target="_blank">0xF126259B</a></td>
                                    <td>Contributor</td>
                                </tr>
                            </table>
                        </li>
                    </ul>
                    <!-- <ul class="list-group">
                        <li class="list-group-item">
                            <p>
                                foo
                            </p>
                        </li>
                        </ul> -->
                </div>
            </div>
        </div>
        <!-- /.row -->
EOF

cat common/end-index
