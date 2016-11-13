cat common/start-donate

cat <<\EOF
    <!-- Page Content -->
    <div class="container result">
    	<!-- Page Heading/Breadcrumbs -->
		<div class="row">
            <div class="col-lg-12">
               <div class="page-header page-header-title">
	           <h1>Donation</h1> <h2>Help us today</h2>
               </div>
                <ol class="breadcrumb">
                    <li><a class=home href="index.html">Home</a>
                    </li>
                    <li class="active">Donate</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
        <!-- Content Row -->
        <p>
            BlackArch Linux is entirely free and open source. The team-members work in their free time (voluntary). Despite the large amount of the time spent every day. Another thing that this project requires to keep moving forward is donations. For instance, the hosting of the website, domain name, download mirror,
            testing hardware... isn't free.
        </p>
        <p>
            Every donation, even the most modest, is a great help and will be used only to pay for Blackarch expenses, and fund the future developemnt of the project. We appreciate your interest
            in this project as we continue to develop Blackarch Linux.
        </p>
        <p>
        	There are many ways to help us. Money is of course a must. But, if you can't give a financial contribution, you may help in another way. For example: translating, offering support to users in need (in IRC), or anything that can help improve Blackarch. Also, a simple star of the Blackarch repository on Github goes a long way... :D
        </p>
   		<p>
            We also welcome any organisation/company interested in becoming an official sponsor of BlackArch Linux. You can contact us by IRC or by email.
        </p>
        <br />
        <div id=givenow>
		<span class="fa-stack fa-2x" title="Paypal">
		<a href="https://www.paypal.com/us/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=UPSCCPXHY8EBQ">
		  <i class="fa fa-square fa-stack-2x"></i>
		  <i class="paypal fa fa-paypal fa-stack-1x fa-inverse"></i>
		  </a>
		</span>
          <span class="act-bitcoin fa-stack fa-2x" title="Bitcoin">
		  <i class="fa fa-square fa-stack-2x"></i>
		  <i class="bitcoin fa fa-btc fa-stack-1x fa-inverse"></i>
		</span>
		<p class=act-display></p>
		<noscript><p class=ns>1AXMzX5f6GzHY2oFt66zj7JPFaxKMEZMnn</p></noscript>
        </div>
        <!-- /.row -->
EOF

cat common/end
