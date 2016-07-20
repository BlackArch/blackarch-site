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
            BlackArch Linux is entirely free and open source. The team-members work in their free time (voluntary). Despite the large amount of the time spend, every day, for the general interest, the hosting of the website, domain name, download mirror,
            testing hardware... aren't free.
        </p>
        <p>
            Every donate, even the most modest, is a great help and will be use only for pay our actual bill and fund the future features of the project. We appreciate your interest
            for our work and hope you will always find satisfaction.
        </p>
        <p>
        	There is many way to help us, money is of course a must but in case you can't give a financial contributing, you may help by translating, offering support to the other users in need, give some of your time to improve Blackarch or, by a simple star of our repo on github...
        </p>
   		<p>
            We also welcome any organisation/company interested in to become an official sponsor of BlackArch. You can contact us by IRC or by email.
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
		<span class="act-cash fa-stack fa-2x" title="Cash">
		  <i class="fa fa-square fa-stack-2x"></i>
		  <i class="cash fa fa-dollar fa-stack-1x fa-inverse"></i>
		</span>
		<span class="act-cc fa-stack fa-2x" title="Credit Card">
		  <i class="fa fa-square fa-stack-2x"></i>
		  <i class="cc fa fa-credit-card fa-stack-1x fa-inverse"></i>
		</span>
		<p class=act-display></p>
        </div>
        <!-- /.row -->
EOF

cat common/end
