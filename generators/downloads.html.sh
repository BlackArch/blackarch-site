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
                    <a href="#ova-download" class="list-group-item">OVA Images</a>
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
                            <table class=download>
                                <tr>
                                    <td><b>Image</b></td>
                                    <td><b>Version</b></td>
                                    <td><b>Torrent</b></td>
                                    <td><b>Size</b></td>
                                    <td><b>SHA1sum</b></td>
                                </tr>
                                <tr>
                                    <td><a href="http://ftp.halifax.rwth-aachen.de/blackarch/iso/blackarchlinux-live-2017.03.01-x86_64.iso" itemprop="fileFormat" type="application/x-iso9660-image">BlackArch Linux 64 bit Live ISO</a></td>
                                    <td itemprop="datePublished">2017.03.01</td>
                                    <td><a href="/blackarch/torrent/blackarchlinux-live-2017.03.01-x86_64.iso.torrent" itemprop="fileFormat" type="application/octet-stream">Torrent</a></td>
                                    <td>6.7 GB</td>
                                    <td>8428c1355585a43dfd2557e71839bcdeb8468a10</td>
                                </tr>
                                <tr>
                                    <td><a href="http://ftp.halifax.rwth-aachen.de/blackarch/iso/blackarchlinux-live-2017.03.01-i686.iso" itemprop="fileFormat" type="application/x-iso9660-image">BlackArch Linux 32 bit Live ISO</a></td>
                                    <td itemprop="datePublished">2017.03.01</td>
                                    <td><a href="/blackarch/torrent/blackarchlinux-live-2017.03.01-i686.iso.torrent" itemprop="fileFormat" type="application/octet-stream">Torrent</a></td>
                                    <td>6.2 GB</td>
                                    <td>bb8c475095bf027fd4e77c2e3a84ddacb5ecea5e</td>
                                </tr>
                                <tr>
                                    <td><a href="http://ftp.halifax.rwth-aachen.de/blackarch/iso/blackarchlinux-netinst-2017.03.01-x86_64.iso" itemprop="fileFormat" type="application/x-iso9660-image">BlackArch Linux 64 bit Netinstall ISO</a></td>
                                    <td itemprop="datePublished">2017.03.01</td>
                                    <td><a href="/blackarch/torrent/blackarchlinux-netinst-2017.03.01-x86_64.iso.torrent" itemprop="fileFormat" type="application/octet-stream">Torrent</a></td>
                                    <td>466 MB</td>
                                    <td>4826a0f271696a127b67e7fe7205cc960c9eef1b</td>
                                </tr>
                                <tr>
                                    <td><a href="http://ftp.halifax.rwth-aachen.de/blackarch/iso/blackarchlinux-netinst-2017.03.01-i686.iso" itemprop="fileFormat" type="application/x-iso9660-image">BlackArch Linux 32 bit Netinstall ISO</a></td>
                                    <td itemprop="datePublished">2017.03.01</td>
                                    <td><a href="/blackarch/torrent/blackarchlinux-netinst-2017.03.01-i686.iso.torrent" itemprop="fileFormat" type="application/octet-stream">Torrent</a></td>
                                    <td>392 MB</td>
                                    <td>cbd9ff1a2837e8920708c9741ab11a8334d2344b</td>
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
                    <div id=ova-download class="panel-heading">
                        <b>OVA Images</b>
                    </div>
                    <ul class="list-group" itemscope itemtype="https://schema.org/CreativeWork">
                        <li class="list-group-item">
                            <p itemprop="about">
                            The following list contains official BlackArch (x86_64) OVA images. You can run these images in Virtualbox, VMware and QEMU.
								<br><br>
							    If possible, please try to use a mirror near you to download the OVA images. You can find a <a href="#mirror-list">list of mirrors</a> below.
						    </p>
                            <hr />
                            <table class=download>
                                <tr>
                                    <td><b>Image</b></td>
                                    <td><b>Version</b></td>
                                    <td><b>Torrent</b></td>
                                    <td><b>Size</b></td>
                                    <td><b>SHA1sum</b></td>
                                </tr>
                                <tr>
                                    <td><a href="http://www.mirrorservice.org/sites/blackarch.org/blackarch/ova/blackarch-linux-2016.12.24-x86_64.ova" itemprop="fileFormat" type="application/x-iso9660-image">BlackArch Linux 64 bit OVA Image</a></td>
                                    <td itemprop="datePublished">2016.12.24</td>
                                    <td><a href="/blackarch/torrent/blackarch-linux-2016.12.24-x86_64.ova.torrent" itemprop="fileFormat" type="application/octet-stream">Torrent</a></td>
                                    <td>13 GB</td>
                                    <td>891bd7a8c47a23209491d8ca04eadb30db8f79f2</td>
                                </tr>
                            </table>
                            <hr />
                            <p>
                                <b>Default Login</b>
                                <br>
                                The default login for all OVA images is:
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
                            If you need to be guided step by step, please consult the <a href="blackarch-install.html" title="BlackArch install">blackarch install</a> tutorial.
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
                                BlackArch is compatible with Arch Linux ARM. It effectively supports all of the ARMv6, ARMv7 and Aarch64 platforms listed
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
EOF
cat | grep -v -e '^#' | awk -F"|" '{
        countries[$1]++;
        countrycode[$1] = $2;
        mirrors[$1][$3]["http"] = $4;
        mirrors[$1][$3]["ftp"] = $5;
        mirrors[$1][$3]["rsync"] = $6;
}
END {
        indent = "                            "
        n = asorti(countries, sorted);
        for( i=1; i<=n; i++) {
                print "<img src=\"/images/flags/" tolower(countrycode[sorted[i]])".png\" alt=\"" sorted[i] "\" /> " sorted[i] "<br>";
                for (mirror in mirrors[sorted[i]]) {
                        printf indent mirror " - ";
                        j = 1
                        for(type in mirrors[sorted[i]][mirror]) {
                                if(length(mirrors[sorted[i]][mirror][type]) > 0) {
                                        if(j > 1) {
                                                printf " | "
                                        }
                                        printf "<a href=\"" mirrors[sorted[i]][mirror][type] "\" target=\"_blank\" itemprop=\"url\">" toupper(type) "</a>";
                                        j++
                                }
                        }
                        print "<br>"

                }
                print indent "<br><br>"

        }
}' < data/mirrors
cat <<\EOF
                        </li>
                    </ul>
                </div>
           </div>
        </div>
        <!-- /.row -->
EOF

cat common/end
