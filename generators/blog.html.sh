cat common/start-blog

cat <<\EOF
  <!-- Page Content -->
  <div class="container result">
     <!-- Page Heading/Breadcrumbs -->
    <div class="row">
      <div class="col-lg-12">
         <div class="page-header page-header-title">
        <h1>Blog</h1> <h2>News of BlackArch</h2>
        </div>
        <ol class="breadcrumb">
          <li>
            <a class=home href="index.html">Home</a>
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
          <ul class="list-group nblog">
            <li class="list-group-item">
            <article id=p102 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Sun, 01 Sep 2019 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs and OVA Image released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released the new BlackArch Linux ISOs and OVA image.
                These are really special releases as many improvements and QA went through all packages and tools Blackarch Linux offers!
                For details see the ChangeLog below.
              </p>
              <p>Here's the ChangeLog:</p>
                <ul>
                  <li>added more than 150 new tools</li>
                  <li>added terminus font for all WMs (thanks to psf for i3-wm bugfixes)</li>
                  <li>included linux kernel 5.2.9</li>
                  <li>new ~/.vim and ~/.vimrc (thanks to noptrix offering his config files)</li>
                  <li>updated blackarch-installer to v1.1.19</li>
                  <li>various improvements and bugfixes</li>
                  <li>removed dwm window manager</li>
                  <li>replaced the default terminal xterm with rxvt-unicode</li>
                  <li>updated look&feel: new BlackArch theme for WMs, grub, syslinux, etc. (special thanks to Erik!)</li>
                  <li>QA'ed and fixed all packages (runtime exec).</li>
                  <li>updated all blackarch tools and packages including config files</li>
                  <li>updated all system packages</li>
                  <li>updated all window manager menus (awesome, fluxbox, openbox)</li>
                </ul>
              </p>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div>
            </article>

            <article id=p101 itemscope itemtype="http://schema.org/NewsArticle"><header>
              <time itemprop="datePublished">Wed, 24 Jul 2019 00:00:00 GMT</time>
              <h4 itemprop="name">New mirror added in China!</h4></header>
              <div itemprop="description">
                We would like to thank <a href="https://mirrors.tuna.tsinghua.edu.cn/" target="_blank">Tsinghua University</a> for becoming a BlackArch Linux mirror.
                <br /><br />
                They are offering the following access: <a href="https://mirrors.tuna.tsinghua.edu.cn/blackarch/" target="_blank">https</a>
              </div>
            </article>

            <article id=p100 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Mon, 01 Jun 2019 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs and OVA Image released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released the new BlackArch Linux ISOs and OVA image. For details see the ChangeLog below.
              </p>
              <p>Here's the ChangeLog:</p>
                <ul>
                  <li>added more than 150 new tools</li>
                  <li>added 'jedi-vim' plugin</li>
                  <li>updated vim plugins</li>
                  <li>included linux kernel 5.1.4</li>
                  <li>ISO file clean-ups and tweaks</li>
                  <li>updated blackarch-installer to v1.1.1</li>
                  <li>updated Xresources/Xdefaults + added support for rxvt-unicode</li>
                  <li>package QAs (runtime checks) were performed prior the ISO build</li>
                  <li>updated all blackarch tools and packages including config files</li>
                  <li>updated all system packages</li>
                  <li>updated all window manager menus (awesome, fluxbox, openbox)</li>
                </ul>
              </p>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div>
            </article>

            <article id=p99 itemscope itemtype="http://schema.org/NewsArticle"><header>
              <time itemprop="datePublished">Sat, 04 Dec 2018 00:00:00 GMT</time>
              <h4 itemprop="name">New mirror added in Hungary! </h4></header>
              <div itemprop="description">
                We would like to thank <a href="https://quantum-mirror.hu" target="_blank">quantum-mirror.hu </a> for becoming a BlackArch Linux mirror.
                <br /><br />
                They are offering the following access: <a href="http://quantum-mirror.hu/mirrors/pub/blackarch" target="_blank">http</a> |
                <a href="https://quantum-mirror.hu/mirrors/pub/blackarch" target="_blank">https</a> |
                <a href="rsync://quantum-mirror.hu/blackarch" target="_blank">rsync</a>
              </div>
            </article>

            <article id=p98 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Mon, 01 Dec 2018 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs and OVA Image released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released the new BlackArch Linux ISOs and OVA image. For details see the ChangeLog below.
              </p>
              <p>Here's the ChangeLog:</p>
                <ul>
                  <li>added more than 150 new tools</li>
                  <li>enabled wicd service by default</li>
                  <li>removed dwm window manager</li>
                  <li>removed wmii window manager</li>
                  <li>added bactl package (script to config and setup BlackArch environment)</li>
                  <li>included every tool of BlackArch except: cuda-/oclhashcat, vmcloak, theZoo</li>
                  <li>included linux kernel 4.19.4</li>
                  <li>included wordlistctl (https://github.com/BlackArch/wordlistctl))</li>
                  <li>updated blackarch-installer to v1.0.3</li>
                  <li>updated default ISO files (synced with archiso's template)</li>
                  <li>package QAs (runtime checks) were performed prior the ISO build</li>
                  <li>updated all blackarch tools and packages including config files</li>
                  <li>updated all system packages</li>
                  <li>updated all window manager menus (awesome, fluxbox, openbox)</li>
                </ul>
              </p>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div>
            </article>

            <article id=p97 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Mon, 01 Aug 2018 00:00:00 GMT</time>
              <h4 itemprop="name">New OVA Image released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released the new BlackArch Linux OVA image. This is a bugfix release! For details see the ChangeLog below.
              </p>
              <p>Here's the ChangeLog:</p>
                <ul>
                  <li>fix for ruby tools (rubygems was missing)</li>
                  <li>fix for VMware import and usage</li>
                  <li>include Linux kernel 4.17.11</li>
                  <li>updated all blackarch tools and packages including config files</li>
                  <li>updated all system packages</li>
                </ul>
              </p>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div>
            </article>

            <article id=p96 itemscope itemtype="http://schema.org/NewsArticle"><header>
              <time itemprop="datePublished">Sat, 21 Jul 2018 00:00:00 GMT</time>
              <h4 itemprop="name">New mirror added in Russia! </h4></header>
              <div itemprop="description">
                We would like to thank <a href="http://mirror.truenetwork.ru/" target="_blank">truenetwork.ru </a> for becoming a BlackArch Linux mirror.
                <br /><br />
                They are offering the following access: <a href="http://mirror.truenetwork.ru/blackarch/" target="_blank">http</a> |
                <a href="ftp://mirror.truenetwork.ru/blackarch/" target="_blank">ftp</a> |
                <a href="rsync://mirror.truenetwork.ru/blackarch/" target="_blank">rsync</a>
              </div>
            </article>

            <article id=p95 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Mon, 01 Jun 2018 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs and OVA Image released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released the new BlackArch Linux ISOs and OVA image. This is a high quality release! For details see the ChangeLog below.
              </p>
              <p>Here's the ChangeLog:</p>
                <ul>
                  <li>added more than 60 new tools</li>
                  <li>added config files for i3-wm (BlackArch compatible))</li>
                  <li>network stack tunings (sysctl + tuning.sh)</li>
                  <li>added system/pacman clean-up script (consistency++)</li>
                  <li>switched to terminus font (console, LXDM, WMs, x-terminals, ...)</li>
                  <li>replaced second browser midori with chromium</li>
                  <li>really, a lot of clean-ups and many tweaks!</li>
                  <li>renamed ISO filename</li>
                  <li>fixed awesome-wm quit/exit issue</li>
                  <li>fixed system group and user failures</li>
                  <li>fixed kernel module load failures</li>
                  <li>update blackarch installer to version 0.7 (bugfix + many improvements)</li>
                  <li>included linux kernel 4.16.12</li>
                  <li>updated all blackarch tools and packages including config files</li>
                  <li>updated all system packages</li>
                  <li>updated all window manager menus (awesome, fluxbox, openbox)</li>
                  <li>re-add multilib</li>
                </ul>
              </p>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div>
            </article>

            <article id=p94 itemscope itemtype="http://schema.org/NewsArticle"><header>
              <time itemprop="datePublished">Tue, 24 Jan 2018 00:00:00 GMT</time>
              <h4 itemprop="name">New mirror added in Netherlands! </h4></header>
              <div itemprop="description">
                We would like to thank <a href="http://mirror.neostrada.nl/blackarch/" target="_blank">neostrada.nl </a> for becoming a BlackArch Linux mirror.
                <br />
                They are offering the following access: <a href="https://mirror.neostrada.nl/blackarch/" target="_blank">https</a> |
                <a href="http://mirror.neostrada.nl/blackarch/" target="_blank">http</a> | <a href="ftp://mirror.neostrada.nl/blackarch/" target="_blank">ftp</a> |
                <a href="rsync://mirror.neostrada.nl/blackarch/" target="_blank">rsync</a>
              </div>
            </article>

            <article id=p93 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Mon, 11 Dec 2017 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released new BlackArch Linux ISOs. For details see the ChangeLog below.
              </p>
              <p>Here's the ChangeLog:</p>
                <ul>
                  <li>update blackarch-installer to version 0.6.2 (most important change)</li>
                  <li>included kernel 4.14.4</li>
                  <li>updated lot's of blackarch tools and packages</li>
                  <li>updated all blackarch tools and packages</li>
                  <li>updated all system packages</li>
                  <li>bugfix release! (see blackarch-installer)</li>
                </ul>
              </p>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div>
            </article>

            <article id=p92 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Wed, 24 Nov 2017 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released new BlackArch Linux ISOs. For details see the ChangeLog below.
              </p>
              <p>Here's the ChangeLog:</p>
                <ul>
                  <li>added more than 50 new tools
                  <li>various clean-ups and tweaks</li>
                  <li>updated blackarch installer to version 0.6</li>
                  <li>included kernel 4.13.12</li>
                  <li>updated all blackarch tools and packages</li>
                  <li>updated all system packages</li>
                  <li>update all window manager menus (awesome, fluxbox, openbox)</li>
                </ul>
              </p>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div>
            </article>

            <article id=p91 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Wed, 18 Nov 2017 00:00:00 GMT</time>
              <h4 itemprop="name">The end of i686 support!</h4>
            </header>
            <div itemprop="description">
              <p>
                Following 9 months of deprecation period, support for the i686 architecture effectively ends today.
                By the end of November, i686 packages will be removed from our mirrors and later from the packages archive.
              </p>
              <p
                We are also removing the i686 ISOs. So better switch off to the x86_64 one. ;-)
              </p>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div>
            </article>

            <article id=p90 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Wed, 30 Aug 2017 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released new BlackArch Linux ISOs. For details see the ChangeLog below.
              </p>
              <p>Here's the ChangeLog:</p>
                <ul>
                  <li>added more than 50 new tools</li>
                  <li>bugfix: strap.sh (removed 'http:' for pgp keyserver)</li>
                  <li>updated blackarch installer to version 0.5.2 (update: sha1 sum of strap.sh)</li>
                  <li>include kernel 4.12.8</li>
                  <li>updated a lot of blackarch tools</li>
                  <li>updated all system packages</li>
                  <li>update all window manager menus (awesome, fluxbox, openbox)</li>
                </ul>
              </p>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div>
            </article>

            <article id=p89 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Fri, 16 Jun 2017 00:00:00 GMT</time>
              <h4 itemprop="name">New BlackArch Linux OVA Image released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released a new version of the official BlackArch Linux OVA Image. Ready to use for VirtualBox, VMware and Qemu!
              </p>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div></article>

            <article id=p88 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Wed, 14 Jun 2017 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released new BlackArch Linux ISOs (bugfix!). For details see the ChangeLog below.
              </p>
              <p>Here's the ChangeLog:</p>
                <ul>
                  <li>bugfix release: perl libraries rebuilt due to perl upgrade</li>
                  <li>include kernel 4.11.4</li>
                </ul>
              </p>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div>
            </article>

            <article id=p87 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Wed, 14 Jun 2017 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released new BlackArch Linux ISOs. For details see the ChangeLog below.
              </p>
              <p>Here's the ChangeLog:</p>
                <ul>
                  <li>add more than 100 new tools</li>
                  <li>update blackarch installer to version 0.5.1 (bugfixes + features)</li>
                  <li>fix several tools (dependencies, installs)</li>
                  <li>include kernel 4.11.3</li>
                  <li>updated all blackarch tools</li>
                  <li>updated all system packages</li>
                  <li>update all window manager menus (awesome, fluxbox, openbox)</li>
                </ul>
              </p>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div>
            </article>

            <article id=p86 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Wed, 01 Mar 2017 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released new BlackArch Linux ISOs. For details see the ChangeLog below.
              </p>
              <p>Here's the ChangeLog:</p>
                <ul>
                  <li>add more than 50 new tools</li>
                  <li>update blackarch installer to 0.3.3 (bugfixes)</li>
                  <li>fix several tools (dependencies, installs)</li>
                  <li>include kernel 4.9.11</li>
                  <li>updated all system packages</li>
                  <li>updated all blackarch tools</li>
                  <li>updated menu entries for windows managers (awesome, fluxbox, openbox)</li>
                </ul>
              </p>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div>
            </article>

            <article id=p85 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Wed, 22 Feb 2017 00:00:00 GMT</time>
              <h4 itemprop="name">Newest tools added!</h4>
            </header>
            <div itemprop="description">
              <p>
                Blackarch have now more than 1700 tools !
              </p>
              <p>
                In order to install all newest tools, please run: 'pacman -Syyu --needed --force blackarch`
              </p>
            </div>
            </article>

            <article id=p84 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Fri, 10 Feb 2017 00:00:00 GMT</time>
              <h4 itemprop="name">Server Migration, DNS Changes and HTTPS!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we migrated BlackArch Linux to a new server system, updated DNS changes and deactivated HTTP.
              </p>
              <p>
                If you used HTTP please make sure to update this to HTTPS!
              </p>
            </div>
            </article>

            <article id=p83 itemscope="" itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Sun, 05 Feb 2017 00:00:00 GMT</time>
                  <h4 itemprop="name">Newest tools added!</h4>
                </header>
                <div itemprop="description">
                  <p>
                  More than 20 new tools have been added to the repository. Some of them are listed here:
                  </p>
                  <p>
                  <ul>
                    <li><a href="https://github.com/r00t-3xp10it/backdoorppt" target="_blank">backdoorppt</a> - Transform your payload.exe into one fake word doc (.ppt).</li>
                    <li><a href="https://github.com/EgeBalci/HERCULES" target="_blank">hercules-payload</a> - A special payload generator that can bypass all antivirus software.</li>
                    <li><a href="https://github.com/4w4k3/Insanity-Framework" target="_blank">insanity</a> - enerate Payloads and Control Remote Machines.</li>
                    <li><a href="https://github.com/mauro-g/snuck" target="_blank">snuck</a> - Automatic XSS filter bypass.</li>
                    <li><a href="https://github.com/mzet-/linux-exploit-suggester" target="_blank">linux-exploit-suggester.sh</a> - Linux privilege escalation auditing tool.</li>
                    <li><a href="http://www.vicenteaguileradiaz.com/tools/" target="_blank">tinfoleak2</a> - Get detailed information about a Twitter user activity.</li>
                    <li><a href="https://github.com/Hackplayers/iptodomain" target="_blank">iptodomain</a> - This tool extract domains from IP address based in the information saved in virustotal.</li>
                  </ul>
                  </p>
                  <p>
                  In order to install all newest tools, please run: 'pacman -Syyu --needed --force blackarch`
                  </p>
                </div>
            </article>

            <article id=p82 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Sat, 28 Jan 2017 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released new BlackArch Linux ISOs. For details see the ChangeLog below.
              </p>
              <p>Here's the ChangeLog:</p>
                <ul>
                  <li>add 20 new tools</li>
                  <li>update blackarch installer to 0.3.2 (bugfixes)</li>
                  <li>fix shadow permissions (thx to ldionmarcil)</li>
                  <li>fix f*cking ruby tools (wpscan, metasploit, etc.)</li>
                  <li>include linux kernel 4.9.6</li>
                  <li>add vmware support (installer)</li>
                  <li>updated locale.gen list</li>
                  <li>updated all system packages</li>
                  <li>updated all blackarch tools</li>
                  <li>updated menu entries for windows managers (awesome, fluxbox, openbox)</li>
                </ul>
              </p>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div>
            </article>

            <article id=p81 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Sun, 15 Jan 2017 00:00:00 GMT</time>
              <h4 itemprop="name">BlackArch aarch64 repository released!</h4>
            </header>
            <div itemprop="description">
              <p>
                <p>We're happy to announce the release of aarch64 repository. All packages were build on a Raspberry Pi3 system.</p>
                <p> You can find the repository <a href="https://blackarch.org/blackarch/blackarch/os/aarch64/" target="_blank">here</a>.
              </p>
            </div>
            </article>

            <article id=p80 itemscope="" itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Sun, 15 Jan 2017 00:00:00 GMT</time>
                  <h4 itemprop="name">Newest tools added!</h4>
                </header>
                <div itemprop="description">
                  <p>
                  Following newest tools have been added:
                  </p>
                  <ul>
                    <li><a href="https://github.com/arxsys/dff" target="_blank">dff</a> - A Forensics Framework coming with command line and graphical interfaces.</li>
                    <li><a href="https://github.com/adaptivethreat/Empire" target="_blank">empire</a> - A PowerShell and Python post-exploitation agent.</li>
                    <li><a href="https://github.com/tylabs/quicksand_lite" target="_blank">quicksand-lite</a> - Command line tool for scanning streams within office documents plus xor db attack.</li>
                    <li><a href="https://github.com/NullHypothesis/exitmap" target="_blank">exitmap</a> - A fast and modular scanner for Tor exit relays.</li>
                    <li><a href="https://github.com/EgeBalci/Cminer/" target="_blank">cminer</a> - A tool for enumerating the code caves in PE files.</li>
                    <li><a href="https://codisec.com/veles/" target="_blank">veles</a> - New open source tool for binary data analysis.</li>
                    <li><a href="https://github.com/emptymonkey/revsh/" target="_blank">revsh</a> - A reverse shell with terminal support, data tunneling, and advanced pivoting capabilities.</li>
                    <li><a href="https://github.com/v1s1t0r1sh3r3/airgeddon" target="_blank">airgeddon</a> - Multi-use bash script for Linux systems to audit wireless networks.</li>
                    <li><a href="https://github.com/iagox86/poracle" target="_blank">poracle</a> - A tool for demonstrating padding oracle attacks.</li>
                    <li><a href="https://github.com/iagox86/hash_extender" target="_blank">hash-extender</a> - A hash length extension attack tool.</li>
                    <li><a href="https://github.com/daniel-araujo/proctal" target="_blank">proctal</a> - Provides a command line interface and a C library to manipulate the address space of a running program on Linux.</li>
                  </ul>
                </div>
            </article>

            <article id=p79 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Thu, 29 Dec 2016 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released new BlackArch Linux ISOs. For details see the ChangeLog below.
              </p>
              <p>Here's the ChangeLog:</p>
                <ul>
                  <li>include linux kernel 4.8.13</li>
                  <li>include new installer version 0.3.1</li>
                  <li>updated all blackarch tools</li>
                </ul>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div></article>

            <article id=p78 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Tue, 20 Dec 2016 00:00:00 GMT</time>
              <h4 itemprop="name">New BlackArch Linux OVA Image released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released the official BlackArch Linux OVA Image. Ready to use for VirtualBox/VMware!
              </p>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div></article>

            <article id=p77 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Tue, 20 Dec 2016 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released new BlackArch Linux ISOs. For details see the ChangeLog below.
              </p>
              <p>Here's the ChangeLog:</p>
                <ul>
                  <li>include linux kernel 4.8.13</li>
                  <li>fix lxdm shutdown/reboot issue</li>
                  <li>userland clean-ups</li>
                  <li>added more than 100 new tools</li>
                  <li>updated all blackarch tools</li>
                  <li>updated all system packages</li>
                  <li>updated menus for window managers (awesome, fluxbox, openbox)</li>
                </ul>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div></article>

            <article id=p76 itemscope="" itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Sat, 12 Nov 2016 00:00:00 GMT</time>
                  <h4 itemprop="name">Newest tools added!</h4>
                </header>
                <div itemprop="description">
                  <p>
                  Following newest tools have been added:
                  </p>
                  <ul>
                    <li><a href="https://github.com/screetsec/Dracnmap" target="_blank">dracnmap</a> - Tool to exploit the network and gathering information with nmap help.</li>
                    <li><a href="https://github.com/stanislav-web/OpenDoor" target="_blank">opendoor</a> - OWASP Directory Access scanner.</li>
                    <li><a href="https://github.com/khalilbijjou/WAFNinja" target="_blank">wafninja</a> - A tool which contains two functions to attack Web Application Firewalls.</li>
                    <li><a href="https://github.com/gabamnml/hoper" target="_blank">hoper</a> - Trace URL's jumps across the rel links to obtain the last URL.</li>
                    <li><a href="https://github.com/dorneanu/smalisca" target="_blank">smalisca</a> - Static Code Analysis for Smali files.</li>
                    <li><a href="https://github.com/ch0psticks/Smali-CFGs" target="_blank">smali-cfgs</a> - Smali Control Flow Graph's.</li>
                    <li><a href="https://github.com/yarox24/evtkit" target="_blank">evtkit</a> - Fix acquired .evt - Windows Event Log files (Forensics).</li>
                    <li><a href="https://github.com/williballenthin/LfLe" target="_blank">lfle</a> - Recover event log entries from an image by heurisitically looking for record structures.</li>
                    <li><a href="https://github.com/chrisallenlane/novahot" target="_blank">novahot</a> - A webshell framework for penetration testers.</li>
                  </ul>
                </div>
            </article>

            <article id=p75 itemscope itemtype="http://schema.org/NewsArticle"><header>
              <time itemprop="datePublished">Sat, 12 Nov 2016 00:00:00 GMT</time>
              <h4 itemprop="name">New mirror added in USA! </h4></header>
              <div itemprop="description">
                We would like to thank <a href="mirrors.tuxns.net" target="_blank">tuxns.net </a> for becoming a BlackArch Linux mirror.
                <br />
                They are offering the following access: <a href="https://mirrors.tuxns.net/blackarch" target="_blank">https</a> |
                <a href="http://mirrors.tuxns.net/blackarch/" target="_blank">http</a> | <a href="rsync://mirrors.tuxns.net/blackarch" target="_blank">rsync</a>
              </div>
            </article>

            <article id=p74 itemscope="" itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Sun, 06 Nov 2016 00:00:00 GMT</time>
                  <h4 itemprop="name">Newest tools added!</h4>
                </header>
                <div itemprop="description">
                  <p>
                  Following newest tools have been added:
                  </p>
                  <ul>
                    <li><a href="https://github.com/manwhoami/findmyiphone" target="_blank">findmyiphone</a> - Locates all devices associated with an iCloud account.</li>
                    <li><a href="https://github.com/Ekultek/whitewidow" target="_blank">whitewidow</a> - SQL Vulnerability Scanner.</li>
                    <li><a href="https://github.com/steverobbins/magescan" target="_blank">magescan</a> - Scan a Magento site for information.</li>
                    <li><a href="https://github.com/rednaga/APKiD" target="_blank">apkid</a> - Android Application Identifier for Packers, Protectors, Obfuscators and Oddities.</li>
                    <li><a href="https://github.com/maaaaz/androwarn" target="_blank">androwarn</a> - Yet another static code analyzer for malicious Android applications.</li>
                    <li><a href="https://github.com/moheshmohan/pyssltes" target="_blank">pyssltest</a> - A python multithreaded script to make use of Qualys ssllabs api to test SSL flaws.</li>
                    <li><a href="https://github.com/trailofbits/grr" target="_blank">grr</a> - High-throughput fuzzer and emulator of DECREE binaries.</li>
                    <li><a href="https://github.com/sensepost/ruler" target="_blank">ruler</a> - A tool to abuse Exchange services.</li>
                    <li><a href="https://github.com/x3omdax/PenBox" target="_blank">penbox</a> - A Penetration Testing Framework - The Tool With All The Tools.</li>
                    <li><a href="https://github.com/darkeyepy/blackbox" target="_blank">blackbox-scanner</a> - Dork scanner & bruteforcing & hash cracker tool with blackbox penetration testing framework.</li>
                  </ul>
                </div>
            </article>

            <article id=p73 itemscope="" itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Sat, 29 Oct 2016 00:00:00 GMT</time>
                  <h4 itemprop="name">Newest tools added!</h4>
                </header>
                <div itemprop="description">
                  <p>
                  Following newest tools have been added:
                  </p>
                  <ul>
                    <li><a href="https://github.com/anarcoder/google_explorer" target="_blank">google-explorer</a> - Google mass exploit robot - Make a google search, and parse the results for a especific exploit you define.</li>
                    <li><a href="https://github.com/vikwin/pcapfex" target="_blank">pcapfex</a> - Packet CAPture Forensic Evidence eXtractor.</li>
                    <li><a href="https://github.com/byt3smith/Forager" target="_blank">forager</a> - Multithreaded threat Intelligence gathering utilizing.</li>
                    <li><a href="https://github.com/yvesalexandre/bandicoot" target="_blank">bandicoot</a> - A toolbox to analyze mobile phone metadata.</li>
                    <li><a href="https://github.com/knownsec/Pocsuite" target="_blank">pocsuite</a> - An open-sourced remote vulnerability testing framework developed by the Knownsec Security Team.</li>
                    <li><a href="https://github.com/zscproject/OWASP-ZSC" target="_blank">owasp-zsc</a> - Shellcode/Obfuscate Code Generator.</li>
                    <li><a href="https://github.com/trycatchhcf/cloakify" target="_blank">cloakify</a> - Data Exfiltration In Plain Sight; Evade DLP/MLS Devices; Social Engineering of Analysts; Evade AV Detection.</li>
                    <li><a href="https://github.com/roissy/l0l" target="_blank">l0l</a> - The Exploit Development Kit.</li>
                    <li><a href="http://domnit.org/stepic/doc/" target="_blank">stepic</a> - A python image steganography tool.</li>
                    <li><a href="https://github.com/fgrimme/Matroschka" target="_blank">matroschka</a> - Python steganography tool to hide images or text in images.</li>
                    <li><a href="https://github.com/JonathanSalwan/Triton" target="_blank">triton</a> - A Dynamic Binary Analysis (DBA) framework.</li>
                    <li><a href="https://github.com/WestpointLtd/tls_prober" target="_blank">tls-prober</a> - A tool to fingerprint SSL/TLS servers.</li>
                    <li><a href="https://github.com/rastating/wordpress-exploit-framework" target="_blank">wordpress-exploit-framework</a> - A Ruby framework for developing and using modules which aid in the penetration testing of WordPress powered websites and systems.</li>
                    <li><a href="https://github.com/Miserlou/omnihash" target="_blank">omnihash</a> - Hash files, strings, input streams and network resources in various common algorithms simultaneously.</li>
                    <li><a href="https://github.com/programa-stic/barf-project" target="_blank">barf</a> - A multiplatform open source Binary Analysis and Reverse engineering Framework.</li>
                    <li><a href="https://github.com/bdcht/amoco" target="_blank">amoco</a> - Yet another tool for analysing binaries.</li>
                    <li><a href="https://github.com/whoot/Typo-Enumerator" target="_blank">typo-enumerator</a> - Enumerate Typo3 version and extensions.</li>
                    <li><a href="https://github.com/mschwager/gitem" target="_blank">gitem</a> - A Github organization reconnaissance tool.</li>
                    <li><a href="https://github.com/dripcap/dripcap" target="_blank">dripcap</a> - Caffeinated Packet Analyzer.</li>
                    <li><a href="https://github.com/SideChannelMarvels/Daredevil" target="_blank">daredevil</a> - A tool to perform (higher-order) correlation power analysis attacks (CPA).</li>
                    <li><a href="https://github.com/SideChannelMarvels/JeanGrey" target="_blank">jeangrey</a> - A tool to perform differential fault analysis attacks (DFA).</li>
                    <li><a href="https://github.com/danigargu/syms2elf" target="_blank">sysm2elf</a> - A plugin for Hex-Ray's IDA Pro and radare2 to export the symbols recognized to the ELF symbol table.</li>
                    <li><a href="https://github.com/quarkslab/arybo" target="_blank">arybo</a> - Manipulation, canonicalization and identification of mixed boolean-arithmetic symbolic expressions.</li>
                  </ul>
                </div>
            </article>

            <article id=p72 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Wed, 31 Aug 2016 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released new BlackArch Linux ISOs. This is just a Bugfix release and shrinks the ISO size for DVD-R. For more details see the ChangeLog below.
              </p>
              <p>Here's the ChangeLog :</p>
                <ul>
                  <li>Bugfix: blackarch-installer</li>
                  <li>shrink ISO size (DVD-R support)</li>
                  <li>updated all blackarch tools</li>
                  <li>updated all system packages</li>
                </ul>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div></article>

            <article id=p71 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Tue, 30 Aug 2016 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released new BlackArch Linux ISOs. This is just a Bugfix release. For more details see the ChangeLog below.
              </p>
              <p>Here's the ChangeLog :</p>
                <ul>
                  <li>Bugfix: strap.sh</li>
                  <li>include linux kernel 4.7.2</li>
                  <li>updated BlackArch Linux installer</li>
                  <li>updated all blackarch tools</li>
                  <li>updated all system packages</li>
                </ul>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div></article>

            <article id=p70 itemscope itemtype="http://schema.org/NewsArticle"><header>
              <time itemprop="datePublished">Wed, 24 Aug 2016 00:00:00 GMT</time>
              <h4 itemprop="name">New mirror added in USA! </h4></header>
              <div itemprop="description">
                We would like to thank <a href="http://www.princeton.edu/main/" target="_blank">Princeton University </a> for becoming a BlackArch Linux mirror.
                <br />
                They are offering the following access: <a href="http://mirror.math.princeton.edu/pub/blackarch/" target="_blank">http</a> |
                <a href="rsync://mirror.math.princeton.edu/pub/blackarch/" target="_blank">rsync</a>
              </div>
            </article>

            <article id=p69 itemscope itemtype="http://schema.org/NewsArticle">
            <header>
              <time itemprop="datePublished">Fri, 19 Aug 2016 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs released!</h4>
            </header>
            <div itemprop="description">
              <p>
                Today we released new BlackArch Linux ISOs. The new ISOs include over 1500 tools. For more details see the ChangeLog below.
              </p>
              <p>Here's the ChangeLog :</p>
                <ul>
                  <li>include linux kernel 4.7.1</li>
                  <li>updated BlackArch Linux installer</li>
                  <li>added more than 100 new tools</li>
                  <li>updated all blackarch tools</li>
                  <li>updated all system packages</li>
                  <li>updated menu entries for window managers (awesome, fluxbox, openbox)</li>
                </ul>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
            </div></article>

            <article id=p68 itemscope="" itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Fri, 29 Jul 2016 00:00:00 GMT</time>
                  <h4 itemprop="name">Newest tools added!</h4>
                </header>
                <div itemprop="description">
                  <p>
                  Following newest tools have been added:
                  </p>
                  <ul>
                    <li><a href="https://github.com/lewangbtcc/anti-XSS" target="_blank">anti-xss</a> - A XSS vulnerability scanner.</li>
                    <li><a href="https://github.com/ewilded/shelling" target="_blank">shelling</a> - An offensive approach to the anatomy of improperly written OS command injection sanitisers.</li>
                    <li><a href="https://github.com/ShotokanZH/Pa-th-zuzu" target="_blank">pathzuzu</a> - Checks for PATH substitution vulnerabilities and logs the commands executed by the vulnerable executables.</li>
                    <li><a href="https://github.com/hugsy/gef" target="_blank">gef</a> - Multi-Architecture GDB Enhanced Features for Exploiters & Reverse-Engineers.</li>
                    <li><a href="http://www.caida.org/tools/measurement/scamper/" target="_blank">scamper</a> - A tool that actively probes the Internet in order to analyze topology and performance.</li>
                    <li><a href="https://github.com/Crapworks/wolpertinger" target="_blank">wolpertinger</a> - A distributed portscanner.</li>
                    <li><a href="https://github.com/l0gan/backHack" target="_blank">backhack</a> - Tool to perform Android app analysis by backing up and extracting apps, allowing you to analyze and modify file system contents for apps.</li>
                    <li><a href="https://github.com/MooseDojo/apt2" target="_blank">apt2</a> - Automated penetration toolkit.</li>
                    <li><a href="https://github.com/Markus-Go/bonesi" target="_blank">bonesi</a> - The DDoS Botnet Simulator.</li>
                  </ul>
                </div>
            </article>
            <article id=p67 itemscope="" itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Wed, 20 Jul 2016 00:00:00 GMT</time>
                  <h4 itemprop="name">Newest tools added!</h4>
                </header>
                <div itemprop="description">
                  <p>
                  Following newest tools have been added:
                  </p>
                  <ul>
                    <li><a href="https://github.com/misje/dhcpoptinj" target="_blank">dhcpoptinj</a> - DHCP option injector.</li>
                    <li><a href="https://github.com/huntergregal/scansploit" target="_blank">scansploit</a> - Exploit using barcodes, QRcodes, earn13, datamatrix.</li>
                    <li><a href="https://github.com/BishopFox/spfmap" target="_blank">spfmap</a> - A program to map out SPF and DKIM records for a large number of domains.</li>
                    <li><a href="https://github.com/BishopFox/firecat" target="_blank">firecat</a> - A penetration testing tool that allows you to punch reverse TCP tunnels out of a compromised network.</li>
                    <li><a href="https://github.com/bishopfox/spoofcheck" target="_blank">spoofcheck</a> - Simple script that checks a domain for email protections.</li>
                    <li><a href="https://github.com/lunarca/SimpleEmailSpoofer" target="_blank">SimpleEmailSpoofer</a> - A simple Python CLI to spoof emails.</li>
                    <li><a href="https://github.com/jsvine/waybackpack" target="_blank">waybackpack</a> - Download the entire Wayback Machine archive for a given URL.</li>
                    <li><a href="https://github.com/GDSSecurity/Windows-Exploit-Suggester" target="_blank">windows-exploit-suggester</a> - This tool compares a targets patch levels against the Microsoft vulnerability database in order to detect potential missing patches on the target.</li>
                    <li><a href="https://github.com/cysinfo/Exescan" target="_blank">exescan</a> - A tool to detect anomalies in PE (Portable Executable) files).</li>
                    <li><a href="https://github.com/MITRECND/abcd" target="_blank">abcd</a> - ActionScript ByteCode Disassembler.</li>
                  </ul>
                </div>
            </article>


            <article id=p66 itemscope="" itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Tue, 19 Jul 2016 00:00:00 GMT</time>
                  <h4 itemprop="name">Brazilian Translation added!</h4>
                </header>
                <div itemprop="description">
                  <p>
                  We have released the brazilian translation of the BlackArch Linux Guide.
                  </p>
                  <p>
                  Thanks a lot to <a href="https://twitter.com/teixeirazeus" target="_blank">teixeirazeus</a> for the translation.
                  </p>
                </div>
            </article>

            <article id=p65 itemscope="" itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Tue, 19 Jul 2016 00:00:00 GMT</time>
                  <h4 itemprop="name">Newest tools added!</h4>
                </header>
                <div itemprop="description">
                  <p>
                  Following newest tools have been added:
                  </p>
                  <ul>
                    <li><a href="https://github.com/philwantsfish/shard" target="_blank">shard</a> - A command line tool to detect shared passwords.</li>
                    <li><a href="https://github.com/mgeeky/tomcatWarDeployer" target="_blank">tomcatwardeployer</a> - Apache Tomcat auto WAR deployment & pwning penetration testing tool.</li>
                    <li><a href="https://github.com/epinna/Stegosip" target="_blank">stegosip</a> - TCP tunnel over RTP/SIP.</li>
                    <li><a href="https://github.com/olivo/BluPhish" target="_blank">bluphish</a> - Bluetooth device and service discovery tool that can be used for security assessment and penetration testing.</li>
                    <li><a href="https://github.com/st9140927/BOF_Detector" target="_blank">bof-detector</a> - A simple detector of BOF vulnerabilities by source-code-level check.</li>
                    <li><a href="https://github.com/chamli/CyberCrowl" target="_blank">cybercrowl</a> - A Python Web path scanner tool.</li>
                    <li><a href="https://github.com/xtiankisutsa/MARA_Framework" target="_blank">mara-framework</a> - A Mobile Application Reverse engineering and Analysis Framework.</li>
                    <li><a href="https://github.com/muhammad-bouabid/Vulnerabilities-spider" target="_blank">vulnerabilities-spider</a> - A tool to scan for web vulnerabilities.</li>
                    <li><a href="http://www.security-projects.com/?SigSpotter" target="_blank">sigspotter</a> - A tool that search in your HD to find wich publishers has been signed binaries in your PC..</li>
                    <li><a href="http://www.security-projects.com/?Brute12" target="_blank">brute12</a> - A tool designed for auditing the cryptography container security in PKCS12 format.</li>
                  </ul>
                </div>
            </article>

            <article id=p64 itemscope="" itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Tue, 12 Jul 2016 00:00:00 GMT</time>
                  <h4 itemprop="name">Newest tools added!</h4>
                </header>
                <div itemprop="description">
                  <p>
                  Following newest tools have been added:
                  </p>
                  <ul>
                    <li><a href="http://www.security-projects.com/?Anti_Ransom___Download" target="_blank">antiransom</a> - A tool capable of detect and stop attacks of Ransomware using honeypots.</li>
                    <li><a href="https://github.com/graniet/riwifshell" target="_blank">riwifshell</a> - Web backdoor - infector - explorer.</li>
                    <li><a href="https://github.com/conorpp/btproxy" target="_blank">btproxy-mitm</a> - Man in the Middle analysis tool for Bluetooth.</li>
                    <li><a href="https://github.com/Hello71/udpastcp" target="_blank">udpastcp</a> - This program hides UDP traffic as TCP traffic in order to bypass certain firewalls.</li>
                    <li><a href="https://github.com/Arvin-X/swarm" target="_blank">swarm</a> - A distributed penetration testing tool.</li>
                    <li><a href="https://github.com/m4n3dw0lf/PytheM" target="_blank">pythem</a> - Python penetration testing framework.</li>
                    <li><a href="https://github.com/z0noxz/smplshllctrlr" target="_blank">smplshllctrlr</a> - PHP Command Injection exploitation tool.</li>
                    <li><a href="https://github.com/epinna/tplmap" target="_blank">tplmap</a> - utomatic Server-Side Template Injection Detection and Exploitation Tool.</li>
                    <li><a href="https://github.com/lorenzog/NetworkMap" target="_blank">networkmap</a> - Post-exploitation network mapper.</li>
                  </ul>
                </div>
            </article>

            <article id=p63 itemscope="" itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Sat, 09 Jul 2016 00:00:00 GMT</time>
                  <h4 itemprop="name">BlackArch Linux Installation "Quick How to" added</h4>
                </header>
                <div itemprop="description">
                  <p>
                  We have released a simple BlackArch Linux Installation <a class=blinstall href="blackarch-install.html">tutorial</a> for beginners.
                  </p>
                  <p>
                  Please excuse for any typos and wrong wordings left. We will fix those soon. Also, it is planned to make more tutorials of this kind, using the the way: Easy and complete with the goal to create an online Documentation repository of the
                  Blackarch Linux project.
                  </p>
                </div>
            </article>

            <article id=p62 itemscope="" itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Mon, 04 Jul 2016 00:00:00 GMT</time>
                  <h4 itemprop="name">Newest tools added!</h4>
                </header>
                <div itemprop="description">
                  <p>
                  Following newest tools have been added:
                  </p>
                  <ul>
                  <li><a href="https://github.com/glv2/bruteforce-wallet" target="_blank">bruteforce-wallet</a> - Try to find the password of an encrypted Peercoin (or Bitcoin,Litecoin, etc...) wallet file.</li>
                    <li><a href="https://github.com/Caleb1994/peach" target="_blank">peach-fuzz</a> - Simple vulnerability scanning framewor.</li>
                    <li><a href="https://github.com/Danladi/HttpPwnly" target="_blank">httpwnly</a> - "Repeater" style XSS post-exploitation tool for mass browser control".</li>
                    <li><a href="https://github.com/faizann24/XssPy" target="_blank">xsspy</a> - Web Application XSS Scanner.</li>
                    <li><a href="https://github.com/ANSSI-FR/tabi" target="_blank">tabi</a> - BGP Hijack Detection.</li>
                    <li><a href="https://github.com/RubenRocha/ftpscout" target="_blank">ftpscout</a> - Scans ftps for anonymous access.</li>
                  </ul>
                </div>
            </article>

            <article id=p61 itemscope="" itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Mon, 20 Jun 2016 00:00:00 GMT</time>
                  <h4 itemprop="name">Website update</h4>
                </header>
                <div itemprop="description">
                  <p>
                  Following improvement and features have been added :
                  </p>
                  <ul>
                    <li>Align of the tools array element</li>
                    <li>Add color on the tools list and category list</li>
                    <li>Fixed some wrong text</li>
                    <li>Blackarch got now more than 1435 tools</li>
                  </ul>
                </div>
            </article>

            <article id=p60 itemscope="" itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Mon, 13 Jun 2016 00:00:00 GMT</time>
                  <h4 itemprop="name">Website update</h4>
                </header>
                <div itemprop="description">
                  <p>
                  Following improvement and features have been added :
                  </p>
                  <ul>
                    <li>Raise the font size of the tools list</li>
                    <li>Improved visual of the tools list</li>
                    <li>Tools can now be listed by category</li>
                    <li>Each category are sync in real time</li>
                  </ul>
                </div>
              </article>

              <article id=p59 itemscope="" itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Thu, 02 Jun 2016 00:00:00 GMT</time>
                  <h4 itemprop="name">Website update</h4>
                </header>
                <div itemprop="description">
                  <p>
                  Following improvement have been added :
                  </p>
                  <ul>
                    <li>On the tools section, the categorie for each tools are displayed</li>
                    <li>Improved listing tools array for small resolution size</li>
                  </ul>
                </div>
              </article>

              <article id=p58 itemscope="" itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Tue, 31 May 2016 00:00:00 GMT</time>
                  <h4 itemprop="name">Newest tools added!</h4>
                </header>
                <div itemprop="description">
                  <p>
                  Following newest tools have been added:
                  </p>
                  <ul>
                    <li><a href="https://github.com/eik00d/CANToolz" target="_blank">cantoolz</a> - Framework for black-box CAN network analysis.</li>
                    <li><a href="https://github.com/waytoalpit/ManOnTheSideAttack-DNS-Spoofing" target="_blank">motsa-dns-spoofing</a> - ManOnTheSideAttack-DNS Spoofing.</li>
                    <li><a href="https://github.com/takeshixx/webfixy" target="_blank">webfixy</a> - On-the-fly decryption proxy for MikroTik RouterOS WebFig sessions.</li>
                    <li><a href="https://github.com/hgascon/pulsar" target="_blank">pulsar</a> - Protocol Learning and Stateful Fuzzing.</li>
                    <li><a href="https://github.com/Betawolf/social-vuln-scanner" target="_blank">social-vuln-scanner</a> - Gathers public information on companies to highlight social engineering risk.</li>
                    <li><a href="https://github.com/Hadesy2k/sqlivulscan" target="_blank">sqlivulscan</a> - This will give you the SQLi Vulnerable Website Just by Adding the Dork.</li>
                    <li><a href="https://github.com/reverse-shell/routersploit" target="_blank">routersploit</a> - The Router Exploitation Framework.</li>
                    <li><a href="https://github.com/ST2Labs/SIPI" target="_blank">sipi</a> - Simple IP Information Tools for Reputation Data Analysis.</li>
                    <li><a href="https://github.com/Raikia/SMBCrunch" target="_blank">smbcrunch</a> - 3 tools that work together to simplify reconaissance of Windows File Shares.</li>
                  </ul>
                </div>
              </article>

              <article id=p57 itemscope itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Fri, 20 May 2016 00:00:00 GMT</time>
                  <h4 itemprop="name">Newest tools added!</h4>
                </header>
                <div itemprop="description">
                  <p>
                  Following newest tools have been added:
                  </p>
                  <ul>
                    <li><a href="https://github.com/sensepost/det" target="_blank">det</a> - (extensible) Data Exfiltration Toolkit.</li>
                    <li><a href="https://github.com/craigz28/firmwalker" target="_blank">firmwalker</a> - Script for searching the extracted firmware file system for goodies.</li>
                    <li><a href="https://github.com/s-rah/onionscan" target="_blank">onionscan</a> - Scan Onion Services for Security Issues.</li>
                    <li><a href="https://github.com/HSASec/ProFuzz" target="_blank">profuzz</a> - Simple PROFINET fuzzer based on Scapy.</li>
                    <li><a href="https://github.com/enddo/CJExploiter" target="_blank">cjexploiter</a> - Drag and Drop ClickJacking exploit development assistance tool.</li>
                    <li><a href="https://github.com/libeclipse/blind-sql-bitshifting" target="_blank">blind-sql-bitshifting</a> - A blind SQL injection module that uses bitshfting to calculate characters.</li>
                  </ul>
                </div>
              </article>

              <article id=p56 itemscope itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Sat, 07 May 2016 00:00:00 GMT</time>
                  <h4 itemprop="name">New mirror added in Ukraine !</h4>
                </header>
                <div itemprop="description">
                  We would like to thank <a href="https://forum.wawa-mania.ec/" target="_blank">
                  Dimitri of Wawa-Mania (dimitri@linux.com)</a> for becoming a BlackArch Linux mirror.
                  <br />
                  He offer the following access: <a href="http://blackarch.wawa-mania.to/" target="_blank">http</a>
                </div>
              </article>

              <article id=p55 itemscope itemtype="http://schema.org/NewsArticle">
                <header>
                  <time itemprop="datePublished">Thu, 05 May 2016 00:00:00 GMT</time>
                  <h4 itemprop="name">New mirror added in Netherland!</h4>
                </header>
                <div itemprop="description">
                We would like to thank <a href="https://forum.wawa-mania.ec/" target="_blank">Dimitri of Wawa-Mania (dimitri@linux.com)</a>
                for becoming a BlackArch Linux mirror.
                <br />
                They are offering the following access: <a href="http://blackarch.wawa-mania.ec/" target="_blank">http</a>
                </div>
              </article>

              <article id=p54 itemscope itemtype="http://schema.org/NewsArticle"><header>
              <time itemprop="datePublished">Thu, 05 May 2016 00:00:00 GMT</time>
              <h4 itemprop="name">New mirror added in USA! </h4></header>
              <div itemprop="description">
                We would like to thank <a href="http://distro.ibiblio.org" target="_blank">Ibiblio / University of North Carolina </a> for becoming a BlackArch Linux mirror.
                <br />
                They are offering the following access: <a href="http://distro.ibiblio.org/blackarch/" target="_blank">http</a> |
                <a href="ftp://distro.ibiblio.org/blackarch/" target="_blank">ftp</a>
              </div></article>

              <article id=p53 itemscope itemtype="http://schema.org/NewsArticle"><header>
              <time itemprop="datePublished">Fri, 29 Apr 2016 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs released! </h4></header>
              <div itemprop="description">
              <p>
                Today we released new BlackArch Linux ISOs along with the new installer. The new ISOs include over 1400 tools. For more details see the ChangeLog below.
              </p>
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
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
              </div>
              </article>

              <article id=p52 itemscope itemtype="http://schema.org/NewsArticle"><header>
                <time itemprop="datePublished">Thu, 28 Apr 2016 00:00:00 GMT</time>
                <h4 itemprop="name">New BlackArch Linux installer released! </h4></header>
              <div itemprop="description">
                We have released the new (improved) BlackArch Linux installer today. It is built and released in our
                <a href="https://www.blackarch.org/blackarch/blackarch/os/" target="_blank">repository</a> and can be installed via pacman:<br /><br />
                <code>pacman -S blackarch-installer</code><br /><br /> The source code and documentation is available on github:
                <a href="https://github.com/BlackArch/blackarch-installer" target="_blank">blackarch-installer</a>
              </div></article>

              <article id=p51 itemscope itemtype="http://schema.org/NewsArticle"><header>
                <time itemprop="datePublished">Sat, 12 Mar 2016 00:00:00 GMT</time>
                <h4 itemprop="name">New mirror added in Singapore!</h4></header>
              <div itemprop="description">
                We would like to thank <a href="http://nus.edu.sg//">National University of Singapore</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://download.nus.edu.sg/mirror/blackarch/" target="_blank">http</a> |
                <a href="https://download.nus.edu.sg/mirror/blackarch/" target="_blank">https</a>
              </div>
              </article>

              <article id=p50 itemscope itemtype="http://schema.org/NewsArticle"><header>
              <time itemprop="datePublished">Mon, 11 Jan 2016 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs released!</h4></header>
              <div itemprop="description">
              <p>
                Today we released new BlackArch Linux ISOs. The new ISOs include over 1330 tools. For more details see the ChangeLog below.
              </p>
                 <p>Here's the ChangeLog :</p>
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
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
              </div></article>
              <article id=p49 itemscope itemtype="http://schema.org/NewsArticle"><header>
                <time itemprop="datePublished">Sat, 05 Dec 2015 00:00:00 GMT</time>
                <h4 itemprop="name">New mirror added in Germany!</h4></header>
                <div itemprop="description">
                    We would like to thank <a href="http://ftp.halifax.rwth-aachen.de/">RWTH Aachen University</a> for becoming a mirror.
                    <br />
                    They are offering the following access: <a href="http://ftp.halifax.rwth-aachen.de/blackarch/" target="_blank">http</a> |
                    <a href="ftp://ftp.halifax.rwth-aachen.de/blackarch/" target="_blank">ftp</a> |
                    <a href="rsync://ftp.halifax.rwth-aachen.de/blackarch/" target="_blank">rsync</a>
              </div></article>
              <article id=p48 itemscope itemtype="http://schema.org/NewsArticle"><header>
                <time itemprop="datePublished">Sun, 15 Nov 2015 00:00:00 GMT</time>
                <h4 itemprop="name">New ISOs released!</h4></header>
                <div itemprop="description">
                  <p>
                    Today we released new BlackArch Linux ISOs. The new ISOs include over 1300 tools. For more details see the ChangeLog below.
                  </p>
                  <p>Here's the ChangeLog :</p>
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
                <p>
                  We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
                </p>
              </div></article>
              <article id=p47 itemscope itemtype="http://schema.org/NewsArticle"><header>
              <time itemprop="datePublished">Sat, 14 Nov 2015 00:00:00 GMT</time>
              <h4 itemprop="name">We did it!</h4></header>
              <div itemprop="description">
              We went over the BlackArch Linux repository and updated all <a href="https://www.blackarch.org/tools.html" target="_blank">tools</a>.
              Soon, we will release the new ISOs and the BlackArch Linux Guide, stay tuned!
              <br /><br />
              A big &quot;Thank you&quot; to all BlackArch Linux users, supporters and contributors.
              </div></article>
              <article id=p46 itemscope itemtype="http://schema.org/NewsArticle"><header>
              <time itemprop="datePublished">Sun, 02 Aug 2015 00:00:00 GMT</time>
              <h4 itemprop="name">New ISOs released! </h4></header>
              <div itemprop="description">
                <p>
                Today we released new BlackArch Linux ISOs. The
                new ISOs include over 1230 tools for i686 and
                x86_64 and over 1010 tools. For more details see the ChangeLog below.
                </p>
                <p>Here's the ChangeLog :</p>
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
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
              </div></article>
              <article id=p45 itemscope itemtype="http://schema.org/NewsArticle"><header>
              <time itemprop="datePublished">Wed, 17 Jun 2015 00:00:00 GMT</time>
              <h4 itemprop="name">New Vietnam mirror added! </h4></header>
              <div itemprop="description">
              <p>
                We would like to thank <a href="archlinuxvn.org">archlinuxvn.org</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://f.archlinuxvn.org/blackarch/" target="_blank">http</a>
              </p>
              </div></article>
              <article id=p44 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">We did it! </h4></header><time itemprop="datePublished">Mon, 15 Jun 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
              We went over the BlackArch Linux repository and updated all <a href="https://www.blackarch.org/tools.html" target="_blank">tools</a>.
              Soon, we will release the new ISOs and the BlackArch Linux Wiki, stay tuned!
              <br /><br />
              A big &quot;Thank you&quot; to all BlackArch Linux users, supporters and contributors.
              </p>
              </div></article>
              <article id=p43 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Austria mirrors added! </h4></header><time itemprop="datePublished">Thu, 21 May 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="easyname.at">easyname.at</a> and <a href="nessus.at">nessus.at</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://mirror.easyname.at/blackarch/" target="_blank">http</a> |
                <a href="ftp://mirror.easyname.at/blackarch/" target="_blank">ftp</a> |
                <a href="rsync://mirror.easyname.at/blackarch/" target="_blank">rsync</a>
              </p>
              </div></article>
              <article id=p42 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Switzerland mirrors added! </h4></header><time itemprop="datePublished">Thu, 21 May 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="easyname.at">easyname.at</a> and <a href="nessus.at">nessus.at</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://mirror.easyname.ch/blackarch/" target="_blank">http</a> |
                <a href="ftp://mirror.easyname.ch/blackarch/" target="_blank">ftp</a> |
                <a href="rsync://mirror.easyname.ch/blackarch/" target="_blank">rsync</a>
              </p>
              </div></article>
              <article id=p41 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New China mirrors added! </h4></header><time itemprop="datePublished">Fri, 01 May 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="ustc.edu.cn">ustc.edu.cn</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="https://mirrors.ustc.edu.cn/blackarch/" target="_blank">https</a>
              </p>
              </div></article>
              <article id=p40 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Denmark mirrors added! </h4></header><time itemprop="datePublished">Wed, 15 Apr 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="http://dotsrc.org">dotsrc.org</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://mirrors.dotsrc.org/blackarch/" target="_blank">http</a> |
                <a href="ftp://mirrors.dotsrc.org/blackarch/" target="_blank">ftp</a>
              </p>
              </div></article>
              <article id=p39 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Australia mirrors added! </h4></header><time itemprop="datePublished">Fri, 10 Apr 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="digitalpacific.com.au">digitalpacific.com.au</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://blackarch.mirror.digitalpacific.com.au/" target="_blank">http</a> |
                <a href="rsync://mirror.digitalpacific.com.au/blackarch" target="_blank">rsync</a>
              </p>
              </div></article>
              <article id=p38 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New ISOs released (Bugfixes) </h4></header><time itemprop="datePublished">Wed, 08 Apr 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                Today we released new BlackArch Linux ISOs. The new ISOs include over 1200 tools for i686 and x86_64 and over 1000 tools
                for armv6h and armv7h. This release includes bugfixes and SHA1 sum checks for our strap.sh script in the installer.
                For more details see the ChangeLog below.
              </p>
                <p>Here's the ChangeLog :</p>
                <ul>
                  <li>added README</li>
                  <li>fix pacman.conf settings: replace HoldPkg settings with IgnorePkg</li>
                  <li>updated blackarch-install-scripts (add missing packages, check SHA 1 sum of strap.sh, and more...)</li>
                  <li>updated system packages including linux kernel 3.19.3, and more...</li>
                  <li>updated tools (version bumps)</li>
                </ul>
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
              </div></article>
              <article id=p37 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Belgium mirrors added! </h4></header><time itemprop="datePublished">Sat, 04 Apr 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="http://alexiobash.com/">alexiobash.com</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://mirror.alexiobash.com/blackarch/" target="_blank">http</a>
              </p>
              </div></article>
              <article id=p36 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New US mirrors added! </h4></header><time itemprop="datePublished">Thu, 02 Apr 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="https://tspitzconsulting.com/">TSpitz Consulting, Inc</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://mirror2.tscinc.co/blackarch" target="_blank">http</a> |
                <a href="rsync://mirror2.tscinc.co/blackarch/" target="_blank">rsync</a>
              </p>
              </div></article>
              <article id=p35 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Poland mirrors added! </h4></header><time itemprop="datePublished">Thu, 02 Apr 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="http://www.icm.edu.pl/">ICM Warsaw University</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://ftp.icm.edu.pl/pub/Linux/dist/blackarch" target="_blank">http</a> |
                <a href="ftp://ftp.icm.edu.pl/pub/Linux/dist/blackarch" target="_blank">ftp</a> |
                <a href="rsync://ftp.icm.edu.pl/pub/Linux/dist/blackarch" target="_blank">rsync</a> |
                <a href="gopher://ftp.icm.edu.pl/1/pub/Linux/dist/blackarch" target="_blank">gopher</a>
              </p>
              </div></article>
              <article id=p34 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Greece mirrors added! </h4></header><time itemprop="datePublished">Wed, 01 Apr 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="http://www.cc.uoc.gr/">University of Crete / Computer Center</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://ftp.cc.uoc.gr/mirrors/linux/blackarch/" target="_blank">http</a> |
                <a href="ftp://ftp.cc.uoc.gr/mirrors/linux/blackarch/" target="_blank">ftp</a>
              </p>
              </div></article>
              <article id=p33 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New France mirrors added! </h4></header><time itemprop="datePublished">Wed, 01 Apr 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="http://tamcore.eu/">tamcore.eu</a> and <a href="http://uteditor.de/">uteditor.de</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://blackarch.tamcore.eu/" target="_blank">http</a> |
                <a href="https://blackarch.tamcore.eu/" target="_blank">https</a> |
                <a href="rsync://blackarch.tamcore.eu/blackarch/" target="_blank">rsync</a>
              </p>
              </div></article>
              <article id=p32 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New ISOs and BlackArch Linux installer... </h4></header><time itemprop="datePublished">Mon, 30 Mar 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                Today we released new BlackArch Linux ISOs. The new ISOs include over 1200 tools for i686 and x86_64 and over 1000 tools for armv6h and armv7h.
              </p>
              <p>Here's a short ChangeLog :</p>
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
              <p>
                We wish to thank all of BlackArch's users, mirrors, and supporters. Thanks for your help.
              </p>
               </div></article>
              <article id=p31 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">Tool count breaks 1200 and upcoming ISOs... </h4></header><time itemprop="datePublished">Sat, 21 Mar 2015 00:00:00 GMT</time>
              <div itemprop="description">
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
              </p>
              </div></article>
              <article id=p30 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Turkey mirror added! </h4></header><time itemprop="datePublished">Sun, 08 Mar 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="http://linux.org.tr/">linux.org.tr</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://ftp.linux.org.tr/blackarch/" target="_blank">http</a> |
                <a href="ftp://ftp.linux.org.tr/blackarch/" target="_blank">ftp</a> |
                <a href="rsync://rsync.linux.org.tr/blackarch/" target="_blank">rsync</a>
              </p>
              </div></article>
              <article id=p29 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">Major upgrade of BlackArch Linux repository! </h4></header><time itemprop="datePublished">Sun, 15 Feb 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We walked through the BlackArch Linux repository and upgraded almost every single package.<br />
                In order to get the updated packages, run: <br /><br />
                <code>pacman -Syyu --needed --force blackarch</code>
                <br /><br />
                Thanks for all supporters and contributors!
              </p>
              </div></article>
              <article id=p28 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Ecuador mirror added! </h4></header><time itemprop="datePublished">Thu, 12 Feb 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="http://mirror.uta.edu.ec" target="_blank">mirror.uta.edu.ec</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://mirror.uta.edu.ec/blackarch/" target="_blank">http</a> |
                <a href="ftp://mirror.uta.edu.ec/blackarch/" target="_blank">ftp</a> |
                <a href="rsync://mirror.uta.edu.ec/blackarch/" target="_blank">rsync</a>
              </p>
              </div></article>
              <article id=p27 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Australia mirror added! </h4></header><time itemprop="datePublished">Tue, 13 Jan 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="http://hexnoia.org/">hexnoia.org</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://blackarch.hexnoia.org/" target="_blank">http</a>
              </p>
              </div></article>
              <article id=p26 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Italy mirror added! </h4></header><time itemprop="datePublished">Fri, 09 Jan 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="https://mirror.garr.it">garr.it</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://blackarch.mirror.garr.it/mirrors/blackarch/" target="_blank">http</a> |
                <a href="rsync://blackarch.mirror.garr.it/blackarch/" target="_blank">rsync</a>
              </p>
              </div></article>
              <article id=p25 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Switzerland mirror added! </h4></header><time itemprop="datePublished">Mon, 05 Jan 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="https://mirror.tillo.ch" target="_blank">tillo.ch</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="https://mirror.tillo.ch/ftp/blackarch/" target="_blank">https</a> |
                <a href="http://mirror.tillo.ch/ftp/blackarch/" target="_blank">http</a> |
                <a href="ftpes://mirror.tillo.ch/blackarch/" target="_blank">ftpes</a> |
                <a href="ftp://mirror.tillo.ch/blackarch/" target="_blank">ftp</a> |
                <a href="rsync://mirror.tillo.ch/blackarch/" target="_blank">rsync</a>
              </p>
              </div></article>
              <article id=p24 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New US mirror added! </h4></header><time itemprop="datePublished">Sun, 04 Jan 2015 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="http://mirrors.cdndepo.com/">CDN Depot</a> for becoming a mirror.
                <br />
                They are offering the following access:
                <a href="https://blackarch.cdndepo.com/">https</a> |
                <a href="http://blackarch.cdndepo.com/">http</a> |
                <a href="rsync://blackarch.cdndepo.com/">rsync</a>
              </p>
              </div></article>
              <article id=p23 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New US mirror added! </h4></header><time itemprop="datePublished">Mon, 29 Dec 2014 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="http://packetfire.org/">Packetfire</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="https://blackarch.mirror.packetfire.org/" target="_blank">https</a> |
                <a href="http://blackarch.mirror.packetfire.org/" target="_blank">http</a> |
                <a href="rsync://blackarch.mirror.packetfire.org/" target="_blank">rsync</a>
              </p>
              </div></article>
              <article id=p22 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Taiwan mirror added! </h4></header><time itemprop="datePublished">Wed, 12 Nov 2014 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="http://www.cse.yzu.edu.tw/" target="_blank">Dept of CSE, Yuan Ze University</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://ftp.yzu.edu.tw/Linux/blackarch/" target="_blank">http</a> |
                <a href="ftp://ftp.yzu.edu.tw/Linux/blackarch/" target="_blank">ftp</a> |
                <a href="rsync://ftp.yzu.edu.tw/Linux/blackarch/" target="_blank">rsync</a>
              </p>
              </div></article>
              <article id=p21 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New US mirror added! </h4></header><time itemprop="datePublished">Mon, 13 Oct 2014 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="https://deadbeef.ninja" target="_blank">deadbeef.ninja</a>for becoming a mirror.
                <br />
                They are offering the following access: <a href="https://deadbeef.ninja/blackarch/">https</a>
              </p>
              </div></article>
              <article id=p20 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New ISOs! </h4></header><time itemprop="datePublished">Tue, 07 Oct 2014 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                Today, we released new BlackArch Linux ISOs including more than 1000 tools and lot's of improvements.
                Also, armv6h and armv7h repositories are filled with more than 1050 tools.
                <br /><br />
              </p>
                <p>A short ChangeLog :</p>
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
                <p>
                We wanted to say "thank you" to all users and supporters of BlackArch Linux who contributed, donated and
                motivated us for testings, fixes and improvements.
                </p>
              </div></article>
              <article id=p19 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Turkey mirror added! </h4></header><time itemprop="datePublished">Thu, 21 Aug 2014 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="http://knuth.mirrortr.com/blackarch" target="_blank">knuth.mirrortr.com</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://knuth.mirrortr.com/blackarch" target="_blank">http</a> |
                <a href="ftp://knuth.mirrortr.com/blackarch" target="_blank">ftp</a> |
                <a href="rsync://knuth.mirrortr.com/blackarch" target="_blank">rsync</a>
              </p>
              </div></article>
              <article id=p18 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">Torrent files for new ISOs! </h4></header><time itemprop="datePublished">Wed, 02 Jul 2014 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                Torrent files for new ISOs have been added.
                <br />
                You can get them <a href="">here</a> or on our <a href="">mirror sites</a>.
              </p>
              </div></article>
              <article id=p17 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New ISOs! </h4></header><time itemprop="datePublished">Tue, 01 Jul 2014 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                Today, we released new BlackArch Linux ISOs including more than 1000 tools and lot's of improvements. Also,
                armv6h and armv7h repositories are filled with about 950 tools.
                <br /><br />
              </p>
                <p> A short ChangeLog:</p>
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
              <p>
                We wanted to say "thank you" to all users and supporters of BlackArch Linux who contributed, donated and motivated us
                for testings, fixes and improvements.
              </p>
              </div></article>
              <article id=p16 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Taiwan mirror added! </h4></header><time itemprop="datePublished">Mon, 30 Jun 2014 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="http://cs.nctu.edu.tw/" target="_blank">cs.nctu.edu.tw</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://blackarch.cs.nctu.edu.tw/" target="_blank">http</a> |
                <a href="rsync://blackarch.cs.nctu.edu.tw/blackarch" target="_blank">rsync</a>
              </p>
              </div></article>
              <article id=p15 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Canada mirror added! </h4></header><time itemprop="datePublished">Mon, 30 Jun 2014 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="http://clibre.uqam.ca/" target="_blank">clibre.uqam.ca</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://mirror.clibre.uqam.ca/blackarch/" target="_blank">http</a>
              </p>
              </div></article>
              <article id=p14 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Ecuador mirrors added! </h4></header><time itemprop="datePublished">Tue, 03 Jun 2014 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="http://cedia.org.ec/" target="_blank">cedia.org.ec</a> and
                <a href="http://espoch.edu.ec/" target="_blank">espoch.edu.ec</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://mirror.cedia.org.ec/blackarch/" target="_blank">http</a> |
                <a href="http://mirror.espoch.edu.ec/blackarch" target="_blank">http</a>
              </p>
              </div></article>
              <article id=p13 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New Germany mirrors added! </h4></header><time itemprop="datePublished">Mon, 02 Jun 2014 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="http://www.curesec.com/" target="_blank">Curesec Team</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://blackarch1.curesec.com/blackarch/" target="_blank">http</a> |
                <a href="http://blackarch2.curesec.com/blackarch/" target="_blank">http</a>
              </p>
              </div></article>
              <article id=p12 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New US mirror added! </h4></header><time itemprop="datePublished">Sat, 17 May 2014 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We would like to thank <a href="http://www.team-cymru.org/" target="_blank">Team Cymru</a> for becoming a mirror.
                <br />
                They are offering the following access: <a href="http://mirror.team-cymru.org/blackarch/" target="_blank">http</a> |
                <a href="ftp://mirror.team-cymru.org/blackarch/" target="_blank">ftp</a> |
                <a href="rsync://mirror.team-cymru.org/blackarch/" target="_blank">rsync</a>
              </p>
              </div></article>
              <article id=p11 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New ISOs! </h4></header><time itemprop="datePublished">Mon, 21 Apr 2014 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                Today, we released new BlackArch Linux ISOs including more than 750 tools and lot's of improvements. Also, armv6h
                and armv7h repositories are filled with about 650 tools.
                <br /><br />
              </p>
                 <p>A short ChangeLog:</p>
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
              <p>
                We wanted to say "thank you" to all users and supporters of BlackArch Linux who contributed, donated and motivated us
                for testings, fixes and improvements.
              </p>
              </div></article>
              <article id=p10 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">ARM Support and New ISOs! </h4></header><time itemprop="datePublished">Mon, 03 Mar 2014 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                BlackArch now has ARM support. Currently, there are 570 tools in the armv6h repo and 580 tools in the armv7h repo.
                We are working to close the gap between the ARM repos and the x86_64 and i686 repos. Expect to see over 600 tools in
                each ARM repo within a week or two.
                <br /><br />
                Soon, we will release ARM images for various devices including the Raspberry Pi and Pandaboard.
                <br /><br />
              </p>
                 <p>We also released new ISOs today. The new ISOs make the following changes :</p>
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
              </div></article>
              <article id=p9 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New tools: netcon.sh and strap.sh </h4></header><time itemprop="datePublished">Thu, 20 Feb 2014 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                BlackArch now comes with <a href="https://github.com/BlackArch/netcon" target="_blank">netcon.sh</a>, a script to establish
                network connections with the option to spoof MAC addresses, hostnames, clientids, etc.
                <br /><br />
                Also, we simplified the <a href="http://blackarch.org/downloads.html">installation instructions</a> with a new script:
                <a href="/strap.sh">strap.sh</a>.
              </p>
              </div></article>
              <article id=p8 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">New keyring </h4></header><time itemprop="datePublished">Sun, 12 Jan 2014 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                All existing users must follow the <a href="http://blackarch.org/downloads.html">new installation instructions</a>, including step 0.
                We switched to a more robust keyring. The new keyring is a modification of the keyring used by the Arch Linux developers.
              </p>
              </div></article>
              <article id=p7 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">Live ISOs, Status, and Futures! </h4></header><time itemprop="datePublished">Wed, 01 Jan 2014 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                BlackArch Linux is an Arch-based GNU/Linux distribution for pentesters and security researchers. The BlackArch package
                repository is compatible with existing Arch installs.
                <br /><br />
                <p>Here are some of BlackArch's features :</p>
                <ul>
                  <li>Support for i686 and x86_64 architectures</li>
                  <li>Over 600 tools (constantly increasing)</li>
                  <li>Modular package groups</li>
                  <li>A live ISO with multiple window managers, including dwm, Fluxbox, Openbox, Awesome, wmii, i3, and Spectrwm.</li>
                  <li>An installer with the ability to build from source.</li>
                </ul>
                <br />
                <p>Soon we will release :</p>
                <br /><br />
                <ul>
                  <li>ARM support</li>
                  <li>Documentation for all tools</li>
                </ul>
                <br />
                <p>
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
              </div></article>
              <article id=p6 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">Major release and site redesign! </h4></header><time itemprop="datePublished">Sat, 28 Dec 2013 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We redesigned our website. We hope you like the new style. We also released a bunch of new tools. There are over 600 tools
                in the repo now. The full list of tools is <a href="tools.html">here</a>.
              </p>
              </div></article>
              <article id=p5 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">Updates to Pacman.conf! </h4></header><time itemprop="datePublished">Fri, 20 Dec 2013 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We changed the directory structure of the repository. Please modify your pacman.conf files like so:</p>
                <ul>
                  <li>[blackarch]</li>
                  <li>Server = http://blackarch.org/blackarch/$repo/os/$arch</li>
                </ul>
                <br />
                <p>
                The repository directory structure now resembles that of the official Arch repositories. The new structure will make it easier
                for mirrors to sync with our repository.
                </p>
              </div></article>
              <article id=p4 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">We did it! </h4></header><time itemprop="datePublished">Sun, 24 Nov 2013 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                Thanks to everyone's interest in this project we finally pissed off our ISP! It makes us happy to know that so many people
                appreciate our hard work and are using BlackArch Linux. We have managed to push a record 1.2TB a month of traffic and downloads.
                The shiny new server is up and alive, thank you for being patient with us. We are currently replicating mirrors across the USA
                to help with any potential future disruptions. For the latest updates please come back and visit us or follow us on twitter.
                Thanks everyone!
              </p>
              </div></article>
              <article id=p3 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">Securabit Podcast! </h4></header><time itemprop="datePublished">Mon, 16 Sep 2013 00:00:00 GMT</time>
              <div itemprop="description">
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
              </div></article>
              <article id=p2 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">Extended downtime! </h4></header><time itemprop="datePublished">Sun, 25 Aug 2013 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We're continuing work to upgrade our infrastructure, as a part of this improvement our domain service provider experienced some
                issues which resulted in slow proprogation of our DNS records across the globe. This was the root cause of our extended downtime.
                This issue has now been corrected, we apologize for the inconvenience.
              </p>

              </div></article>
              <article id=p1 itemscope itemtype="http://schema.org/NewsArticle"><header><h4 itemprop="name">Speak candidly! </h4></header><time itemprop="datePublished">Sat, 24 Aug 2013 00:00:00 GMT</time>
              <div itemprop="description">
              <p>
                We have recently relocated all tools in the repository to comply with <a href="http://www.pathname.com/fhs/" target="_blank">FHS</a>.
                We would like to hear from anyone that was familiar with the <i>/pentest</i> path structure and how they feel about the current format.
                Did anyone depend on <i>/pentest</i> to remember what tools you have in your arsenal? Do you prefer having all tools available to you
                in your <i>$PATH</i>? Please feel free to comment below and speak your mind!
              </p>
              </div></article>
            </li>
          </ul>
        </div>
      </div>
      <div class="col-md-4">
        <div style="border: 1px solid #aaa; border-radius:4px; height:420px;">
          <a class="twitter-timeline" href="https://twitter.com/blackarchlinux" data-widget-id="368746180060004352" data-theme="dark">Tweets by @blackarchlinux</a>
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
