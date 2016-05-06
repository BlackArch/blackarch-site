cat common/start

cat <<\EOF
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    <a>Blog<small> BlackArch Linux News</small></a>
                </h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">Home</a>
                    </li>
                    <li>
                        <a href="community.html">Community</a>
                    </li>
                    <li class="active">
                        Blog
                    </li>
                </ol>
            </div>
            <div class="col-md-8">
                <div class="panel panel-default text-left">
                    <div class="panel-heading">
                        <b>News</b>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <h4>New mirror added in Netherland! <d>05 Mar 2016</d></h4>
                            <hr />
                            <p>
                            We would like to thank <a href="https://forum.wawa-mania.ec/" target="_blank">Wawa-Mania (Dimitri <dimitri@linux.com>)</a> for becoming a BlackArch Linux mirror.
                                <br />
                                They are offering the following access: <a href="http://blackarch.wawa-mania.ec/" target="_blank">http</a>
                            </p>

                            <br />

                            <h4>New mirror added in USA! <d>05 Mar 2016</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://distro.ibiblio.org" target="_blank">Ibiblio / University of North Carolina </a> for becoming a BlackArch Linux mirror.
                                <br />
                                They are offering the following access: <a href="http://distro.ibiblio.org/blackarch/" target="_blank">http</a> |
                                <a href="ftp://distro.ibiblio.org/blackarch/" target="_blank">ftp</a>
                            </p>

                            <br />

                            <h4>New ISOs released! <d>29 Apr 2016</d></h4>
                            <hr />
                            <p>
                                Today we released new BlackArch Linux ISOs along with the new installer. The new ISOs include over 1400 tools. For more details see the ChangeLog below.
                            </p>
                            <p>
                                Here's the ChangeLog:
                                <ul>
                                    <li>added new (improved) BlackArch Linux installer</li>
                                    <li>include linux kernel 4.5.1</li>
                                    <li>added new blackarch linux installer</li>
                                    <li>fixed an EFI boot issue</li>
                                    <li>fixed the well-known i686 boot issue</li>
                                    <li>added more than 80 new tools</li>
                                    <li>updated all blackarch tools</li>
                                    <li>updated all system packages</li>
                                    <li>updated menu entries for window managers (awesome, fluxbox, openbox)</li>
                                </ul>
                            </p>
                            <p>
                                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
                            </p>

                            <br />

                            <h4>New BlackArch Linux installer released! <d>28 Apr 2016</d></h4>
                            <hr />
                            <p>
                                We have released the new (improved) BlackArch Linux installer today. It is built and released in our
                                <a href="https://www.blackarch.org/blackarch/blackarch/os/" target="_blank">repository</a> and can be installed via pacman:<br /><br />
                                <code>pacman -S blackarch-installer</code><br /><br /> The source code and documentation is available on github:
                                <a href="https://github.com/BlackArch/blackarch-installer" target="_blank">blackarch-installer</a>
                            </p>

                            <br />

                            <h4>New mirror added in Singapore! <d>12 Mar 2016</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://nus.edu.sg//">National University of Singapore</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://download.nus.edu.sg/mirror/blackarch/" target="_blank">http</a> |
                                <a href="https://download.nus.edu.sg/mirror/blackarch/" target="_blank">https</a>
                            </p>

                            <br />

                            <h4>New ISOs released! <d>11 Jan 2016</d></h4>
                            <hr />
                            <p>
                                Today we released new BlackArch Linux ISOs. The new ISOs include over 1330 tools. For more details see the ChangeLog below.
                            </p>
                            <p>
                                Here's the ChangeLog:
                                <ul>
                                    <li>added more than 30 new tools</li>
                                    <li>updated userland files (etc/)</li>
                                    <li>added bluetooth packages</li>
                                    <li>replaced 2nd browser opera with midori</li>
                                    <li>include linux kernel 4.3.3</li>
                                    <li>replaced mplayer with mpv</li>
                                    <li>package-fix: beef: use ruby 2</li>
                                    <li>added few missing security tools from community</li>
                                    <li>added package: htop</li>
                                </ul>
                            </p>
                            <p>
                                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
                            </p>

                            <br />

                            <h4>New mirror added in Germany! <d>05 Dec 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://ftp.halifax.rwth-aachen.de/">RWTH Aachen University</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://ftp.halifax.rwth-aachen.de/blackarch/" target="_blank">http</a> |
                                <a href="ftp://ftp.halifax.rwth-aachen.de/blackarch/" target="_blank">ftp</a> |
                                <a href="rsync://ftp.halifax.rwth-aachen.de/blackarch/" target="_blank">rsync</a>
                            </p>

                            <br />

                            <h4>New ISOs released! <d>25 Nov 2015</d></h4>
                            <hr />
                            <p>
                                Today we released new BlackArch Linux ISOs. The new ISOs include over 1300 tools. For more details see the ChangeLog below.
                            </p>
                            <p>
                                Here's the ChangeLog:
                                <ul>
                                    <li>added more than 100 new tools</li>
                                    <li>updated system packages</li>
                                    <li>include linux kernel 4.2.5</li>
                                    <li>updated all tools</li>
                                    <li>updated menu entries for window managers</li>
                                    <li>added (correct) multilib support</li>
                                    <li>added more fonts</li>
                                    <li>added missing group 'vboxsf'</li>
                                </ul>
                            </p>
                            <p>
                                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
                            </p>

                            <br />

                            <h4>We did it! <d>14 Nov 2015</d></h4>
                            <hr />
                            <p>
                            We went over the BlackArch Linux repository and updated all <a href="https://www.blackarch.org/tools.html" target="_blank">tools</a>.
                            Soon, we will release the new ISOs and the BlackArch Linux Guide, stay tuned!
                            <br /><br />
                            A big &quot;Thank you&quot; to all BlackArch Linux users, supporters and contributors.
                            </p>

                            <br />

                            <h4>New ISOs released! <d>02 Aug 2015</d></h4>
                            <hr />
                            <p>
                                Today we released new BlackArch Linux ISOs. The
                                new ISOs include over 1230 tools for i686 and
                                x86_64 and over 1010 tools. For more details see the ChangeLog below.
                            </p>
                            <p>
                                Here's the ChangeLog:
                                <ul>
                                    <li>added more than 30 new tools</li>
                                    <li>updated system packages including linux kernel 4.1.3</li>
                                    <li>updated all tools</li>
                                    <li>added new color config for vim</li>
                                    <li>replace splash.png</li>
                                    <li>deleted blackarch-install.txt</li>
                                    <li>updated /root/README</li>
                                    <li>fixed typos in ISO config files</li>
                                </ul>
                            </p>
                            <p>
                                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
                            </p>

                            <br />

                            <h4>New Vietnam mirror added! <d>17 Jun 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="archlinuxvn.org">archlinuxvn.org</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://f.archlinuxvn.org/blackarch/" target="_blank">http</a>
                            </p>

                            <br />

                            <h4>We did it! <d>15 Jun 2015</d></h4>
                            <hr />
                            <p>
                            We went over the BlackArch Linux repository and updated all <a href="https://www.blackarch.org/tools.html" target="_blank">tools</a>.
                            Soon, we will release the new ISOs and the BlackArch Linux Wiki, stay tuned!
                            <br /><br />
                            A big &quot;Thank you&quot; to all BlackArch Linux users, supporters and contributors.
                            </p>

                            <br />

                            <h4>New Austria mirrors added! <d>21 May 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="easyname.at">easyname.at</a> and <a href="nessus.at">nessus.at</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://mirror.easyname.at/blackarch/" target="_blank">http</a> |
                                <a href="ftp://mirror.easyname.at/blackarch/" target="_blank">ftp</a> |
                                <a href="rsync://mirror.easyname.at/blackarch/" target="_blank">rsync</a>
                            </p>

                            <br />

                            <h4>New Switzerland mirrors added! <d>21 May 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="easyname.at">easyname.at</a> and <a href="nessus.at">nessus.at</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://mirror.easyname.ch/blackarch/" target="_blank">http</a> |
                                <a href="ftp://mirror.easyname.ch/blackarch/" target="_blank">ftp</a> |
                                <a href="rsync://mirror.easyname.ch/blackarch/" target="_blank">rsync</a>
                            </p>

                            <br />

                            <h4>New China mirrors added! <d>01 May 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="ustc.edu.cn">ustc.edu.cn</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="https://mirrors.ustc.edu.cn/blackarch/" target="_blank">https</a>
                            </p>

                            <br />

                            <h4>New Denmark mirrors added! <d>15 Apr 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://dotsrc.org">dotsrc.org</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://mirrors.dotsrc.org/blackarch/" target="_blank">http</a> |
                                <a href="ftp://mirrors.dotsrc.org/blackarch/" target="_blank">ftp</a>
                            </p>

                            <br />

                            <h4>New Australia mirrors added! <d>10 Apr 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="digitalpacific.com.au">digitalpacific.com.au</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://blackarch.mirror.digitalpacific.com.au/" target="_blank">http</a> |
                                <a href="rsync://mirror.digitalpacific.com.au/blackarch" target="_blank">rsync</a>
                            </p>

                            <br />

                            <h4>New ISOs released (Bugfixes) <d>08 Apr 2015</d></h4>
                            <hr />
                            <p>
                                Today we released new BlackArch Linux ISOs. The new ISOs include over 1200 tools for i686 and x86_64 and over 1000 tools
                                for armv6h and armv7h. This release includes bugfixes and SHA1 sum checks for our strap.sh script in the installer.
                                For more details see the ChangeLog below.
                            </p>
                            <p>
                                Here's the ChangeLog:
                                <ul>
                                    <li>added README</li>
                                    <li>fix pacman.conf settings: replace HoldPkg settings with IgnorePkg</li>
                                    <li>updated blackarch-install-scripts (add missing packages, check SHA 1 sum of strap.sh, and more...)</li>
                                    <li>updated system packages including linux kernel 3.19.3, and more...</li>
                                    <li>updated tools (version bumps)</li>
                                </ul>
                            </p>
                            <p>
                                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
                            </p>

                            <br />

                            <h4>New Belgium mirrors added! <d>04 Apr 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://alexiobash.com/">alexiobash.com</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://mirror.alexiobash.com/blackarch/" target="_blank">http</a>
                            </p>

                            <br />

                            <h4>New US mirrors added! <d>02 Apr 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="https://tspitzconsulting.com/">TSpitz Consulting, Inc</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://mirror2.tscinc.co/blackarch" target="_blank">http</a> |
                                <a href="rsync://mirror2.tscinc.co/blackarch/" target="_blank">rsync</a>
                            </p>

                            <br />

                            <h4>New Poland mirrors added! <d>02 Apr 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://www.icm.edu.pl/">ICM Warsaw University</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://ftp.icm.edu.pl/pub/Linux/dist/blackarch" target="_blank">http</a> |
                                <a href="ftp://ftp.icm.edu.pl/pub/Linux/dist/blackarch" target="_blank">ftp</a> |
                                <a href="rsync://ftp.icm.edu.pl/pub/Linux/dist/blackarch" target="_blank">rsync</a> |
                                <a href="gopher://ftp.icm.edu.pl/1/pub/Linux/dist/blackarch" target="_blank">gopher</a>
                            </p>

                            <br />

                            <h4>New Greece mirrors added! <d>01 Apr 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://www.cc.uoc.gr/">University of Crete / Computer Center</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://ftp.cc.uoc.gr/mirrors/linux/blackarch/" target="_blank">http</a> |
                                <a href="ftp://ftp.cc.uoc.gr/mirrors/linux/blackarch/" target="_blank">ftp</a>
                            </p>

                            <br />

                            <h4>New France mirrors added! <d>01 Apr 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://tamcore.eu/">tamcore.eu</a> and <a href="http://uteditor.de/">uteditor.de</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://blackarch.tamcore.eu/" target="_blank">http</a> |
                                <a href="https://blackarch.tamcore.eu/" target="_blank">https</a> |
                                <a href="rsync://blackarch.tamcore.eu/blackarch/" target="_blank">rsync</a>
                            </p>

                            <br />

                            <h4>New ISOs and BlackArch Linux installer... <d>30 Mar 2015</d></h4>
                            <hr />
                            <p>
                                Today we released new BlackArch Linux ISOs. The new ISOs include over 1200 tools for i686 and x86_64 and over 1000 tools for armv6h and armv7h.
                            </p>
                            <p>
                                Here's a short ChangeLog:
                                <ul>
                                    <li>lot's of bugfixes</li>
                                    <li>change splash for boot loader (syslinux / grub)</li>
                                    <li>updated pacman.conf settings</li>
                                    <li>updated /etc/motd</li>
                                    <li>updated /etc/issue</li>
                                    <li>updated blackarch-install-scripts (version bump: 0.8)</li>
                                    <li>minor tweaks related to ISO builds</li>
                                    <li>updated menu entries for fluxbox, awesome and openbox</li>
                                    <li>updated all tools</li>
                                    <li>added more than 150 new tools</li>
                                </ul>
                            </p>
                            <p>
                                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
                            </p>

                            <br />

                            <h4>Tool count breaks 1200 & upcoming ISOs... <d>21 Mar 2015</d></h4>
                            <hr />
                            <p>
                                BlackArch Linux now contains more than 1200 tools. We will add the new tools to the next version of the ISO.
                                If you wish to become a beta tester join our <a href="irc://irc.freenode.net/blackarch" target="_blank">IRC channel</a> on Freenode.
                            </p>
                            <p>
                                In addition to over 150 new tools and a number of features, the new BlackArch Linux ISOs will include bugfixes for the current installer.
                                They will be released in a couple of days.
                            </p>
                            <p>
                                Also, in parallel, we are working on a new installer written in Python which will have a text- and a curses-based installer modes.
                                Once the new installer is finished, we will release new ISOs yet again.
                            </p>
                            <p>
                                Stay tuned...
                            <p />

                            <br />

                            <h4>New Turkey mirror added! <d>08 Mar 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://linux.org.tr/">linux.org.tr</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://ftp.linux.org.tr/blackarch/" target="_blank">http</a> |
                                <a href="ftp://ftp.linux.org.tr/blackarch/" target="_blank">ftp</a> |
                                <a href="rsync://rsync.linux.org.tr/blackarch/" target="_blank">rsync</a>
                            </p>

                            <br />

                            <h4>Major upgrade of BlackArch Linux repository! <d>15 Feb 2015</d></h4>
                            <hr />
                            <p>
                                We walked through the BlackArch Linux repository and upgraded almost every single package.<br />
                                In order to get the updated packages, run: <br /><br />
                                <code>pacman -Syyu --needed --force blackarch</code>
                                <br /><br />
                                Thanks for all supporters and contributors!
                            </p>

                            <br />

                            <h4>New Ecuador mirror added! <d>12 Feb 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://mirror.uta.edu.ec" target="_blank">mirror.uta.edu.ec</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://mirror.uta.edu.ec/blackarch/" target="_blank">http</a> |
                                <a href="ftp://mirror.uta.edu.ec/blackarch/" target="_blank">ftp</a> |
                                <a href="rsync://mirror.uta.edu.ec/blackarch/" target="_blank">rsync</a>
                            </p>

                            <br />

                            <h4>New Australia mirror added! <d>09 Jan 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://hexnoia.org/">hexnoia.org</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://blackarch.hexnoia.org/" target="_blank">http</a>
                            </p>

                            <br />

                            <h4>New Italy mirror added! <d>13 Jan 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="https://mirror.garr.it">garr.it</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://blackarch.mirror.garr.it/mirrors/blackarch/" target="_blank">http</a> |
                                <a href="rsync://blackarch.mirror.garr.it/blackarch/" target="_blank">rsync</a>
                            </p>

                            <br />

                            <h4>New Switzerland mirror added! <d>05 Jan 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="https://mirror.tillo.ch" target="_blank">tillo.ch</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="https://mirror.tillo.ch/ftp/blackarch/" target="_blank">https</a> |
                                <a href="http://mirror.tillo.ch/ftp/blackarch/" target="_blank">http</a> |
                                <a href="ftpes://mirror.tillo.ch/blackarch/" target="_blank">ftpes</a> |
                                <a href="ftp://mirror.tillo.ch/blackarch/" target="_blank">ftp</a> |
                                <a href="rsync://mirror.tillo.ch/blackarch/" target="_blank">rsync</a>
                            </p>

                            <br />

                            <h4>New US mirror added! <d>04 Jan 2015</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://mirrors.cdndepo.com/">CDN Depot</a> for becoming a mirror.
                                <br />
                                They are offering the following access:
                                <a href="https://blackarch.cdndepo.com/">https</a> |
                                <a href="http://blackarch.cdndepo.com/">http</a> |
                                <a href="rsync://blackarch.cdndepo.com/">rsync</a>
                            <p/>

                            <br />

                            <h4>New US mirror added! <d>29 Dec 2014</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://packetfire.org/">Packetfire</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="https://blackarch.mirror.packetfire.org/" target="_blank">https</a> |
                                <a href="http://blackarch.mirror.packetfire.org/" target="_blank">http</a> |
                                <a href="rsync://blackarch.mirror.packetfire.org/" target="_blank">rsync</a>
                            </p>

                            <br />

                            <h4>New Taiwan mirror added! <d>12 Nov 2014</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://www.cse.yzu.edu.tw/" target="_blank">Dept of CSE, Yuan Ze University</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://ftp.yzu.edu.tw/Linux/blackarch/" target="_blank">http</a> |
                                <a href="ftp://ftp.yzu.edu.tw/Linux/blackarch/" target="_blank">ftp</a> |
                                <a href="rsync://ftp.yzu.edu.tw/Linux/blackarch/" target="_blank">rsync</a>
                            </p>

                            <br />

                            <h4>New US mirror added! <d>13 Oct 2014</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="https://deadbeef.ninja" target="_blank">deadbeef.ninja</a>for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="https://deadbeef.ninja/blackarch/">https</a>
                            </p>

                            <br />

                            <h4>New ISOs! <d>07 Oct 2014</d></h4>
                            <hr />
                            <p>
                                Today, we released new BlackArch Linux ISOs including more than 1000 tools and lot's of improvements.
                                Also, armv6h and armv7h repositories are filled with more than 1050 tools.
                                <br /><br />
                                A short ChangeLog:
                                <ul>
                                    <li>tool fix: beef</li>
                                    <li>fixed pam issues</li>
                                    <li>added services and login.defs file</li>
                                    <li>removed kde/openbox and i3-debug menu items from lxdm</li>
                                    <li>fixed blackarch keyring issue</li>
                                    <li>disabled dhcpcd service</li>
                                    <li>upgraded menu entries for awesome, openbox and fluxbox</li>
                                    <li>upgraded tools</li>
                                    <li>added a bunch of new tools (contains now more than 1050 tools)</li>
                                    <li>upgraded archiso profile</li>
                                    <li>and more ...</li>
                                </ul>
                                <br />
                                We wanted to say "thank you" to all users and supporters of BlackArch Linux who contributed, donated and
                                motivated us for testings, fixes and improvements.
                            </p>

                            <br />

                            <h4>New Turkey mirror added! <d>21 Aug 2014</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://knuth.mirrortr.com/blackarch" target="_blank">knuth.mirrortr.com</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://knuth.mirrortr.com/blackarch" target="_blank">http</a> |
                                <a href="ftp://knuth.mirrortr.com/blackarch" target="_blank">ftp</a> |
                                <a href="rsync://knuth.mirrortr.com/blackarch" target="_blank">rsync</a>
                            </p>

                            <br />

                            <h4>Torrent files for new ISOs! <d>02 Jul 2014</d></h4>
                            <hr />
                            <p>
                                Torrent files for new ISOs have been added.
                                <br />
                                You can get them <a href="">here</a> or on our <a href="">mirror sites</a>.
                            </p>

                            <br />

                            <h4>New ISOs! <d>01 Jul 2014</d></h4>
                            <hr />
                            <p>
                                Today, we released new BlackArch Linux ISOs including more than 1000 tools and lot's of improvements. Also,
                                armv6h and armv7h repositories are filled with about 950 tools.
                                <br /><br />
                                A short ChangeLog:
                                <ul>
                                    <li>added new gtk theme</li>
                                    <li>added more locales for lxdm and system</li>
                                    <li>replaced wallpaper and logos</li>
                                    <li>added bash completions</li>
                                    <li>added exploits to /usr/share/exploits using sploitctl</li>
                                    <li>added a bunch of new tools / updated tools (more than 1000)</li>
                                    <li>added new packages with help flags to each wm's menus</li>
                                    <li>added missing users and groups in /etc/passwd and /etc/group</li>
                                </ul>
                                <br />
                                We wanted to say "thank you" to all users and supporters of BlackArch Linux who contributed, donated and motivated us
                                for testings, fixes and improvements.
                            </p>

                            <br />

                            <h4>New Taiwan mirror added! <d>30 Jun 2014</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://cs.nctu.edu.tw/" target="_blank">cs.nctu.edu.tw</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://blackarch.cs.nctu.edu.tw/" target="_blank">http</a> |
                                <a href="rsync://blackarch.cs.nctu.edu.tw/blackarch" target="_blank">rsync</a>
                            </p>

                            <br />

                            <h4>New Canada mirror added! <d>30 Jun 2014</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://clibre.uqam.ca/" target="_blank">clibre.uqam.ca</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://mirror.clibre.uqam.ca/blackarch/" target="">http</a>
                            </p>

                            <br />

                            <h4>New Ecuador mirrors added! <d>03 Jun 2014</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://cedia.org.ec/" target="">cedia.org.ec</a> and
                                <a href="http://espoch.edu.ec/" target="_blank">espoch.edu.ec</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://mirror.cedia.org.ec/blackarch/" target="_blank">http</a> |
                                <a href="http://mirror.espoch.edu.ec/blackarch" target="_blank">http</a>
                            </p>

                            <br />

                            <h4>New Germany mirrors added! <d>02 Jun 2014</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://www.curesec.com/" target="_blank">Curesec Team</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://blackarch1.curesec.com/blackarch/" target="_blank">http</a> |
                                <a href="http://blackarch2.curesec.com/blackarch/" target="_blank">http</a>
                            </p>

                            <br />

                            <h4>New US mirror added! <d>17 May 2014</d></h4>
                            <hr />
                            <p>
                                We would like to thank <a href="http://www.team-cymru.org/" target="_blank">Team Cymru</a> for becoming a mirror.
                                <br />
                                They are offering the following access: <a href="http://mirror.team-cymru.org/blackarch/" target="_blank">http</a> |
                                <a href="ftp://mirror.team-cymru.org/blackarch/" target="_blank">ftp</a> |
                                <a href="rsync://mirror.team-cymru.org/blackarch/" target="_blank">rsync</a>
                            </p>

                            <br />

                            <h4>New ISOs! <d>21 Apr 2014</d></h4>
                            <hr />
                            <p>
                                Today, we released new BlackArch Linux ISOs including more than 750 tools and lot's of improvements. Also, armv6h
                                and armv7h repositories are filled with about 650 tools.
                                <br /><br />
                                A short ChangeLog:
                                <ul>
                                    <li>added new system packages: mplayer, abs, ack, bc, bridge-utils, darkhttpd, flashplugin, inotify-tools, irssi,
                                        makepasswd, mercurial, mplayer, rtorrent, scrot, strace, tor-browser-en</li>
                                    <li>added .Xresources with entries for xterm</li>
                                    <li>added wicd to system start (systemctl)</li>
                                    <li>added wicd and wicd-gtk networkmanager</li>
                                    <li>removed 'xset r rate 150 100' entry for X</li>
                                    <li>updated menu entries</li>
                                    <li>added more than 150 new tools</li>
                                    <li>replaced zathura pdf reader with mupdf</li>
                                </ul>
                                <br />
                                We wanted to say "thank you" to all users and supporters of BlackArch Linux who contributed, donated and motivated us
                                for testings, fixes and improvements.
                            </p>

                            <br />

                            <h4>ARM Support and New ISOs! <d>03 Mar 2014</d></h4>
                            <hr />
                            <p>
                                BlackArch now has ARM support. Currently, there are 570 tools in the armv6h repo and 580 tools in the armv7h repo.
                                We are working to close the gap between the ARM repos and the x86_64 and i686 repos. Expect to see over 600 tools in
                                each ARM repo within a week or two.
                                <br /><br />
                                Soon, we will release ARM images for various devices including the Raspberry Pi and Pandaboard.
                                <br /><br />
                                We also released new ISOs today. The new ISOs make the following changes:
                                <ul>
                                    <li>package: added zathura</li>
                                    <li>package: added lsof</li>
                                    <li>package: added pkgfile</li>
                                    <li>disabled pc speaker beep</li>
                                    <li>added initial /etc/motd with notes</li>
                                    <li>vim: removed alias of vi="vim"</li>
                                    <li>vim: disabled remap of ':'</li>
                                    <li>vim: set ttimeoutlen=100</li>
                                </ul>
                            </p>

                            <br />

                            <h4>New tools: netcon.sh and strap.sh <d>20 Feb 2014</d></h4>
                            <hr />
                            <p>
                                BlackArch now comes with <a href="https://github.com/BlackArch/netcon" target="_blank">netcon.sh</a>, a script to establish
                                network connections with the option to spoof MAC addresses, hostnames, clientids, etc.
                                <br /><br />
                                Also, we simplified the <a href="http://blackarch.org/downloads.html">installation instructions</a> with a new script:
                                <a href="/strap.sh">strap.sh</a>.
                            </p>

                            <br />

                            <h4>New keyring <d>1 Jan 2014</d></h4>
                            <hr />
                            <p>
                                All existing users must follow the <a href="http://blackarch.org/downloads.html">new installation instructions</a>, including step 0.
                                We switched to a more robust keyring. The new keyring is a modification of the keyring used by the Arch Linux developers.
                            </p>

                            <br />

                            <h4>Live ISOs, Status, and Futures! <d>12 Jan 2014</d></h4>
                            <hr />
                            <p>
                                BlackArch Linux is an Arch-based GNU/Linux distribution for pentesters and security researchers. The BlackArch package
                                repository is compatible with existing Arch installs.
                                <br /><br />
                                Here are some of BlackArch's features:
                                <ul>
                                    <li>Support for i686 and x86_64 architectures</li>
                                    <li>Over 600 tools (constantly increasing)</li>
                                    <li>Modular package groups</li>
                                    <li>A live ISO with multiple window managers, including dwm, Fluxbox, Openbox, Awesome, wmii, i3, and Spectrwm.</li>
                                    <li>An installer with the ability to build from source.</li>
                                </ul>
                                <br />
                                Soon we will release:
                                <br /><br />
                                <ul>
                                    <li>ARM support</li>
                                    <li>Documentation for all tools</li>
                                </ul>
                                <br />
                                We are also releasing a tool to fetch and search exploit archives called
                                <a href="https://github.com/BlackArch/sploitctl/blob/master/sploitctl.sh">sploitctl</a>. The
                                <a href="http://www.nullsecurity.net/" target="_blank">nullsecurity</a> team is an official supporter of BlackArch Linux.
                                We have a relaxed development structure. We welcome pull requests of all sizes through
                                <a href="https://github.com/BlackArch" target="_blank">Github</a> and <a href="mailto:team@blackarch.org">email</a>.
                                Also see our <a href="http://www.blackarch.org">website</a>,
                                <a href="https://twitter.com/blackarchlinux" target="_blank">Twitter account</a>, and
                                <a href="irc://irc.freenode.net/blackarch" target="_blank">IRC channel</a>.
                                <br /><br />
                                Please report bugs and feature/tool requests through Github, email, twitter, or IRC. Feel free to post requests for your
                                own tools.
                            </p>

                            <br />

                            <h4>Major release and site redesign! <d>28 Dec 2013</d></h4>
                            <hr />
                            <p>
                                We redesigned our website. We hope you like the new style. We also released a bunch of new tools. There are over 600 tools
                                in the repo now. The full list of tools is <a href="tools.html">here</a>.
                            </p>

                            <br />

                            <h4>Updates to Pacman.conf! <d>20 Dec 2013</d></h4>
                            <hr />
                            <p>
                                We changed the directory structure of the repository. Please modify your pacman.conf files like so:
                                <ul>
                                    <li>[blackarch]<codecmd></li>
                                    <li>Server = http://blackarch.org/blackarch/$repo/os/$arch</li>
                                </ul>
                                <br />
                                The repository directory structure now resembles that of the official Arch repositories. The new structure will make it easier
                                for mirrors to sync with our repository.
                            </p>

                            <br />

                            <h4>We did it! <d>24 Nov 2013</d></h4>
                            <hr />
                            <p>
                                Thanks to everyone's interest in this project we finally pissed off our ISP! It makes us happy to know that so many people
                                appreciate our hard work and are using BlackArch Linux. We have managed to push a record 1.2TB a month of traffic and downloads.
                                The shiny new server is up and alive, thank you for being patient with us. We are currently replicating mirrors across the USA
                                to help with any potential future disruptions. For the latest updates please come back and visit us or follow us on twitter.
                                Thanks everyone!
                            </p>

                            <br />

                            <h4>Securabit Podcast! <d>16 Sep 2013</d></h4>
                            <hr />
                            <p>
                                We're on <a href="http://securabit.com/" target="_blank">Securabit Podcast</a>. Thanks to
                                <a href="https://twitter.com/secbitchris" target="_blank">Chris Gerling</a>,
                                <a href="https://twitter.com/thechrisam" target="_blank">Chris Mills</a>, and
                                <a href="https://twitter.com/mpbailey1911" target="_blank">Mike Bailey</a> for having me as a guest. You can
                                <a href="http://securabit.com/?powerpress_pinw=3378-podcast" target="_blank">listen</a> to the podcast or
                                <a href="http://traffic.libsyn.com/securabit/SecuraBit_EP119.mp3" target="_blank">download</a> it. They have relaunched their
                                virtual lab environment <a href="http://www.gh0st.net/" target="_blank">Gh0st Networks</a>, it's a great free tool for the community
                                to help grow a more secure internet. Their philosphy is screw all the "hats", Gh0st Networks is about learning, exploring,
                                exploiting and connecting in a world where finance and politics are now a few of the motives behind the creation of malware today.
                                Research and reverse engineer these plagues towards the common goal of a secure internet.
                            </p>

                            <br />

                            <h4>Extended downtime! <d>25 Aug 2013</d></h4>
                            <hr />
                            <p>
                                We're continuing work to upgrade our infrastructure, as a part of this improvement our domain service provider experienced some
                                issues which resulted in slow proprogation of our DNS records across the globe. This was the root cause of our extended downtime.
                                This issue has now been corrected, we apologize for the inconvenience.
                            </p>

                            <br />

                            <h4>Speak candidly! <d>24 Aug 2013</d></h4>
                            <hr />
                            <p>
                                We have recently relocated all tools in the repository to comply with <a href="http://www.pathname.com/fhs/" target="_blank">FHS</a>.
                                We would like to hear from anyone that was familiar with the <i>/pentest</i> path structure and how they feel about the current format.
                                Did anyone depend on <i>/pentest</i> to remember what tools you have in your arsenal? Do you prefer having all tools available to you
                                in your <i>$PATH</i>? Please feel free to comment below and speak your mind!
                            </p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <div style="border: 1px solid #aaa; border-radius:4px; height:420px;">
                    <a class="twitter-timeline" href="https://twitter.com/blackarchlinux" height="420px" data-widget-id="368746180060004352" data-theme="dark">Tweets by @blackarchlinux</a>
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
        <!-- /.row -->

EOF

cat common/end
