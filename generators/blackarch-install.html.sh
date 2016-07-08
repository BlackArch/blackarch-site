cat common/start-blackarch-install

cat <<\EOF
    <!-- Page Content -->
    <div class="container result ">
        <!-- Page Heading/Breadcrumbs -->
         <div class="row">
            <div class="col-lg-12">
            	<div class="page-header page-header-title">
	                <h1>Installation tutoriel</h1> <h2>How to install blackarch</h2>
                </div>
                <ol class="breadcrumb">
                    <li><a class=home href="index.html">Home</a>
                    </li>
                     <li><a class=guide href="guide.html">guide</a></li>
                    <li class="active">blackarch-install</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
        <!-- Content Row -->
        <div class="list-group-item row row-header-title">
            <!-- Content Column -->
            <div id=tutobi class="col-md-12">
            <p>
        	This tutoriel will show you how to install the netinstall of Blackarch. It was made on VirtualBox but it can be reproduice on a real device, the command are similar. It's destined to the beginner.
        	</p>
        	<p>
        	We suppose you already burn the iso into  a USB or DVD and you are ready for the installation. The boot shall display something similar as the following screen (select the first entry)
     		</p>
        	<img src="images/bl-install/1.png" alt="1">
        	<p>
        	Wait the end of the load, until the login prompt. the login is <i class=blgreen>root</i> and the password <i class=blgreen>blackarch</i>
        	</p>
        	<img src="images/bl-install/2.png" alt="2">
        	<p>
        	Just write the command blackarch-install for start the install script, if your keyboard is not base on the us qwerty, you may want first to setup the right keymap, if that is the case, use the command loadkeys (exemple if you have a keyboard French azerty, then write loadkeys fr)
        	</p>
        	<img src="images/bl-install/3.png" alt="3">
        	<p>
        	It's recommanded for new users to select the option 1 "pacman", blackman is similar to pacman but instead to install the requested package, it will get the source code and make the build from the scratch (as emerge can do)
        	</p>
        	<img src="images/bl-install/4.png" alt="4">
   			<p>
        	Select the option 1 if you know what keymap you are using (otherwise you may consult the list with the option 2)
        	</p>
        	<img src="images/bl-install/5.png" alt="5">
      		<p>
        	Write the keymap to use (mostly, the 2 letter of your country code, for exemple, a French azerty keyboard it is <i class=blyellow>fr</i>
      		</p>
        	<img src="images/bl-install/6.png" alt="6">
     		<p>
      		The hostname is basically the name you want to give to your computer, on your local network, it will resolv as the name given (just give the name you want)
      		</p>
      		<img src="images/bl-install/7.png" alt="7">
      		<p>
      		At this step, it will show the available network interface detected, it's recommanded for the netinstall to connect your pc with an ethernet cable for avoid any problem (in case you must stick on the wifi, consult the arch wiki about wpa_supplicant)
      		</p>
      		<img src="images/bl-install/8.png" alt="8">
      		<p>
      		Mostly the DHCP will do for setup the connection information (otherwise you should know what to set and use the manual option)
      		</p>
      		<img src="images/bl-install/9.png" alt="9">
      		<p>
      		The repository will now sync and get the last update available, wait a moment
      		</p>
      		<img src="images/bl-install/10.png" alt="10">
      		<p>
      		Once the update finish, the list of the storage device available will show, choice the one where you wish to install Blackarch
      		</p>
      		<img src="images/bl-install/11.png" alt="11">
      		<p>
			Select <i class=blyellow>y</i> when the script will ask you if you want to create your partition with <i class=blgreen>cfdisk</i>
			</p>
      		<img src="images/bl-install/12.png" alt="12">
			<p>
			If your storage device already get a label type, you won't see this, otherwise set it to <i class=blyellow>dos</i>
			</p>
			<img src="images/bl-install/13.png" alt="13">
			<p>
			You have now to set the partition, the exemple given is a basic one and should work in most of the case, you will need to create 3 partitions, let's start with the first one, boot
			</p>
			<img src="images/bl-install/14.png" alt="14">
			<p>
			Using the arrow, go to <i class=blyellow>New</i>, push enter and write <i class=blyellow>500M</i>, it's enough for most of the user since you won't have more than 3 differents kernel at the same time.
			</p>
			<img src="images/bl-install/15.png" alt="15">
			<p>
			Select <i class=blyellow>primary</i> and push enter
			</p>
			<img src="images/bl-install/16.png" alt="16">
			<p>
			You need for this partition, to make it Bootable, go to the option <i class=blyellow>Bootable</i> and push enter, the * should appear as on the screen, after, go for the second partition, push the down arrow for select the free space then select <i class=blyellow>New</i>
			</p>
			<img src="images/bl-install/17.png" alt="17">
			<p>
			This will be our swap partition, push enter and write this time <i class=blyellow>512M</i>, push enter again and select <i class=blyellow>primary</i> as early
			</p>
			<img src="images/bl-install/18.png" alt="18">
			<p>
			You need for this partition a different type one, using the arrow, go to <i class=blyellow>Type</i>, push enter. A list will be displayed.
			</p>
			<p>
			Select <i class=blyellow>Linux swap, solaris</i> push enter and let's go for the last partition. Same process, as previously select the last free space in green, go to <i class=blyellow>New</i> and push enter. This time you don't need to write anything, we want to take all the space available, push enter twice.
			</p>
			<img src="images/bl-install/20.png" alt="20">
			<p>
			Before to quit <i class=blgreen>cfdisk</i> you must save this partition table. Go to <i class=blyellow>Write</i>, push enter, it will ask you a confirmation, write <i class=blyellow>yes</i>, push enter and you may now exit.
			</p>
			<img src="images/bl-install/20.png" alt="20">
			<p>
			You have the choice to full encrypt with <i class=blgreen>LUKS</i> your root partition or no, it's recommanded to set <i class=blyellow>y</i> as your data may be sensitive and you want to keep it private from anyone (in case your computer get stolen or in the hands of some agency...)
			</p>
			<img src="images/bl-install/21.png" alt="21">
			<p>
			The filesystem for each of those partition must be defined, first, boot will be <i class=blyellow>/dev/sda1</i> and choice <i class=blyellow>ext4</i> for the filesystem, second partition will be the root, write <i class=blyellow>/dev/sda3</i> and choice <i class=blyellow>ext4</i> as filesystem. The last will be the swap, write <i class=blyellow>/dev/sda2</i>.
			</p>
			<img src="images/bl-install/22.png" alt="22">
			<p>
			The script will after ask you 3 times to confirm, the last must be confirm with <i class=blyellow>YES</i> (caps letter required).
			</p>
			<p>
			If you have made the choice for the full encrypted root partition, you will have to enter the desired password for uncrypt your data
		    </p>
		    <img src="images/bl-install/25.png" alt="26">
			<p>
			Now the script will download the necessary package for your system, it will take a little time, grab a coffee. Once this task done, you will have to set the password for the root account
			</p>
		    <p>
			You need now to set the password of the root account
            </p>
			<img src="images/bl-install/28.png" alt="28">
    	    <p>
            Next, you will have to create an user for your system and as well, his password (which will not have the permission root), it's recommanded to create one
            </p>
            <img src="images/bl-install/29.png" alt="29">
            <p>
            Once the user created, when the script ask you to choice a mirror, just push enter (you can later one set a mirror near your location).
            </p>
            <img src="images/bl-install/30.png" alt="30">
            <p>
            The script will now ask you if you want a X display (graphical environment, a desktop), before to set <i class=blyellow>y</i>, make sure nobody is looking at your screen, this is very important
            </p>
            <img src="images/bl-install/31.png" alt="31">
            <p>
            You are almost at the end, the installer will ask you if you want the linux tools package (recommanded) and for finish, the virutalbox tools (optional).
            </p>
            <img src="images/bl-install/33.png" alt="33">
            <p>
            If you ever wonder what the meaning of that, in a word, "Joke" made from the dev, in other words, this mean the end of the installation. You can now reboot and access to your new Blackarch system.
            </p>
            <img src="images/bl-install/34.png" alt="34">
            <p>
            If you made the choice for an encrypt root partition, it will spawn on each boot, a prompt requesting the password for uncrypt your system
       		</p>
       		<img src="images/bl-install/35.png" alt="35">
       		<p>
       		Enjoy your system and remember, the developer of blackarch are volontary, all the work provided is free and any work are made from their free time. Everything is made to maintain as possible, update and secure Blackarch, you can help us by making a <a class=donate href="donate.html" title="Donate to Blackarch">donate</a> which will be entirely using for the project.
       		</p>
            </div>
       	</div>
        <!-- /.row -->
EOF

cat common/end
