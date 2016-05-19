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
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">Donate</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
        <!-- Content Row -->
        <p>
            BlackArch Linux survives thanks to the tireless efforts of the core development team. None of us are paid for our work and we do not have the personal funds to
            sustain server costs ourselves.
        </p>
        <p>
            There are many ways to help support BlackArch Linux. If you are unable to provide technical development, documentation, or support, you could certainly help us by sending
            some fiat currency or bitcoins our way. Many thanks!
        </p>
        <hr />
        <br />
        <div class="row">
            <div class="col-md-4">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3 class="panel-title"><b>PayPal</b></h3>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <form id=paypal action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
                                <input type="hidden" name="cmd" value="_s-xclick">
                                <input type="hidden" name="hosted_button_id" value="UPSCCPXHY8EBQ">
                                <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" name="submit" alt="PayPal - The safer, easier way to pay online!">
                                <img src="https://www.paypalobjects.com/de_DE/i/scr/pixel.gif" alt="Paypal" />
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3 class="panel-title"><b>Bitcoin</b></h3>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">
                       <i class="fa fa-btc fa-lg"></i>1AXMzX5f6GzHY2oFt66zj7JPFaxKMEZMnn
                        </li>
                    </ul>
                </div>
            </div>
        </div>
     </div>
        <!-- /.row -->
EOF

cat common/end
