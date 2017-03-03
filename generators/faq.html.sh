cat common/start-faq

cat <<\EOF
    <!-- Page Content -->
    <div class="container result">
    	<!-- Page Heading/Breadcrumbs -->
		<div class="row">
            <div class="col-lg-12">
               <div class="page-header page-header-title">
	           <h1>FAQ</h1> <h2>Frequently asked questions</h2>
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
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Where do I start with BlackArch ?</a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse">
                            <div class="panel-body">
							You must first get the right ISO on the <a href="downloads.html" title="Download blackarch">blackarch iso</a> page and install it following the instruction of the script installer. You can found a tutorial to show the process step by step at <a href="blackarch-install.html" title="Blackarch install">Blackarch installation</a>. If you encounter any problem and need help, the best place to ask is on our IRC channel.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Is BlackArch up to date ?</a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body">
							BlackArch is constantly being updated and offer the lastest package available on Github. The BlackArch team release quarterly a new ISO containing all the package up to date, one of the last kernel linux available and some bug/fix. If you found any package out of date and wish to see it up to date, please report it as issue on our repository <a href="https://github.com/BlackArch/blackarch" title="BlackArch github" target=_blank>Github</a>.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                        <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">How can I fetch/install the lastest update available ?</a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse">
                            <div class="panel-body">
							By simply run <span class=faqco>pacman -Syyu --needed --force blackarch</span>. This command require the root privilege.
          					</div>
                        </div>
                    </div>
                    <!-- /.panel -->
                          <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFour">Why do I get invalid keyring signature ?</a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse">
                            <div class="panel-body">
							It's a small issue, nothing serious, you can fix this by entering the following command :<br><br>
							<span class=faqco>rm -rf /etc/pacman.d/gnupg</span><br>
							<span class=faqco>pacman-key --populate</span><br>
							<span class=faqco>pacman-key --update.</span><br>
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
