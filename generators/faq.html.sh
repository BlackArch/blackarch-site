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
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Where do I start with BlackArch?</a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse">
                            <div class="panel-body panel-body-faq">
                            You must first get the right ISO on the <a href="downloads.html" title="Download blackarch">blackarch iso</a> page and install it following the instruction of the script installer. You can found a tutorial to show the process step by step at <a href="blackarch-install.html" title="Blackarch install">Blackarch installation</a>. If you encounter any problem and need help, the best place to ask is on our IRC channel.
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
                            BlackArch is constantly being updated and offer the lastest package available on Github. The BlackArch team release quarterly a new ISO containing all the package up to date, one of the last kernel linux available and some bug/fix. If you found any package out of date and wish to see it up to date, please report it as issue on our repository <a href="https://github.com/BlackArch/blackarch" title="BlackArch github" target=_blank>Github</a>.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">How can I fetch/install the lastest update available?</a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse">
                            <div class="panel-body panel-body-faq">
                            By simply running <span class=faqco>pacman -Syyu --needed --force blackarch</span>. This command requires root privilege.
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
                            It could happen for a wide range of reasons, but you can usually fix it by running the commands below. If you still encounter any problems, pay us a visit at <a href="irc://irc.freenode.net/blackarch">#blackarch</a> (Freenode).<br><br>
                            <span class=faqco>rm -rf /etc/pacman.d/gnupg</span><br>
                            <span class=faqco>pacman-key --populate</span><br>
                            <span class=faqco>pacman-key --update.</span><br>
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFive">Is BlackArch Linux the right Linux Distribution for me?</a>
                            </h4>
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse">
                            <div class="panel-body panel-body-faq">
                                BlackArch is a Linux distribution based on ArchLinux. If you're not familiar with Linux itself or even ArchLinux Distribution we strongly suggest to avoid BlackArch.<br>
                                For example, BlackArch comes with all network cards down by default, only a <span class="faqco">root </span>account and no Desktop Environment.<br>
                            </div>
                        </div>
                    </div>
                   <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseSix">Where I can get help for a problem that I'm facing?</a>
                            </h4>
                        </div>
                        <div id="collapseSix" class="panel-collapse collapse">
                            <div class="panel-body panel-body-faq">
                                Depending on the problem you're facing, you can visit our Github Issue page according to each environment, such as:<br>
                                <ul>
                                    <li><a href="https://github.com/BlackArch/blackarch-site/issues">BlackArch Site repository</a>: related to our web page. For example: some link is broken or an image isn't loading.</li>
                                    <li><a href="https://github.com/BlackArch/blackarch/issues">BlackArch repository</a>: related to our packages. For example: a package hasn't been updated for a while or failed to run.</li>
                                    <li><a href="https://github.com/BlackArch/blackarch-installer">BlackArch Installer repository</a>: related to our installer. For example: the installer failed or you can not boot after a successful installation.</li>
                                </ul>
                                You can also take some time to browse our <a href="https://github.com/BlackArch">other repositories</a>.<br>
                                If after that you couldn't find the solution to your problem, visit our <a href="irc://irc.freenode.net/blackarch">IRC channel</a> and ask for help. But please be advised, BlackArch users are in different part of the globe (different time zones) and therefore be patient, ask your question and wait for a reply.<br>
                            </div>
                        </div>
                    </div>
                   <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven">I would like to help. What I can do?</a>
                            </h4>
                        </div>
                        <div id="collapseSeven" class="panel-collapse collapse">
                            <div class="panel-body panel-body-faq">
                                BlackArch Linux is a huge project, from supporting and adding new application everyday to fix typos, broken links and updating our RSS feed.<br>
                                If you would like to help us on anything, visit our <a href="irc://irc.freenode.net/blackarch">IRC channel</a>. Just remember to wait for a reply, IRC is a worldwide chatting platform and people are in different time zones.<br>
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
