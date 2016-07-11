cat common/start-blackarch-install

cat <<\EOF
    <!-- Page Content -->
    <div class="container result ">
        <!-- Page Heading/Breadcrumbs -->
         <div class="row">
            <div class="col-lg-12">
            	<div class="page-header page-header-title">
	                <h1>Installation tutorial</h1> <h2>How to install blackarch</h2>
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
            <hr>
            <p>
        	This tutorial will show you how to install Blackarch Linux using the ISO and the blackarch-installer. It was used on VirtualBox but it can be also used on any other device.
        	</p>
        	<p>
        	We suppose you already burned the iso into a USB or DVD and you are ready for the installation. The boot shall display something similar as the following screen. Select the first entry for a new installation
     		</p>
        	<img src="images/bl-install/1.png" alt="1">
        	<hr>
        	<p>
        	Wait until the login prompt appears, requesting the <i class=blgreen>Blackarch login</i>. The default BlackArch Linux credentials are
        	</p>
        	<div class=info>
        	<p>Login : <i class=blblue>root</i></p>
        	<p>Password : <i class=blblue>blackarch</i></p>
        	</div>
        	<img src="images/bl-install/2.png" alt="2">
      		<hr>
        	<p>
        	For start the installation, you must execute the script, the command to enter is <i class=blyellow>blackarch-install</i>. If your keyboard differ from the default one, <i class=blgreen>qwerty us</i>,
        	you may want to setup the keymap corresponding to your language / country.
        	The command <i class=blgreen>loadkeys</i> following the 2 letters of your country code will do, here few examples
        	</p>
        	<div class=info>
        	<p>French : <i class=blblue>keymaps fr</i> (azerty keymap)</p>
        	<p>Russian : <i class=blblue>keymaps ru</i> (cyrillic keymap)</p>
        	<p>Spanish : <i class=blblue>keymaps es</i> (spanish keymap)</p>
        	</div>
        	<img src="images/bl-install/3.png" alt="3">
        	<hr>
        	<p>
        	It's recommended for new users to select the option 1 "pacman", blackman is similar to pacman but instead to install the requested package it will get the source code and make the build from the scratch (as Gentoo's emerge can do).
        	</p>
        	<img src="images/bl-install/4.png" alt="4">
        	<hr>
   			<p>
        	Select the option 1 if you know what keymap you are using (otherwise you may consult the list with the option 2).
        	</p>
        	<img src="images/bl-install/5.png" alt="5">
        	<hr>
      		<p>
        	Write the keymap to use (mostly, the 2 letter of your country code, for exemple, a French azerty keyboard would be <i class=blyellow>fr</i>).
      		</p>
        	<img src="images/bl-install/6.png" alt="6">
        	<hr>
     		<p>
      		The hostname is basically the name you want to give to your computer on your local network. It will resolve as the name given (just give the name you want).
      		</p>
      		<img src="images/bl-install/7.png" alt="7">
      		<hr>
      		<p>
      		At this point, it will show the available network interface detected. It's recommanded for the netinstall-ISO to connect your device with an ethernet cable to avoid any problems (in case you must stick on the wifi, consult the arch wiki about WiFi setup).
      		</p>
      		<img src="images/bl-install/8.png" alt="8">
      		<hr>
      		<p>
      		The DHCP will care about the network connection information (otherwise you should know what to set and use the manual option).
      		</p>
      		<img src="images/bl-install/9.png" alt="9">
      		<hr>
      		<p>
      		The repository will now sync and get the last update available.
      		</p>
      		<img src="images/bl-install/10.png" alt="10">
      		<hr>
      		<p>
      		Once the update finished, the list of the storage device available will show up. Choose the one where you wish to install BlackArch.
      		In case if the display show more than 1 device and you aren't sure which is the one you should pickup, use <i class=blyellow>fdisk</i>
      		for list the information of all the storage device, the following example will display <i class=blgreen>sda</i> as a ssd disk and <i class=blgreen>sdb</i> as a usb device stoarage
      		</p>
      		<div class=info>
        	<p><i class=blblue>fdisk -l</i></p>
        	<p>Disk /dev/sda: 111.8 GiB, 120034123776 bytes, 234441648 sectors</p>
        	<p>...</p>
        	<p>Disk /dev/sdb: 29.3 GiB, 31474057216 bytes, 61472768 sectors</p>
        	<p>...</p>
        	</div>
      		<img src="images/bl-install/11.png" alt="11">
      		<hr>
      		<p>
			Select <i class=blyellow>y</i> when the script will ask you if you want to create your partition with <i class=blgreen>cfdisk</i>.
			</p>
      		<img src="images/bl-install/12.png" alt="12">
      		<hr>
			<p>
			If your storage device already got a label type, you won't see this, otherwise set it to <i class=blyellow>dos</i>.
			</p>
			<img src="images/bl-install/13.png" alt="13">
			<hr>
			<p>
            You have now to set the partitions. The example given is a basic one and should work in most of the cases. You will need to create at least 2 partitions (/boot + /) but we will use 3 in this example including the swap partition. Let's start with the first one, boot.
			</p>
			<img src="images/bl-install/14.png" alt="14">
			<hr>
			<p>
			Using the arrow, go to <i class=blyellow>New</i>, push enter and write <i class=blyellow>500M</i>, it's enough for most of the user since you won't have more than 3 different kernel at the same time.
			</p>
			<img src="images/bl-install/15.png" alt="15">
			<hr>
			<p>
			Select <i class=blyellow>primary</i> and press enter.
			</p>
			<img src="images/bl-install/16.png" alt="16">
			<hr>
			<p>
			You need to mark this partition as bootable. Go to the option <i class=blyellow>bootable</i> and press enter. The * should appear as on the screen, afterwards go for the second partition, press the down arrow to select the free space then select <i class=blyellow>New</i>.
			</p>
			<img src="images/bl-install/17.png" alt="17">
			<hr>
			<p>
			This will be our swap partition. Press enter and write this time <i class=blyellow>512M</i>. Press enter again and select <i class=blyellow>primary</i> as early.
			</p>
			<img src="images/bl-install/18.png" alt="18">
			<hr>
			<p>
			For this partition you need a different type. Using the arrow, go to <i class=blyellow>Type</i> and press enter. A list will be displayed.
			</p>
			<p>
			Select <i class=blyellow>Linux swap, solaris</i> and press enter. Let's go for the last partition. Same process, as previously select the last free space in green, go to <i class=blyellow>New</i> and press enter. This time you don't need to write anything. We want to take all the free space available. Simply press enter twice.
			</p>
			<img src="images/bl-install/20.png" alt="20">
			<hr>
			<p>
			Before quit <i class=blgreen>cfdisk</i> you must save this partition table. Go to <i class=blyellow>Write</i> and press enter. It will ask you to confirm your changes. Write <i class=blyellow>yes</i> and press enter and you may now exit.
			</p>
			<img src="images/bl-install/20.png" alt="20">
			<hr>
			<p>
			You have the choice to full encrypt with <i class=blgreen>LUKS</i> your root partition. It's recommanded to set <i class=blyellow>y</i> as your data may be sensitive and you want to keep it private from anyone (in case your computer get stolen or in the hands of some agency...).
			</p>
			<img src="images/bl-install/21.png" alt="21">
			<hr>
			<p>
			The filesystem for each of those partition must be defined. First, boot will be <i class=blyellow>/dev/sda1</i> and choice <i class=blyellow>ext4</i> for the filesystem, second partition will be the root, write <i class=blyellow>/dev/sda3</i> and choice <i class=blyellow>ext4</i> as filesystem. The last will be the swap, write <i class=blyellow>/dev/sda2</i>.
			</p>
			<img src="images/bl-install/22.png" alt="22">
			<hr>
			<p>
			The script will ask you 3 times to confirm. The last one must be confirmed with <i class=blyellow>YES</i> (caps letter required).
			</p>
			<p>
			If you have made the choice for the full encrypted root partition, you will have to enter the desired password to decrypt your partition.
		    </p>
		    <img src="images/bl-install/25.png" alt="26">
		    <hr>
			<p>
            Now the script will download all the necessary packages for your system. This will take a little time (grab a coffee). Once this task is done, you will have to set the password for the root account.
			</p>
		    <p>
			You need now to set the password of the root account.
            </p>
			<img src="images/bl-install/28.png" alt="28">
			<hr>
    	    <p>
            Next, you can create a normal user account (It is recommanded to create one).
            </p>
            <img src="images/bl-install/29.png" alt="29">
            <hr>
            <p>
            When the script ask you to choose a mirror  just press enter (you can later set a different mirror near your location).
            </p>
            <img src="images/bl-install/30.png" alt="30">
            <hr>
            <p>
            The script will now ask you if you want a X display (graphical environment, a desktop), before to set <i class=blyellow>y</i>, make sure nobody is looking at your screen, this is very important.
            </p>
            <img src="images/bl-install/31.png" alt="31">
            <hr>
            <p>
            You are almost at the end. The installer will ask you if you want the BlackArch Linux tools to be installed (recommended) and optionally the virutalbox packages.
            </p>
            <img src="images/bl-install/33.png" alt="33">
            <hr>
            <p>
            If you ever wonder what the meaning of that is, in a word: Just a "Joke" made from by a dev. In other words, this mean the end of the installation. You can now reboot and access your new BlackArch Linux system.
            </p>
            <img src="images/bl-install/34.png" alt="34">
            <hr>
            <p>
            If you made the choice for an encrypted root partition, it will spawn on each boot a prompt requesting the password to decrypt your system.
       		</p>
       		<img src="images/bl-install/35.png" alt="35">
       		<hr>
       		<p>
       		Enjoy your system and remember, the developer of BlackArch Linux  are volontary. All the work provided is free and any work are made from their free time. Everything is made to maintain as possible, update and secure Blackarch Linux. You can help us by making a <a class=donate href="donate.html" title="Donate to Blackarch">donate</a> which will be entirely used for this project.
       		</p>
            </div>
       	</div>
        <!-- /.row -->
EOF

cat common/end
