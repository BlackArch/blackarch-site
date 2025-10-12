cat common/start-downloads

cat << EOF
   <div class="container result">
    <!-- Page Heading/Breadcrumbs -->
      <div class="row">
      <div class="col-lg-12">
         <div class="page-header page-header-title">
         <h1>Downloads</h1> <h2>BlackArch ISO</h2>
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
          <a href="#iso-download" class="list-group-item active list-group-item-ex">ISOs</a>
          <a href="#ova-download" class="list-group-item list-group-item-ex">OVA Images</a>
          <a href="#install-repo" class="list-group-item list-group-item-ex">Installing on top of ArchLinux</a>
          <a href="#install-iso" class="list-group-item list-group-item-ex">Installing from ISO</a>
          <a href="#blackarch-arm" class="list-group-item list-group-item-ex">ARM</a>
          <a href="#mirror-list" class="list-group-item list-group-item-ex">Mirrors</a>
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
            <b>ISOs</b>
          </div>
          <ul class="list-group" itemscope itemtype="https://schema.org/CreativeWork">
            <li class="list-group-item">
              <p itemprop="about">
                The following list contains official BlackArch full, slim and netinstall ISO images. You can burn these images to DVDs and flashdrives.
                <br><br>
                The full ISO contains a complete, functional BlackArch Linux system with <a href="https://github.com/BlackArch/blackarch-iso/blob/master/full-iso/packages.x86_64">all the available tools in the repo at build time</a>. The slim ISO contains a functional BlackArch Linux system with <a href="https://github.com/BlackArch/blackarch-iso/blob/master/slim-iso/packages.x86_64">a selected set of common/well-known tools and system utilities</a> for pentesting. The netinstall ISO is a lightweight image for bootstrapping machines with <a href="https://github.com/BlackArch/blackarch-iso/blob/master/netinstall-iso/packages.x86_64">a minimal set of packages</a>.
                <br><br>
                If possible, please try to use a mirror near you to download the ISOs. You can find a <a href="#mirror-list">list of mirrors</a> below.
                <br><br>
                <b>WARNING</b> Installing the full ISO is highly discouraged, you will probably encounter many errors and conflicts while trying to update or even installing it. This ISO primarily targets offline installation, proceed with it only if you have a good reason, know what you are doing and are willing to spend time troubleshooting.
                For most people, we recommend installing either the netinstall ISO to install only what you need or the slim ISO to start with a minimal set of common tools.
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
                  <td><a href="https://ftp.halifax.rwth-aachen.de/blackarch/iso/blackarch-linux-full-2023.04.01-x86_64.iso" itemprop="fileFormat" type="application/x-iso9660-image">BlackArch Linux 64 bit Full ISO</a></td>
                  <td itemprop="datePublished">2023.04.01</td>
                  <td><a href="/blackarch/torrent/blackarch-linux-full-2023.04.01-x86_64.iso.torrent" itemprop="fileFormat" type="application/octet-stream">Torrent</a></td>
                  <td>22 GB</td>
                  <td>${LIVE_CHECKSUM}</td>
                </tr>
                <tr>
                  <td><a href="https://ftp.halifax.rwth-aachen.de/blackarch/iso/blackarch-linux-slim-2023.05.01-x86_64.iso" itemprop="fileFormat" type="application/x-iso9660-image">BlackArch Linux 64 bit Slim ISO</a></td>
                  <td itemprop="datePublished">2023.05.01</td>
                  <td><a href="/blackarch/torrent/blackarch-linux-slim-2023.05.01-x86_64.iso.torrent" itemprop="fileFormat" type="application/octet-stream">Torrent</a></td>
                  <td>5.5 GB</td>
                  <td>${SLIM_CHECKSUM}</td>
                </tr>
                <tr>
                  <td><a href="https://ftp.halifax.rwth-aachen.de/blackarch/iso/blackarch-linux-netinst-2023.04.01-x86_64.iso" itemprop="fileFormat" type="application/x-iso9660-image">BlackArch Linux 64 bit Netinstall ISO</a></td>
                  <td itemprop="datePublished">2023.04.01</td>
                  <td><a href="/blackarch/torrent/blackarch-linux-netinst-2023.04.01-x86_64.iso.torrent" itemprop="fileFormat" type="application/octet-stream">Torrent</a></td>
                  <td>815 MB</td>
                  <td>${NET_CHECKSUM}</td>
                </tr>
              </table>
              <hr />
              <p>
                Do not use UNetBootIn to write ISO files to flashdrives. UNetBootIn modifies the bootloader configuration, which is bad.
                You can use this instead (where /dev/sdX is your flashdrive and file.iso is a BlackArch ISO):
              </p>
              <div class=code-block>
                <p># Example Image writing<br></p>
                <span class="command"> sudo dd bs=512M status=progress if=file.iso of=/dev/sdX </span>
              </div>
              <br>
              <p>
                <b>Default Login</b>
                <br>
                The default login for all ISOs and OVA is:
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
              The following list contains the official BlackArch OVA image. You can run this image in Virtualbox, VMware and QEMU.
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
                  <td><a href="https://ftp.halifax.rwth-aachen.de/blackarch/ova/blackarch-linux-2023.04.01.ova" itemprop="fileFormat" type="application/x-iso9660-image">BlackArch Linux 64 bit OVA Image</a></td>
                  <td itemprop="datePublished">2023.04.01</td>
                  <td><a href="/blackarch/torrent/blackarch-linux-2023.04.01.ova.torrent" itemprop="fileFormat" type="application/octet-stream">Torrent</a></td>
                  <td>29 GB</td>
                  <td>${OVA_CHECKSUM}</td>
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
                <span class="command">curl -O https://blackarch.org/strap.sh</span>
                <p># Verify the SHA1 sum</p>
                <span class="command">echo ${STRAP_CHECKSUM} | sha1sum -c</span>
                <p># Set execute bit</p>
                <span class="command">chmod +x strap.sh</span>
                <p># Run strap.sh</p>
                <span class="command">sudo ./strap.sh</span>
                <p># Enable multilib following https://wiki.archlinux.org/index.php/Official_repositories#Enabling_multilib and run:</p>
                <span class="command">sudo pacman -Syu</<span>
              </div>
              You may now install tools from the blackarch repository.
              <div class=code-block>
                <p># To list all of the available tools, run </p>
                <span class="command">sudo pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u</span>
                <p># To install a category of tools, run</p>
                <span class="command">sudo pacman -S blackarch-&lt;category&gt;</span>
                <p># To see the blackarch categories, run</p>
                <span class="command">sudo pacman -Sg | grep blackarch</span>
                <p># To search for a specific package, run</p>
                <span class="command">pacman -Ss &lt;package_name&gt;</span>
                <p># Note - it maybe be necessary to overwrite certain packages when installing blackarch tools. If<br>
                   # you experience "failed to commit transaction" errors, use the --needed and --overwrite switches<br>
                   # For example:</p>
                <span class="command">sudo pacman -Syyu --needed --overwrite='*' &lt;wanted-package&gt;</span>
              </div>
              <p>The complete tool list of the BlackArch Linux repository can be found <a href="tools.html" target="_blank">here</a>.</p>
            </li>
          </ul>
        </div>
        <div class="panel panel-default text-left">
          <div id=install-iso class="panel-heading">
            <b>Installing from Full ISO</b>
          </div>
          <ul class="list-group">
            <li class="list-group-item">
              You can install BlackArch Linux (packages AND environment) using the Full or Netinstall medium.
              <div class="code-block">
                <p># Run and follow the instructions</p>
                <span class="command">sudo blackarch-install</span>
              </div>
              If you need to be guided step by step, please consult the <a href="blackarch-install.html" title="BlackArch install">blackarch install</a> tutorial.
            </li>
          </ul>
        </div>
        <div class="panel panel-default text-left">
          <div id=install-iso class="panel-heading">
            <b>Installing from Slim ISO</b>
          </div>
          <ul class="list-group">
            <li class="list-group-item">
              You can install BlackArch Linux using the Slim medium which features GUI installer.
              Just double click on the Install BlackArch icon on the desktop.
              Follow the instructions on the GUI installer.
            </li>
          </ul>
          <li class="list-group-item">
            </li>
        </div>
        <div class="panel panel-default text-left">
          <div id=blackarch-arm class="panel-heading">
            <b>ARM</b>
          </div>
          <ul class="list-group">
            <li class="list-group-item">
              <p>
                BlackArch is compatible with Arch Linux ARM. It effectively supports all of the Aarch64 platforms listed
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
              <!--<img src="/images/flags/ww.png" alt="Worldwide" /> World Wide<br>
              <br><br>-->
              <img src="/images/flags/au.png" alt="Australia" /> Australia<br>
              <a href="http://blackarch.mirror.digitalpacific.com.au/" target="_blank" itemprop="url">http://blackarch.mirror.digitalpacific.com.au/</a><br>
              <a href="rsync://mirror.digitalpacific.com.au/blackarch/" target="_blank" itemprop="url">rsync://mirror.digitalpacific.com.au/blackarch/</a>
              <br><br>
              <img src="/images/flags/at.png" alt="Austria" /> Austria<br>
              <a href="http://mirror.easyname.at/blackarch/" target="_blank" itemprop="url">http://mirror.easyname.at/blackarch/</a><br>
              <a href="ftp://mirror.easyname.at/blackarch/" target="_blank" itemprop="url">ftp://mirror.easyname.at/blackarch/</a><br>
              <a href="rsync://mirror.easyname.at/blackarch/" target="_blank" itemprop="url">rsync://mirror.easyname.at/blackarch/</a>
              <br><br>
              <img src="/images/flags/ca.png" alt="Canada" /> Canada<br>
              <a href="http://mirror.0xem.ma/blackarch/" target="_blank" itemprop="url">http://mirror.0xem.ma/blackarch/</a><br>
              <a href="https://mirror.0xem.ma/blackarch/" target="_blank" itemprop="url">https://mirror.0xem.ma/blackarch/</a><br>
              <br><br>
              <img src="/images/flags/cn.png" alt="China" /> China<br>
              <a href="https://mirrors.hust.edu.cn/blackarch/" target="_blank" itemprop="url">https://mirrors.hust.edu.cn/blackarch/</a><br>
              <a href="https://mirrors.nju.edu.cn/blackarch/" target="_blank" itemprop="url">https://mirrors.nju.edu.cn/blackarch/</a><br>
              <a href="https://mirror.sjtu.edu.cn/blackarch/" target="_blank" itemprop="url">https://mirror.sjtu.edu.cn/blackarch/</a><br>
              <a href="https://mirrors.tuna.tsinghua.edu.cn/blackarch/" target="_blank" itemprop="url">https://mirrors.tuna.tsinghua.edu.cn/blackarch/</a><br>
              <a href="https://mirrors.ustc.edu.cn/blackarch/" target="_blank" itemprop="url">https://mirrors.ustc.edu.cn/blackarch/</a><br>
              <a href="https://mirrors.aliyun.com/blackarch/" target="_blank" itemprop="url">https://mirrors.aliyun.com/blackarch/</a><br>
              <a href="http://mirrors.aliyun.com/blackarch/" target="_blank" itemprop="url">http://mirrors.aliyun.com/blackarch/</a>
              <br><br>
              <img src="/images/flags/dk.png" alt="Denmark" /> Denmark<br>
              <a href="http://mirrors.dotsrc.org/blackarch/" target="_blank" itemprop="url">http://mirrors.dotsrc.org/blackarch/</a><br>
              <a href="ftp://mirrors.dotsrc.org/blackarch/" target="_blank" itemprop="url">ftp://mirrors.dotsrc.org/blackarch/</a>
              <br><br>
              <img src="/images/flags/ec.png" alt="Ecuador" /> Ecuador<br>
              <a href="http://mirror.cedia.org.ec/blackarch/" target="_blank" itemprop="url">http://mirror.cedia.org.ec/blackarch/</a>
              <br><br>
              <img src="/images/flags/fr.png" alt="France" /> France<br>
              <a href="http://blackarch.leneveu.fr/blackarch/" target="_blank" itemprop="url">http://blackarch.leneveu.fr/blackarch/</a><br>
              <a href="http://mirror.cyberbits.eu/blackarch/" target="_blank" itemprop="url">http://mirror.cyberbits.eu/blackarch/</a><br>
              <a href="https://mirror.cyberbits.eu/blackarch/" target="_blank" itemprop="url">https://mirror.cyberbits.eu/blackarch/</a><br>
              <a href="rsync://rsync.cyberbits.eu/blackarch/" target="_blank" itemprop="url">rsync://rsync.cyberbits.eu/blackarch/</a>
              <br><br>
              <img src="/images/flags/de.png" alt="Germany" /> Germany<br>
              <a href="https://www.blackarch.org/blackarch/blackarch/" target="_blank" itemprop="url">https://www.blackarch.org/blackarch/blackarch/</a><br>
              <a href="rsync://blackarch.org/blackarch/" target="_blank" itemprop="url">rsync://blackarch.org/blackarch/</a><br>
              <a href="http://ftp.halifax.rwth-aachen.de/blackarch/" target="_blank" itemprop="url">http://ftp.halifax.rwth-aachen.de/blackarch/</a><br>
              <a href="https://ftp.halifax.rwth-aachen.de/blackarch/" target="_blank" itemprop="url">https://ftp.halifax.rwth-aachen.de/blackarch/</a><br>
              <a href="ftp://ftp.halifax.rwth-aachen.de/blackarch/" target="_blank" itemprop="url">ftp://ftp.halifax.rwth-aachen.de/blackarch/</a><br>
              <a href="rsync://ftp.halifax.rwth-aachen.de/blackarch/" target="_blank" itemprop="url">rsync://ftp.halifax.rwth-aachen.de/blackarch/</a><br>
              <a href="http://blackarch.unixpeople.org/" target="_blank" itemprop="url">http://blackarch.unixpeople.org/</a><br>
              <a href="https://blackarch.unixpeople.org/" target="_blank" itemprop="url">https://blackarch.unixpeople.org/</a><br>
              <a href="rsync://blackarch.unixpeople.org/blackarch/" target="_blank" itemprop="url">rsync://blackarch.unixpeople.org/blackarch/</a>
              <br><br>
              <img src="/images/flags/gr.png" alt="Greece" /> Greece<br>
              <a href="http://ftp.cc.uoc.gr/mirrors/linux/blackarch/" target="_blank" itemprop="url">http://ftp.cc.uoc.gr/mirrors/linux/blackarch/</a><br>
              <a href="ftp://ftp.cc.uoc.gr/mirrors/linux/blackarch/" target="_blank" itemprop="url">ftp://ftp.cc.uoc.gr/mirrors/linux/blackarch/</a><br>
              <a href="rsync://blackarch@ftp.cc.uoc.gr/blackarch/" target="_blank" itemprop="url">rsync://blackarch@cc.uoc.gr/blackarch </a>
              <br><br>
              <img src="/images/flags/gb.png" alt="Great Britain" /> Great Britain<br>
              <a href="http://www.mirrorservice.org/sites/blackarch.org/blackarch/" target="_blank" itemprop="url">http://www.mirrorservice.org/sites/blackarch.org/blackarch/</a><br>
              <a href="rsync://rsync.mirrorservice.org/blackarch.org/blackarch/" target="_blank" itemprop="url">rsync://rsync.mirrorservice.org/blackarch.org/blackarch/</a><br>
              <a href="http://mirrors.gethosted.online/blackarch/blackarch/" target="_blank" itemprop="url">http://mirrors.gethosted.online/blackarch/blackarch/</a><br>
              <a href="https://mirrors.gethosted.online/blackarch/blackarch/" target="_blank" itemprop="url">https://mirrors.gethosted.online/blackarch/blackarch/</a>
              <br><br>
              <img src="/images/flags/hu.png" alt="Hungary" /> Hungary<br>
              <a href="http://quantum-mirror.hu/mirrors/pub/blackarch/" target="_blank" itemprop="url">http://quantum-mirror.hu/mirrors/pub/blackarch/</a><br>
              <a href="https://quantum-mirror.hu/mirrors/pub/blackarch/" target="_blank">https://quantum-mirror.hu/mirrors/pub/blackarch/</a><br>
              <a href="rsync://quantum-mirror.hu/blackarch" target="_blank">rsync://quantum-mirror.hu/blackarch</a>
              <br><br>
              <img src="/images/flags/in.png" alt="India" /> India<br>
              <a href="https://mirror.maa.albony.in/blackarch/" target="_blank">https://mirror.maa.albony.in/blackarch/</a>
              <br><br>
              <img src="/images/flags/it.png" alt="Italy" /> Italy<br>
              <a href="http://blackarch.mirror.garr.it/mirrors/blackarch/" target="_blank" itemprop="url">http://blackarch.mirror.garr.it/mirrors/blackarch/</a><br>
              <a href="rsync://blackarch.mirror.garr.it/blackarch/" target="_blank">rsync://blackarch.mirror.garr.it/blackarch/</a>
              <br><br>
              <img src="/images/flags/jp.png" alt="Japan" /> Japan<br>
              <a href="http://www.miraa.jp/blackarch/" target="_blank" itemprop="url">http://www.miraa.jp/blackarch/</a><br>
              <a href="https://www.miraa.jp/blackarch/" target="_blank" itemprop="url">https://www.miraa.jp/blackarch/</a><br>
              <a href="http://www.ftp.ne.jp/Linux/packages/blackarch/" target="_blank" itemprop="url">http://www.ftp.ne.jp/Linux/packages/blackarch/</a><br>
              <a href="http://ftp.kddilabs.jp/Linux/packages/blackarch/" target="_blank" itemprop="url">http://ftp.kddilabs.jp/Linux/packages/blackarch/</a><br>
              <a href="https://ftp.kddilabs.jp/Linux/packages/blackarch/" target="_blank" itemprop="url">https://ftp.kddilabs.jp/Linux/packages/blackarch/</a>
              <br><br>
              <img src="/images/flags/md.png" alt="Moldova" /> Moldova<br>
              <a href="http://md.mirrors.hacktegic.com/blackarch/" target="_blank" itemprop="url">http://md.mirrors.hacktegic.com/blackarch/</a><br>
              <a href="https://md.mirrors.hacktegic.com/blackarch/" target="_blank" itemprop="url">https://md.mirrors.hacktegic.com/blackarch/</a><br>
              <a href="rsync://md.mirrors.hacktegic.com/blackarch/" target="_blank" itemprop="url">rsync://md.mirrors.hacktegic.com/blackarch/</a>
              <br><br>
              <img src="/images/flags/nl.png" alt="Netherlands" /> Netherlands<br>
              <a href="http://mirror.serverion.com/blackarch/" target="_blank" itemprop="url">http://mirror.serverion.com/blackarch/</a><br>
              <a href="https://mirror.serverion.com/blackarch/" target="_blank" itemprop="url">https://mirror.serverion.com/blackarch/</a><br>
              <a href="ftp://mirror.serverion.com/blackarch/" target="_blank" itemprop="url">ftp://mirror.serverion.com/blackarch/</a><br>
              <a href="rsync://mirror.serverion.com/opnsense" target="_blank" itemprop="url">rsync://mirror.serverion.com/opnsense</a>
              <br><br>
              <img src="/images/flags/pl.png" alt="Poland" /> Poland<br>
              <a href="http://ftp.icm.edu.pl/pub/Linux/dist/blackarch/" target="_blank" itemprop="url">http://ftp.icm.edu.pl/pub/Linux/dist/blackarch/</a><br>
              <a href="ftp://ftp.icm.edu.pl/pub/Linux/dist/blackarch/" target="_blank" itemprop="url">ftp://ftp.icm.edu.pl/pub/Linux/dist/blackarch/</a><br>
              <a href="rsync://ftp.icm.edu.pl/pub/Linux/dist/blackarch/" target="_blank" itemprop="url">rsync://ftp.icm.edu.pl/pub/Linux/dist/blackarch/</a><br>
              <a href="gopher://ftp.icm.edu.pl/1/pub/Linux/dist/blackarch/" target="_blank" itemprop="url">gopher://ftp.icm.edu.pl/1/pub/Linux/dist/blackarch/</a>
              <br><br>
              <img src="/images/flags/pt.png" alt="Portugal" /> Portugal<br>
              <br><br>
              <img src="/images/flags/ro.png" alt="Romania" /> Romania<br>
              <a href="http://mirrors.hostico.ro/blackarch/" target="_blank" itemprop="url">http://mirrors.hostico.ro/blackarch/</a><br>
              <a href="https://mirrors.hostico.ro/blackarch/" target="_blank" itemprop="url">https://mirrors.hostico.ro/blackarch/</a>
              <br><br>
              <img src="/images/flags/ru.png" alt="Russia" /> Russia<br>
              <a href="https://repository.su/blackarch/" target="_blank" itemprop="url">https://repository.su/blackarch/</a><br>
              <a href="rsync://repository.su/blackarch/" target="_blank" itemprop="url">rsync://repository.su/blackarch/</a><br>
              <a href="https://mirror.yandex.ru/mirrors/blackarch/" target="_blank" itemprop="url">http://mirror.yandex.ru/mirrors/blackarch/</a><br>
              <a href="ftp://mirror.yandex.ru/mirrors/blackarch/" target="_blank" itemprop="url">ftp://mirror.yandex.ru/mirrors/blackarch/</a><br>
              <a href="rsync://mirror.yandex.ru/mirrors/blackarch/" target="_blank" itemprop="url">rsync://mirror.yandex.ru/mirrors/blackarch/</a>
              <br><br>
              <img src="/images/flags/sg.png" alt="Singapore" /> Singapore<br>
              <a href="http://download.nus.edu.sg/mirror/blackarch/" target="_blank" itemprop="url">http://download.nus.edu.sg/mirror/blackarch/</a><br>
              <a href="https://download.nus.edu.sg/mirror/blackarch/" target="_blank" itemprop="url">https://download.nus.edu.sg/mirror/blackarch/</a>
              <br><br>
              <img src="/images/flags/kr.png" alt="South Korea" /> South Korea<br>
              <a href="https://mirror.krfoss.org/blackarch/" target="_blank" itemprop="url">https://deny.krfoss.org/blackarch/</a>
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
              <a href="http://mirror.archlinux.tw/BlackArch/" target="_blank">http://mirror.archlinux.tw/BlackArch/</a><br>
              <a href="https://mirror.archlinux.tw/BlackArch/" target="_blank">https://mirror.archlinux.tw/BlackArch/</a><br>
              <a href="http://blackarch.cs.nycu.edu.tw/" target="_blank">http://blackarch.cs.nycu.edu.tw/</a><br>
              <a href="https://blackarch.cs.nycu.edu.tw/" target="_blank">https://blackarch.cs.nycu.edu.tw/</a><br>
              <a href="rsync://blackarch.cs.nycu.edu.tw/blackarch/" target="_blank" itemprop="url">rsync://blackarch.cs.nycu.edu.tw/blackarch/</a>
              <br><br>
              <img src="/images/flags/us.png" alt="United States" />United States<br>
              <a href="https://us.mirrors.fossho.st/blackarch/" target="_blank" itemprop="url">https://us.mirrors.fossho.st/blackarch/</a><br>
              <a href="http://distro.ibiblio.org/blackarch/" target="_blank" itemprop="url">http://distro.ibiblio.org/blackarch/</a><br>
              <a href="ftp://distro.ibiblio.org/blackarch/" target="_blank" itemprop="url">ftp://distro.ibiblio.org/blackarch/</a><br>
              <a href="https://mirror.team-cymru.com/blackarch/" target="_blank" itemprop="url">https://mirror.team-cymru.com/blackarch/</a><br>
              <a href="ftp://mirror.team-cymru.com/blackarch/" target="_blank" itemprop="url">ftp://mirror.team-cymru.com/blackarch/</a><br>
              <a href="rsync://mirror.team-cymru.com/blackarch/" target="_blank" itemprop="url">rsync://mirror.team-cymru.com/blackarch/</a><br>
              <a href="https://ftp2.osuosl.org/pub/blackarch/" target="_blank" itemprop="url">https://ftp2.osuosl.org/pub/blackarch/</a><br>
              <a href="http://ftp2.osuosl.org/pub/blackarch/" target="_blank" itemprop="url">https://ftp2.osuosl.org/pub/blackarch/</a>
              <br><br>
              <img src="/images/flags/vn.png" alt="United States" />Vietnam<br>
              <a href="http://mirror.meowsmp.net/blackarch/" target="_blank" itemprop="url">http://mirror.meowsmp.net/blackarch/</a><br>
              <a href="https://mirror.meowsmp.net/blackarch/" target="_blank" itemprop="url">https://mirror.meowsmp.net/blackarch/</a><br>
            </li>
          </ul>
        </div>
       </div>
    </div>
    <!-- /.row -->
EOF

cat common/end
