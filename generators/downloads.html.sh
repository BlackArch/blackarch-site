cat common/start-downloads

cat <<\EOF
   <div class="container result">
        <!-- Page Heading/Breadcrumbs -->
          <div class="row">
            <div class="col-lg-12">
               <div class="page-header page-header-title">
	           <h1>Downloads</h1> <h2>BlackArch iso</h2>
               </div>
                <ol class="breadcrumb">
                    <li><a class=home href="index.html">Home</a>
                    </li>
                    <li class="active">Downloads</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <!-- Sidebar Column -->
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#iso-download" class="list-group-item active">Live ISOs</a>
                    <a href="#install-repo" class="list-group-item">Installing on top of ArchLinux</a>
                    <a href="#install-iso" class="list-group-item">Installing from ISO</a>
                    <a href="#blackarch-arm" class="list-group-item">ARM</a>
                    <a href="#mirror-list" class="list-group-item">Mirrors</a>
                </div>
            </div>
            <!-- Content Column -->
            <div class="col-md-9">
                <p>
				    Here you will find official BlackArch Linux downloads and installation instructions.
                </p>
                <hr />
                <div class="panel panel-default text-left">
                    <div id=iso-download class="panel-heading">
                        <b>Live ISOs</b>
                    </div>
                    <ul class="list-group" itemscope itemtype="https://schema.org/CreativeWork">
                        <li class="list-group-item">
                            <p itemprop="about">
							    The following list contains official BlackArch live and netinstall ISO images. You can burn these images to DVDs and flashdrives.
                            	<br><br>
                                The live ISO contains a complete, functional BlackArch Linux system. The netinstall ISO is a lightweight image for bootstrapping machines.
								<br><br>
							    If possible, please try to use a mirror near you to download the ISOs. You can find a <a href="#mirror-list">list of mirrors</a> below.
						    </p>
                            <hr />
                            <table id=download>
                                <tr>
                                    <td><b>Image</b></td>
                                    <td><b>Version</b></td>
                                    <td><b>Torrent</b></td>
                                    <td><b>Size</b></td>
                                    <td><b>SHA1sum</b></td>
                                </tr>
                                <tr>
                                    <td><a href="http://www.mirrorservice.org/sites/blackarch.org/blackarch/iso/blackarchlinux-live-2016.08.19-x86_64.iso" itemprop="fileFormat" type="application/x-iso9660-image">BlackArch Linux 64 bit Live ISO</a></td>
                                    <td itemprop="datePublished">2016.08.19</td>
                                    <td><a href="/blackarch/torrent/blackarchlinux-live-2016.08.19-x86_64.iso.torrent" itemprop="fileFormat" type="application/octet-stream">Torrent</a></td>
                                    <td><span>4.5 GB</span></td>
                                    <td>b806de5d50fe972b3b766cc70ccbb707aa622862</td>
                                </tr>
                                <tr>
                                    <td><a href="http://www.mirrorservice.org/sites/blackarch.org/blackarch/iso/blackarchlinux-live-2016.08.19-i686.iso" itemprop="fileFormat" type="application/x-iso9660-image">BlackArch Linux 32 bit Live ISO</a></td>
                                    <td itemprop="datePublished">2016.08.19</td>
                                    <td><a href="/blackarch/torrent/blackarchlinux-live-2016.08.19-i686.iso.torrent" itemprop="fileFormat" type="application/octet-stream">Torrent</a></td>
                                    <td>4.5 GB</td>
                                    <td>c87d5a01dc170fabc5cb95b82e29bbbca81d5bd3</td>
                                </tr>
                                <tr>
                                    <td><a href="http://www.mirrorservice.org/sites/blackarch.org/blackarch/iso/blackarchlinux-netinst-2016.08.19-x86_64.iso" itemprop="fileFormat" type="application/x-iso9660-image">BlackArch Linux 64 bit Netinstall ISO</a></td>
                                    <td itemprop="datePublished">2016.08.19</td>
                                    <td><a href="/blackarch/torrent/blackarchlinux-netinst-2016.08.19-x86_64.iso.torrent" itemprop="fileFormat" type="application/octet-stream">Torrent</a></td>
                                    <td>405 MB</td>
                                    <td>1df1b9e0b3929703fd2ccb1b9c9819aac719ebed</td>
                                </tr>
                                <tr>
                                    <td><a href="http://www.mirrorservice.org/sites/blackarch.org/blackarch/iso/blackarchlinux-netinst-2016.08.19-i686.iso" itemprop="fileFormat" type="application/x-iso9660-image">BlackArch Linux 32 bit Netinstall ISO</a></td>
                                    <td itemprop="datePublished">2016.08.19</td>
                                    <td><a href="/blackarch/torrent/blackarchlinux-netinst-2016.08.19-i686.iso.torrent" itemprop="fileFormat" type="application/octet-stream">Torrent</a></td>
                                    <td>355 MB</td>
                                    <td>b15fd14be3622c88301de09d11af2b125f050816</td>
                                </tr>
                            </table>
                            <hr />
                            <p>
                                Do not use UNetBootIn to write ISO files to flashdrives. UNetBootIn modifies the bootloader configuration, which is bad.
                                You can use this instead (where /dev/sdX is your flashdrive and file.iso is a BlackArch ISO):
                            </p>
                            <div class=code-block>
                                <p># Example Image writing<br></p>
                                $ <span> sudo dd bs=512M if=file.iso of=/dev/sdX </span>
                            </div>
                            <br>
                            <p>
                                <b>Default Login</b>
                                <br>
                                The default login for all ISOs is:
                                <strong>root:blackarch</strong>
                            </p>
                        </li>
                    </ul>
                </div>
                <div class="panel panel-default text-left">
                    <div id=install-repo class="panel-heading">
                        <b>Installing on top of ArchLinux</b>
                    </div>
                    <ul class=list-group>
                        <li class=list-group-item>
                            <p>
							    BlackArch Linux is compatible with existing/normal Arch installations. It acts as an unofficial user repository. Below you will find
                                instructions on how to install BlackArch in this manner.
                            </p>
                            <div class=code-block>
                                <p># Run https://blackarch.org/strap.sh as root and follow the instructions.</p>
                                $ <span>curl -O https://blackarch.org/strap.sh</span>
                                <p># The SHA1 sum should match: 34b1a3698a4c971807fb1fe41463b9d25e1a4a09</p>
                                $ <span>sha1sum strap.sh</span>
                                <p># Set execute bit</p>
                                $ <span>chmod +x strap.sh</span>
                                <p># Run strap.sh</p>
                                $ <span>sudo ./strap.sh</span>
                            </div>
                            You may now install tools from the blackarch repository.
                            <div class=code-block>
                                <p># To list all of the available tools, run </p>
                                $ <span>sudo pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u</span>
                                <p># To install all of the tools, run</p>
                                $ <span>sudo pacman -S blackarch</span>
                                <p># To install a category of tools, run</p>
                                $ <span>sudo pacman -S blackarch-&lt;category&gt;</span>
                                <p># To see the blackarch categories, run</p>
                                $ <span>sudo pacman -Sg | grep blackarch</span>
                            </div>
                            <p>
                            <br>
                                As part of an alternative method of installation, you can build the blackarch packages from source.
                                You can find the PKGBUILDs <a href="https://github.com/BlackArch/blackarch" target="_blank">on github</a>.
                                To build the entire repo, you can use the blackman tool.
                            <br>
                            </p>
                            <div class=code-block>
                                <p># First, you must install blackman. If the BlackArch package repository is setup on your machine,<br>
                                   # you can install blackman like:</p>
                                $ <span>sudo pacman -S blackman</span>
                                <p># Download, compile and install package:</p>
                                $ <span> sudo blackman -i &lt;package&gt;</span>
                                <p># Download, compile and install whole category</p>
                                $ <span>sudo blackman -g &lt;group&gt;</span>
                                <p># Download, compile and install all BlackArch tools</p>
                                $ <span> sudo blackman -a</span>
								<p># To list blackarch categories</p>
                                $ <span> blackman -l</span>
                                <p># To list category tools</p>
                                $ <span> blackman -p &lt;category&gt;</span>
                            </div>
                            <p>The complete tool list of the BlackArch Linux repository can be found <a href="tools.html" target="_blank">here</a>.</p>
                        </li>
                    </ul>
                </div>
                <div class="panel panel-default text-left">
                    <div id=install-iso class="panel-heading">
                        <b>Installing from ISO</b>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">
                            You can install BlackArch Linux (packages AND environment) using the Live or Netinstall medium.
                            <div class="code-block">
                                <p># Install blackarch-install-scripts package</p>
                                $ <span>sudo pacman -S blackarch-install-scripts</span>
                                <p># Now, you can run and follow the instructions</p>
                                $ <span>sudo blackarch-install</span>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="panel panel-default text-left">
                    <div id=blackarch-arm class="panel-heading">
                        <b>ARM</b>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <p>
                                BlackArch is compatible with Arch Linux ARM. It effectively supports all of the ARMv6 and ARMv7 platforms listed
                                <a href="http://archlinuxarm.org/platforms" target="_blank">here</a>.
                            </p>
                            <p>
                                In order to install BlackArch on an ARM platform, follow the install instructions for your device on
                                <a href="http://archlinuxarm.org/" target="_blank">archlinuxarm.org</a> and install BlackArch
                                <a href="#install-repo">as an unofficial user repository</a>.
                                Soon we will release adaptations of the Arch Linux ARM images with BlackArch packages pre-installed.
                            </p>
                        </li>
                    </ul>
                </div>
                <div class="panel panel-default text-left">
                    <div id=mirror-list class="panel-heading">
                        <b>Official BlackArch Linux Mirror Sites</b>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item" itemscope itemtype="https://schema.org/Thing">
                            <img src="/images/flags/au.png" alt="Australia" /> Australia<br>
                            <a href="http://blackarch.mirror.digitalpacific.com.au/" target="_blank" itemprop="url">http://blackarch.mirror.digitalpacific.com.au/</a><br>
                            <a href="rsync://mirror.digitalpacific.com.au/blackarch/" target="_blank" itemprop="url">rsync://mirror.digitalpacific.com.au/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/at.png" alt="Austria" /> Austria<br>
                            <a href="http://mirror.easyname.at/blackarch/" target="_blank" itemprop="url">http://mirror.easyname.at/blackarch/</a><br>
                            <a href="ftp://mirror.easyname.at/blackarch/" target="_blank" itemprop="url">ftp://mirror.easyname.at/blackarch/</a><br>
                            <a href="rsync://mirror.easyname.at/blackarch/" target="_blank" itemprop="url">rsync://mirror.easyname.at/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/be.png" alt="Belgium" /> Belgium<br>
                            <a href="http://mirror.alexiobash.com/blackarch/" target="_blank" itemprop="url">http://mirror.alexiobash.com/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/ca.png" alt="Canada" /> Canada<br>
                            <a href="http://www.blackarch.org/blackarch/" target="_blank" itemprop="url">http://www.blackarch.org/blackarch/</a><br>
                            <a href="https://www.blackarch.org/blackarch/" target="_blank" itemprop="url">https://www.blackarch.org/blackarch/</a><br>
                            <a href="rsync://blackarch.org/blackarch/" target="_blank" itemprop="url">rsync://blackarch.org/blackarch/</a><br>
                            <a href="http://mirror.clibre.uqam.ca/blackarch/" target="_blank" itemprop="url">http://mirror.clibre.uqam.ca/blackarch/</a><br>
                            <a href="http://blackarch.dropswitch.net/blackarch/" target="_blank" itemprop="url">http://blackarch.dropswitch.net/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/cn.png" alt="China" /> China<br>
                            <a href="https://mirrors.ustc.edu.cn/blackarch/" target="_blank" itemprop="url">https://mirrors.ustc.edu.cn/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/dk.png" alt="Denmark" /> Denmark<br>
                            <a href="http://mirrors.dotsrc.org/blackarch/" target="_blank" itemprop="url">http://mirrors.dotsrc.org/blackarch/</a><br>
                            <a href="ftp://mirrors.dotsrc.org/blackarch/" target="_blank" itemprop="url">ftp://mirrors.dotsrc.org/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/ec.png" alt="Ecuador" /> Ecuador<br>
                            <a href="http://mirror.uta.edu.ec/blackarch/" target="_blank" itemprop="url">http://mirror.uta.edu.ec/blackarch/</a><br>
                            <a href="ftp://mirror.uta.edu.ec/blackarch/" target="_blank" itemprop="url">ftp://mirror.uta.edu.ec/blackarch/</a><br>
                            <a href="rsync://mirror.uta.edu.ec/blackarch/" target="_blank" itemprop="url">rsync://mirror.uta.edu.ec/blackarch/</a><br>
                            <a href="http://mirror.cedia.org.ec/blackarch/" target="_blank" itemprop="url">http://mirror.cedia.org.ec/blackarch/</a><br>
                            <a href="http://mirror.espoch.edu.ec/blackarch" target="_blank" itemprop="url">http://mirror.espoch.edu.ec/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/fr.png" alt="France" /> France<br>
                            <a href="http://blackarch.tamcore.eu/" target="_blank" itemprop="url">http://blackarch.tamcore.eu/</a><br>
                            <a href="https://blackarch.tamcore.eu/" target="_blank" itemprop="url">https://blackarch.tamcore.eu/</a><br>
                            <a href="rsync://blackarch.tamcore.eu/blackarch/" target="_blank" itemprop="url">rsync://blackarch.tamcore.eu/blackarch/</a><br>
                            <a href="http://blackarch.leneveu.fr/blackarch/" target="_blank" itemprop="url">http://blackarch.leneveu.fr/blackarch/</a><br>
                            <a href="http://blackarch.pi3rrot.net/blackarch/" target="_blank" itemprop="url">http://blackarch.pi3rrot.net/blackarch/</a><br>
                            <a href="https://mirror.adversec.com/blackarch/" target="_blank" itemprop="url">https://mirror.adversec.com/blackarch/</a><br>
                            <a href="http://blackarch.uteditor.de/" target="_blank" itemprop="url">http://blackarch.uteditor.de/</a>
                            <br><br>
                            <img src="/images/flags/de.png" alt="Germany" /> Germany<br>
                            <a href="http://ftp.halifax.rwth-aachen.de/blackarch/" target="_blank" itemprop="url">http://ftp.halifax.rwth-aachen.de/blackarch/</a><br>
                            <a href="ftp://ftp.halifax.rwth-aachen.de/blackarch/" target="_blank" itemprop="url">ftp://ftp.halifax.rwth-aachen.de/blackarch/</a><br>
                            <a href="rsync://ftp.halifax.rwth-aachen.de/blackarch/" target="_blank" itemprop="url">rsync://ftp.halifax.rwth-aachen.de/blackarch/</a><br>
                            <a href="http://blackarch1.curesec.com/blackarch/" target="_blank" itemprop="url">http://blackarch1.curesec.com/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/gr.png" alt="Greece" /> Greece<br>
                            <a href="http://ftp.cc.uoc.gr/mirrors/linux/blackarch/" target="_blank" itemprop="url">http://ftp.cc.uoc.gr/mirrors/linux/blackarch/</a><br>
                            <a href="ftp://ftp.cc.uoc.gr/mirrors/linux/blackarch/" target="_blank" itemprop="url">ftp://ftp.cc.uoc.gr/mirrors/linux/blackarch/</a><br>
                            <a href="rsync://blackarch@ftp.cc.uoc.gr/blackarch/" target="_blank" itemprop="url">rsync://blackarch@cc.uoc.gr/blackarch </a>
                            <br><br>
                            <img src="/images/flags/gb.png" alt="Great Britain" /> Great Britain<br>
                            <a href="http://www.mirrorservice.org/sites/blackarch.org/blackarch/" target="_blank" itemprop="url">http://www.mirrorservice.org/sites/blackarch.org/blackarch/</a><br>
                            <a href="ftp://ftp.mirrorservice.org/sites/blackarch.org/blackarch/" target="_blank" itemprop="url">ftp://ftp.mirrorservice.org/sites/blackarch.org/blackarch/</a><br>
                            <a href="rsync://rsync.mirrorservice.org/blackarch.org/blackarch/" target="_blank" itemprop="url">rsync://rsync.mirrorservice.org/blackarch.org/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/ie.png" alt="Ireland" /> Ireland<br>
                            <a href="http://ftp.heanet.ie/mirrors/blackarch/" target="_blank" itemprop="url">http://ftp.heanet.ie/mirrors/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/it.png" alt="Italy" /> Italy<br>
                            <a href="http://blackarch.mirror.garr.it/mirrors/blackarch/" target="_blank" itemprop="url">http://blackarch.mirror.garr.it/mirrors/blackarch/</a><br>
                            <a href="rsync://blackarch.mirror.garr.it/blackarch/" target="_blank">rsync://blackarch.mirror.garr.it/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/jp.png" alt="Japan" /> Japan<br>
                            <a href="http://www.ftp.ne.jp/Linux/packages/blackarch/" target="_blank" itemprop="url">http://www.ftp.ne.jp/Linux/packages/blackarch/</a><br>
                            <a href="ftp://ftp.kddilabs.jp/Linux/packages/blackarch/" target="_blank" itemprop="url">ftp://ftp.kddilabs.jp/Linux/packages/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/nl.png" alt="Netherlands" /> Netherlands<br>
                            <a href="http://blackarch.wawa-mania.ec/" target="_blank" itemprop="url">http://blackarch.wawa-mania.ec/</a><br>
                            <a href="http://blackarch.pr0s3c.nl/blackarch/" target="_blank" itemprop="url">http://blackarch.pr0s3c.nl/blackarch/</a><br>
                            <a href="https://blackarch.pr0s3c.nl/blackarch/" target="_blank" itemprop="url">https://blackarch.pr0s3c.nl/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/pl.png" alt="Poland" /> Poland<br>
                            <a href="http://ftp.icm.edu.pl/pub/Linux/dist/blackarch/" target="_blank" itemprop="url">http://ftp.icm.edu.pl/pub/Linux/dist/blackarch/</a><br>
                            <a href="ftp://ftp.icm.edu.pl/pub/Linux/dist/blackarch/" target="_blank" itemprop="url">ftp://ftp.icm.edu.pl/pub/Linux/dist/blackarch/</a><br>
                            <a href="rsync://ftp.icm.edu.pl/pub/Linux/dist/blackarch/" target="_blank" itemprop="url">rsync://ftp.icm.edu.pl/pub/Linux/dist/blackarch/</a><br>
                            <a href="gopher://ftp.icm.edu.pl/1/pub/Linux/dist/blackarch/" target="_blank" itemprop="url">gopher://ftp.icm.edu.pl/1/pub/Linux/dist/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/ru.png" alt="Russia" /> Russia<br>
                            <a href="http://mirror.yandex.ru/mirrors/blackarch/" target="_blank" itemprop="url">http://mirror.yandex.ru/mirrors/blackarch/</a><br>
                            <a href="ftp://mirror.yandex.ru/mirrors/blackarch/" target="_blank" itemprop="url">ftp://mirror.yandex.ru/mirrors/blackarch/</a><br>
                            <a href="rsync://mirror.yandex.ru/mirrors/blackarch/" target="_blank" itemprop="url">rsync://mirror.yandex.ru/mirrors/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/sg.png" alt="Singapore" /> Singapore<br>
                            <a href="http://download.nus.edu.sg/mirror/blackarch/" target="_blank" itemprop="url">http://download.nus.edu.sg/mirror/blackarch/</a><br>
                            <a href="https://download.nus.edu.sg/mirror/blackarch/" target="_blank" itemprop="url">https://download.nus.edu.sg/mirror/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/se.png" alt="Sweden" /> Sweden<br>
                            <a href="http://mirror.zetup.net/blackarch/" target="_blank" itemprop="url">http://mirror.zetup.net/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/ch.png" alt="Switzerland" /> Switzerland<br>
                            <a href="http://mirror.easyname.ch/blackarch/" target="_blank" itemprop="url">http://mirror.easyname.ch/blackarch/</a><br>
                            <a href="ftp://mirror.easyname.ch/blackarch/" target="_blank" itemprop="url">ftp://mirror.easyname.ch/blackarch/</a><br>
                            <a href="rsync://mirror.easyname.ch/blackarch/" target="_blank" itemprop="url">rsync://mirror.easyname.ch/blackarch/</a><br>
                            <a href="https://mirror.tillo.ch/ftp/blackarch/" target="_blank" itemprop="url">https://mirror.tillo.ch/ftp/blackarch/</a><br>
                            <a href="http://mirror.tillo.ch/ftp/blackarch/" target="_blank" itemprop="url">http://mirror.tillo.ch/ftp/blackarch/</a><br>
                            <a href="ftpes://mirror.tillo.ch/blackarch/" target="_blank" itemprop="url">ftpes://mirror.tillo.ch/blackarch/</a><br>
                            <a href="ftp://mirror.tillo.ch/blackarch/" target="_blank" itemprop="url">ftp://mirror.tillo.ch/blackarch/</a><br>
                            <a href="rsync://mirror.tillo.ch/blackarch/" target="_blank" itemprop="url">rsync://mirror.tillo.ch/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/tr.png" alt="Turkey" /> Turkey<br>
                            <a href="http://ftp.linux.org.tr/blackarch/" target="_blank" itemprop="url">http://ftp.linux.org.tr/blackarch/</a><br>
                            <a href="ftp://ftp.linux.org.tr/blackarch/" target="_blank" itemprop="url">ftp://ftp.linux.org.tr/blackarch/</a><br>
                            <a href="rsync://rsync.linux.org.tr/blackarch/" target="_blank" itemprop="url">rsync://rsync.linux.org.tr/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/tw.png" alt="Taiwan" /> Taiwan<br>
                            <a href="http://blackarch.cs.nctu.edu.tw/" target="_blank">http://blackarch.cs.nctu.edu.tw/</a><br>
                            <a href="rsync://blackarch.cs.nctu.edu.tw/blackarch/" target="_blank" itemprop="url">rsync://blackarch.cs.nctu.edu.tw/blackarch/</a><br>
                            <a href="http://ftp.yzu.edu.tw/Linux/blackarch/" target="_blank" itemprop="url">http://ftp.yzu.edu.tw/Linux/blackarch/</a><br>
                            <a href="ftp://ftp.yzu.edu.tw/Linux/blackarch/" target="_blank" itemprop="url">ftp://ftp.yzu.edu.tw/Linux/blackarch/</a><br>
                            <a href="rsync://ftp.yzu.edu.tw/Linux/blackarch/" target="_blank" itemprop="url">rsync://ftp.yzu.edu.tw/Linux/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/ua.png" alt="Ukraine" /> Ukraine<br>
                            <a href="http://blackarch.wawa-mania.to/" target="_blank" itemprop="url">http://blackarch.wawa-mania.to/</a>
                            <br><br>
                            <img src="/images/flags/us.png" alt="USA" />USA<br>
                            <a href="http://distro.ibiblio.org/blackarch/" target="_blank" itemprop="url">http://distro.ibiblio.org/blackarch/</a><br>
                            <a href="ftp://distro.ibiblio.org/blackarch/" target="_blank" itemprop="url">ftp://distro.ibiblio.org/blackarch/</a><br>
                            <a href="http://mirror2.tscinc.co/blackarch" target="_blank" itemprop="url">http://mirror2.tscinc.co/blackarch/</a><br>
                            <a href="rsync://mirror2.tscinc.co/blackarch" target="_blank" itemprop="url">rsync://mirror2.tscinc.co/blackarch</a><br>
                            <a href="https://blackarch.cdndepo.com/" target="_blank" itemprop="url">https://blackarch.cdndepo.com/</a><br>
                            <a href="http://blackarch.cdndepo.com/" target="_blank" itemprop="url">http://blackarch.cdndepo.com/</a><br>
                            <a href="rsync://blackarch.cdndepo.com/" target="_blank" itemprop="url">rsync://blackarch.cdndepo.com/</a><br>
                            <a href="https://deadbeef.ninja/blackarch/" target="_blank" itemprop="url">https://deadbeef.ninja/blackarch/</a><br>
                            <a href="http://mirror.team-cymru.org/blackarch/" target="_blank" itemprop="url">http://mirror.team-cymru.org/blackarch/</a><br>
                            <a href="ftp://mirror.team-cymru.org/blackarch/" target="_blank" itemprop="url">ftp://mirror.team-cymru.org/blackarch/</a><br>
                            <a href="rsync://mirror.team-cymru.org/blackarch/" target="_blank" itemprop="url">rsync://mirror.team-cymru.org/blackarch/</a><br>
                            <a href="http://mirror.jmu.edu/blackarch/" target="_blank" itemprop="url">http://mirror.jmu.edu/blackarch/</a><br>
                            <a href="ftp://mirror.jmu.edu/blackarch/" target="_blank" itemprop="url">ftp://mirror.jmu.edu/blackarch/</a><br>
                            <a href="rsync://mirror.jmu.edu/blackarch/" target="_blank" itemprop="url">rsync://mirror.jmu.edu/blackarch/</a><br>
                            <a href="http://mirror.oss.maxcdn.com/blackarch/" target="_blank" itemprop="url">http://mirror.oss.maxcdn.com/blackarch/</a><br>
                            <a href="ftp://mirror.oss.maxcdn.com/blackarch/" target="_blank" itemprop="url">ftp://mirror.oss.maxcdn.com/blackarch/</a><br>
                            <a href="rsync://mirror.oss.maxcdn.com/mirrors/blackarch/" target="_blank" itemprop="url">rsync://mirror.oss.maxcdn.com/mirrors/blackarch/</a><br>
                            <a href="http://arch.localmsp.org/blackarch/" target="_blank" itemprop="url">http://arch.localmsp.org/blackarch/</a>
                            <br><br>
                            <img src="/images/flags/vn.png" alt="Vietnam" /> Vietnam<br>
                            <a href="http://f.archlinuxvn.org/blackarch/" target="_blank" itemprop="url">http://f.archlinuxvn.org/blackarch/</a>
                        </li>
                    </ul>
                </div>
           </div>
        </div>
        <!-- /.row -->
EOF

cat common/end
