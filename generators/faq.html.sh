cat common/start-faq

cat <<\EOF
    <!-- Page Content -->
    <div class="container result">
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
               <div class="page-header page-header-title">
               <h1>FAQ</h1> <h2>Frequently Asked Questions</h2>
               </div>
                <ol class="breadcrumb">
                    <li><a class=home href="index.html">Home</a>
                    </li>
                    <li class="active">Faq</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
       <!-- Content Row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFive">Is BlackArch Linux the right pentesting distribution for me?</a>
                            </h4>
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse">
                            <div class="panel-body panel-body-faq">
                                BlackArch is a Linux pentesting distribution based on ArchLinux. If you're not familiar with ArchLinux, or Linux in general, we strongly suggest you avoid BlackArch due to the learning curve for new users.
                            </div>
                        </div>
                    </div>
                   <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Where do I start with BlackArch?</a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse">
                            <div class="panel-body panel-body-faq">
                            You must first get an ISO on the <a href="downloads.html" title="Download blackarch">downloads</a> page and install it by following the instructions of the installation script. You can find a tutorial to show the process step by step at this URL <a href="blackarch-install.html" title="Blackarch install">Blackarch installation</a>. If you encounter any problems and need help, the best place to ask is our <a href="irc://irc.blackarch.org:1337/blackarch">IRC channel</a>.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Is BlackArch up to date?</a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body panel-body-faq">
                            BlackArch is constantly being updated and offers the latest packages available on Github. We release a new ISO four times a year (quarterly). These new images contain packages that are up to date, and usually include bug fixes. If you find any package that is outdated and wish to see it up to date, please report it as an issue on our Github repository <a href="https://github.com/BlackArch/blackarch" title="BlackArch github" target=_blank>Github</a>.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">How can I fetch/install the latest update available?</a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse">
                            <div class="panel-body panel-body-faq">
                            By simply running <span class=faqco>pacman -Syu --needed --overwrite='*' blackarch</span>. This command requires root privileges.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFour">Why do I get invalid keyring signature?</a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse">
                            <div class="panel-body panel-body-faq">
                            It could happen for a wide range of reasons. Below you will find a <strong>few suggestions</strong>.<br><br>
                            <ul>
                                <li>You don't have an internet connection (as you can imagine, a rare problem and can be verified quickly).</li>
                                <li>You may have a DNS problem, that can't resolve pgp.mit.edu accordingly. Please check your DNS settings (pgp.mit.edu works best with 8.8.8.8 DNS Server).</li>
                                <li>You may have a network issue, different from the above one, which is hard for us to help since it can be a myriad of things. For example: DNS caching.</li>
                                <li>You may have a clock/time issue.</li>
                                <li>You may have something blocking your communication with mit.edu server, for instance: a firewall.</li>
                                <li>If you're connected through a VPN, try to temporarily disable it and run <span class=faqco>strap.sh</span> again.</li>
                            </ul>
                            After testing all the items described above if you still have problems using <span class=faqco>strap.sh</span>, try the options below:<br><br>
                            1<sup>st</sup> option:<br>
                            <span class=faqco># rm -rf /etc/pacman.d/gnupg</span><br>
                            <span class=faqco># pacman-key --init</span><br>
                            <span class=faqco># pacman-key --populate archlinux blackarch</span><br>
                            <span class=faqco># pacman-key --update --keyserver keyserver.ubuntu.com</span><br><br>

                            2<sup>nd</sup> option:<br>
                            You could try to change to pgp.mit.edu's IP address using the following command:<br>
                            <span class=faqco># curl -O https://blackarch.org/strap.sh</span><br>
                            <span class=faqco># chmod +x strap.sh</span><br>
                            <span class=faqco># sha1sum strap.sh</span>: it should match with the information on <a href=https://blackarch.org/downloads.html>downloads</a><br>
                            <span class=faqco># sh strap.sh</span><br><br>

                            It's very important to follow the suggestions above as well as checking the Archlinux Wiki pages to assist you as needed. If you still encounter any problems, pay us a visit at <a href="irc://irc.blackarch.org:1337/blackarch">#blackarch</a>.<br>
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseSix">Where can I get help for a problem that I'm facing?</a>
                            </h4>
                        </div>
                        <div id="collapseSix" class="panel-collapse collapse">
                            <div class="panel-body panel-body-faq">
                                Depending on the problem you're facing, you can visit our Github and submit an issue on our Issue page, such as:<br>
                                <ul>
                                    <li><a href="https://github.com/BlackArch/blackarch-site/issues">BlackArch Site repository</a>: related to our website. For example: If a link is broken or an image isn't loading.</li>
                                    <li><a href="https://github.com/BlackArch/blackarch/issues">BlackArch repository</a>: related to our packages. For example: a package hasn't been updated for a while or failed to run.</li>
                                    <li><a href="https://github.com/BlackArch/blackarch-installer">BlackArch Installer repository</a>: related to our installer. For example: the installation failed or you can not boot after a successful installation.</li>
                                </ul>
                                You can also take some time to browse our <a href="https://github.com/BlackArch">other repositories</a>.<br>
                                If you still cannot find a solution to your problem, visit our <a href="irc://irc.blackarch.org:1337/blackarch">IRC channel</a> and ask for help. But please be advised, BlackArch users are in different parts of the globe (different time zones). Therefore, be patient. Ask your question and wait for a reply.<br>
                            </div>
                        </div>
                    </div>
                   <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven">I would like to help. What can I do?</a>
                            </h4>
                        </div>
                        <div id="collapseSeven" class="panel-collapse collapse">
                            <div class="panel-body panel-body-faq">
                                BlackArch Linux is a huge project, we are adding new applications and features everyday.<br>
                                If you would like to help us with anything, visit our <a href="irc://irc.blackarch.org:1337/blackarch">IRC channel</a>. Just remember to wait for a reply, we are in different time zones.<br>
                            </div>
                        </div>
                    </div>
                   <!-- /.panel -->
                <!-- /.panel-group -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
     <!-- /.row -->
EOF

cat common/end
