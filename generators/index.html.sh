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
        <div class="panel panel-default text-left">
        <div class=panel-heading>
            <b>About</b>
        </div>
        <div class=list-group-item>
                <p>BlackArch Linux is an <a href="http://www.archlinux.org/" target="_blank">Arch Linux</a>-based penetration testing distribution for penetration testers
                    and security researchers. The repository contains <a href="tools.html">${TOOL_COUNT}</a> tools. You can install tools individually or in groups.
                    BlackArch Linux is compatible with existing Arch installs. For more information, see the
        <a href="downloads.html#install-repo">installation instructions</a>.
        Also, news is published on our <a href="blog.html">blog</a>.</p>
                <p>Please note that BlackArch is a relatively new project. To report bugs and request new tools, please visit the
                    <a href="https://github.com/BlackArch/blackarch/issues" target="_blank">issue tracker</a> on Github, stop by <a href="community.html">IRC</a>, or
                    <a href="mailto:team@blackarch.org">email</a> us.</p>
                <p>The BlackArch Live ISO contains multiple window managers. Below you will find screenshots of a few of them.</p>
        </div>
        </div>
        <br><br><br>
            <div class="col-md-4 col-sm-6">
                <a href="/images/screenshots/fluxbox.png"><img class="img-responsive img-portfolio img-hover" src="images/screenshots/fluxbox.png" alt="BlackArch Linux with fluxbox"></a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="/images/screenshots/i3.png"><img class="img-responsive img-portfolio img-hover" src="images/screenshots/i3.png" alt="BlackArch Linux with i3"></a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="/images/screenshots/awesome.png"><img class="img-responsive img-portfolio img-hover" src="images/screenshots/awesome.png" alt="BlackArch Linux with awesome wm"></a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="/images/screenshots/spectrwm.png"><img class="img-responsive img-portfolio img-hover" style="height:224px" src="images/screenshots/spectrwm.png" alt="BlackArch Linux with spectrwm"></a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="/images/screenshots/lxdm.png"><img class="img-responsive img-portfolio img-hover" style="height:224px;" src="images/screenshots/lxdm.png" alt="BlackArch Linux with lxdm"></a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="/images/screenshots/grub.png"><img class="img-responsive img-portfolio img-hover" style="height:224px;width:400px" src="images/screenshots/grub.png" alt="BlackArch Linux Grub"></a>
            </div>
        </div>
    </div>
        <!-- /.row -->
        <!-- actual developers -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">BlackArch Linux Developers</h2>
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
                                    <td itemprop="givenName">Levon Kayan</td>
                                    <td itemprop="additionalName">noptrix</td>
                                    <td itemprop="email">noptrix@blackarch.org</td>
                                    <td><a href="gpgkeys/noptrix.asc" target="_blank">0x7A747D10</a></td>
                                    <td itemprop="jobTitle">Leader, Developer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Pedro Freitas</td>
                                    <td itemprop="additionalName">psf</td>
                                    <td itemprop="email">psf@blackarch.org</td>
                                    <td><a href="gpgkeys/psf.asc" target="_blank">0x6B644488</a></td>
                                    <td itemprop="jobTitle">Developer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Pierre B.</td>
                                    <td itemprop="additionalName">Pi3rrot</td>
                                    <td itemprop="email">pi3rrot@blackarch.org</td>
                                    <td><a href="gpgkeys/pi3rrot.asc" target="_blank">0x0B694394</a></td>
                                    <td itemprop="jobTitle">Developer, Torrent Master</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Hannes Eichblatt</td>
                                    <td itemprop="additionalName">heichblatt</td>
                                    <td itemprop="email">heichblatt@blackarch.org</td>
                                    <td><a href="gpgkeys/heichblatt.asc" target="_blank">0x31B0AF0E</a></td>
                                    <td>Developer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Stefan Venz</td>
                                    <td itemprop="additionalName">ikstream</td>
                                    <td itemprop="email">ikstream@blackarch.org</td>
                                    <td><a href="gpgkeys/ikstream.asc" target="_blank">0x8CAA1975</a></td>
                                    <td>Developer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Sepehrdad Sh</td>
                                    <td itemprop="additionalName">sepehrdad</td>
                                    <td itemprop="email">sepehrdad@blackarch.org</td>
                                    <td><a href="gpgkeys/sepehrdad.asc" target="_blank">0x76903A84</a></td>
                                    <td itemprop="jobTitle">Developer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Eduard Toloza</td>
                                    <td itemprop="additionalName">Edu4rdSHL</td>
                                    <td itemprop="email">edu4rdshl@blackarch.org</td>
                                    <td><a href="gpgkeys/du4rdshl.asc" target="_blank">0x09F553E5</a></td>
                                    <td itemprop="jobTitle">Developer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">German Vechtomov</td>
                                    <td itemprop="additionalName">mrsmith0x00</td>
                                    <td itemprop="email">mrsmith0x00@blackarch.org</td>
                                    <td><a href="gpgkeys/mrsmith0x00.asc" target="_blank">0x43FB1128</a></td>
                                    <td itemprop="jobTitle">Developer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Richard Baumann</td>
                                    <td itemprop="additionalName">ohaz</td>
                                    <td itemprop="email">ohaz@blackarch.org</td>
                                    <td><a href="gpgkeys/ohaz.asc" target="_blank">0x9684D220</a></td>
                                    <td itemprop="jobTitle">Developer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Leon L.</td>
                                    <td itemprop="additionalName">Tazmain</td>
                                    <td itemprop="email">tazmain@blackarch.org</td>
                                    <td><a href="gpgkeys/tazmain.asc" target="_blank">0xBA75AF84</a></td>
                                    <td itemprop="jobTitle">Developer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">OSO SPEED</td>
                                    <td itemprop="additionalName">OSO</td>
                                    <td itemprop="email">oso@blackarch.org</td>
                                    <td><a href="gpgkeys/oso.asc" target="_blank">0x005E6A4C</a></td>
                                    <td itemprop="jobTitle">Developer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Jeremy Marlow</td>
                                    <td itemprop="additionalName">i3_Arch</td>
                                    <td itemprop="email">i3_arch@blackarch.org</td>
                                    <td><a href="gpgkeys/i3_Arch.asc" target="_blank">0xC8173B68</a></td>
                                    <td itemprop="jobTitle">Developer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Alexandre Zanni</td>
                                    <td itemprop="additionalName">noraj</td>
                                    <td itemprop="email">noraj@blackarch.org</td>
                                    <td><a href="gpgkeys/noraj.asc" target="_blank">0x5BFB05CA</a></td>
                                    <td itemprop="jobTitle">Developer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Harry P.</td>
                                    <td itemprop="additionalName">luserx0</td>
                                    <td itemprop="email">luserx0@blackarch.org</td>
                                    <td><a href="gpgkeys/luserx0.asc" target="_blank">0x90883003</a></td>
                                    <td itemprop="jobTitle">Developer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Semtex</td>
                                    <td itemprop="additionalName">s7x</td>
                                    <td itemprop="email">s7x@blackarch.org</td>
                                    <td><a href="gpgkeys/s7x.asc" target="_blank">0x461E386F</a></td>
                                    <td itemprop="jobTitle">Contributor</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Filipe Lains</td>
                                    <td itemprop="additionalName">FFY00</td>
                                    <td itemprop="email">ffy00@blackarch.org</td>
                                    <td><a href="gpgkeys/ffy00.asc" target="_blank">0xB0EB4BF2</a></td>
                                    <td itemprop="jobTitle">Contributor</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Erik</td>
                                    <td itemprop="additionalName">deep_m4gic</td>
                                    <td itemprop="email">deep_m4gic@blackarch.org</td>
                                    <td><a href="gpgkeys/deep_m4gic.asc" target="_blank">0x772F36C5</a></td>
                                    <td itemprop="jobTitle">Designer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Alexander Rothenberg</td>
                                    <td itemprop="additionalName">EisWiesel</td>
                                    <td itemprop="email">eiswiesel@blackarch.org</td>
                                    <td><a href="gpgkeys/eiswiesel.asc" target="_blank">0xBADC0DE</a></td>
                                    <td itemprop="jobTitle">WebDesigner</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Dimitri Mader</td>
                                    <td itemprop="additionalName">anyon3</td>
                                    <td itemprop="email">anyon3@blackarch.org</td>
                                    <td><a href="gpgkeys/anyon3.asc" target="_blank">0x8B8E3622</a></td>
                                    <td itemprop="jobTitle">WebDeveloper</td>
                                </tr>
                            </table>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- hall of fame -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">BlackArch Linux Former Developers & Contributors - Hall of Fame</h2>
                <p>BlackArch Linux is backed by a team of volunteers. Below are the names of those who helped the project.</p>
            </div>
            <div class="col-md-12">
                <div class="panel panel-default text-left">
                    <div class="panel-heading">
                        <b>Former Developers & Contributors</b>
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
                                    <td itemprop="additionalName">paraxor</td>
                                    <td itemprop="email">teitelmanevan@gmail.com</td>
                                    <td><a href="gpgkeys/paraxor.asc" target="_blank">0xEA87E4E3</a></td>
                                    <td itemprop="jobTitle">Founder, Developer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Javier</td>
                                    <td itemprop="additionalName">nrz</td>
                                    <td itemprop="email">nrz@nullsecurity.net</td>
                                    <td><a href="gpgkeys/nrz.asc" target="_blank">0x7C03DD86</a></td>
                                    <td itemprop="jobTitle">Developer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Ellis Kenyo</td>
                                    <td itemprop="additionalName">elken</td>
                                    <td itemprop="email">elken.tdos@gmail.com</td>
                                    <td><a href="gpgkeys/elken.asc" target="_blank">0x0F4093D1</a></td>
                                    <td itemprop="jobTitle">Developer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Louis Dion-Marcil</td>
                                    <td itemprop="additionalName">ldionmarcil</td>
                                    <td itemprop="email">louis.dionmarcil@gmail.com</td>
                                    <td><a href="gpgkeys/ldionmarcil.asc" target="_blank">0x0E61E739</a></td>
                                    <td itemprop="jobTitle">Developer</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Halit Alptekin</td>
                                    <td itemprop="additionalName">rapt0r</td>
                                    <td itemprop="email">me@halitalptekin.com</td>
                                    <td><a href="gpgkeys/rapt0r.asc" target="_blank">0x17F838F9</a></td>
                                    <td itemprop="jobTitle">Contributor</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Ano Nymous</td>
                                    <td itemprop="additionalName">sudokode</td>
                                    <td itemprop="email">sudokode@gmail.com</td>
                                    <td><a href="gpgkeys/sudokode.asc" target="_blank">0xBADC0DE</a></td>
                                    <td itemprop="jobTitle">Contributor</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Guy Marquez</td>
                                    <td itemprop="additionalName">eserror</td>
                                    <td itemprop="email">guy.marquez@yandex.com</td>
                                    <td><a href="gpgkeys/eserror.asc" target="_blank">0x1DDA1182</a></td>
                                    <td itemprop="jobTitle">Contributor</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Felipe Montes</td>
                                    <td itemprop="additionalName">GudwaL</td>
                                    <td itemprop="email">felipe@smartdefence.cl</td>
                                    <td><a href="gpgkeys/gudwal.asc" target="_blank">0x9548C879</a></td>
                                    <td itemprop="jobTitle">Contributor</td>
                                </tr>
                                <tr>
                                    <td itemprop="givenName">Abelardo Ricart</td>
                                    <td itemprop="additionalName">abby</td>
                                    <td itemprop="email">aricart@gmail.com</td>
                                    <td><a href="gpgkeys/abby.asc" target="_blank">0xF126259B</a></td>
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
