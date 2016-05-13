cat common/start-guide

cat <<\EOF
    <!-- Page Content -->
    <div class="container">
        <!-- Page Heading/Breadcrumbs -->
         <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    <a>Guide <small>BlackArch Linux Documentation</small></a>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">Guide</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
        <!-- Content Row -->
        <div class="row">
            <!-- Content Column -->
            <div class="col-md-12">
                <p>
                    This is the official guide to BlackArch Linux. It is quite new. Kindly excuse all typos and errors. Soon, this guide will contain all of the information
                    about BlackArch Linux you could possible imagine. We offer the guide in PDF translated in several languages.
                <p>
                <p>
                    To download the guide, please use the links below.
                </p>

                <table id=guide>
                    <tr>
		                <td><img src="/images/flags/us.png" alt="United States" /></td>
		                <td><a href="blackarch-guide-en.pdf" target="_blank">English</a></td>
                    </tr>
                    <tr>
		                <td><img src="/images/flags/fr.png" alt="France" /></td>
		                <td><a href="blackarch-guide-fr.pdf" target="_blank">French</a></td>
                    </tr>
                    <tr>
		                <td><img src="/images/flags/tr.png" alt="Turkey" /></td>
		                <td><a href="blackarch-guide-tr.pdf" target="_blank">Turkish</a></td>
                    </tr>
                </table>
                <p>
                    <i>We're looking for translators. Please use the latex file from
                    <a href="https://github.com/BlackArch/blackarch-guide/tree/master/latex" target="_blank">blackarch-guide</a> at <a href="https://github.com/" target="_blank">github</a>
                    and send us your changes or open a pull request if you would like to translate the guide from English to any other language.</i>
                </p>
EOF

cat common/end
