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
     		<div class=info>
     		<i class="fa fa-info-circle" aria-hidden="true"></i>
        	<p>If you attempt to install BlackArch on VirtualBox, make sure to choice the right ISO. Check if your motherboard support the virtualisation, if not, you must use the 32 bits ISO, otherwise, it can support the 64 bits as the 32 bits. Qemu with KVM was successfully tested and can be use instead of VirtualBox</p>
        	</div>
        	<img src="images/bl-install/1.png" alt="1">
        	<hr>
        	<p>
        	Wait until the login prompt appears, requesting the <i class=blgreen>Blackarch login</i>. The default BlackArch Linux credentials are
        	</p>
			<div class=info>
     		<i class="fa fa-info-circle" aria-hidden="true"></i>
     		<p>Login : root<br>
     		   Password : blackarch
     		</p>
     		</div>
      		<hr>
        	<p>
        	For start the installation, you must execute the Blackarch install script. In order to avoid any problem that can cost you to restart the installation from the beginning, make sure to have internet available on the machine where you want to install Blackarch. You can list the available network interface with the command <i class=green>ifconfig</i>. If you want or have only the wifi available as option, you may read the arch wiki to know how to settings a wireless connection. If your keyboard differ from the default one, the <i class=blgreen>qwerty us</i>,
        	you can set the keymap corresponding to your language / country.
        	The command <i class=blyellow>loadkeys</i> following the 2 letters of your country code. Execute the command <i class=blyellow>blackarch-install</i> to start the Blackarch install
        	</p>
        	<div class=info>
     		<i class="fa fa-info-circle" aria-hidden="true"></i>
     		<p>Along this tutorial, you may be in the need to execute some shell command while the script is running, you can do it at any time without the need to stop it by simply switch of <span class=blgreen>tty</span> by pressing simultaneously <span class=blyellow>ctrl + alt + f2</span> (f1 is the default tty where you have run the <span class=blyellow>blackarch-install</span> script (if you did not execute it in another tty...), f2, f3, f4, f5 or f6 will bring a new tty where you can execute any command you may need. This is just a tips in case you didn't know)</p>
     		</div>

        	<img src="images/bl-install/3.png" alt="3">
        	<hr>
        	<p>
        	3 options should now be displayed
        	</p>
        	<span class=sb>1. Install from repository using pacman</span> <p> This is the recommanded option to select for the netinstall iso, it will fetch the required package online trough the different base arch repository and the blackarch repo as well.</p>
        	<span class=sb>2. Install from Live-ISO</span> <p> If you have download the live ISO (4go<) instead to download from internet the needed package, you can use it as source for the install of Blackarch. You will not need internet for during all the process, however, in order to have a update system, you should after the install, once you reach your install environment start a general update using <i class=blyellow>pacman</i>  .</p>
        	<span class=sb>3. Install from sources using blackman</span> <p> This is not a recommanded option for beginner, instead of fetching the prebuild package as pacman do, this will get the sources code and make the build in your machine. It's similar of emerge available Gentoo system (blackman simply build from source, emerge is infinitively more advanced and offer a ton of features)</p>
        	<img src="images/bl-install/4.png" alt="4">
        	<hr>
   			<p>
        	You have now to select the <i class=blgreen>keymap</i> wished, if you have a qwerty based keyboard, you can stick with the <i class=blgreen>us</i> keycode, however, it may be not always the case. If you are unsure, you may <i class=blgreen>List available keymaps</i> on Blackarch by selecting 2.
            Most of the time, the english country code is used : For a french azerty, the keymap will be <i class=blgreen>fr</i>, for a spanish <i class=blgreen>es</i> etc... If you know the keymap, set 1
        	</p>
        	<img src="images/bl-install/5.png" alt="5">
        	<hr>
      		<p>
        	You have to writer the keymap as explained above
      		</p>
        	<img src="images/bl-install/6.png" alt="6">
        	<hr>
     		<p>
      		The hostname is basically the name you want to give to your computer on your local network. It will resolve as the name given. You may choice whatever you like and this can be change any time later by editing the <i class=blyellow>/etc/hostname</i> file.
      		</p>
      		<img src="images/bl-install/7.png" alt="7">
      		<hr>
      		<p>
			A list of the available network interface will be displayed, as explained earlier, you should select your ethernet interface if possible, the script doesn't provide any support for the wifi. It's still possible to use the wifi but you will have to setup it by yourself.
      		</p>
      		<img src="images/bl-install/8.png" alt="8">
      		<hr>
      		<span class=sb>1. Auto DHCP (use this if your work in the kitchen)</span> <p> The easy and recommended way to setup automatically your network information. Select it and let do the magic work for you.</p>
      		<span class=sb>2. Manual (use this if you are 1337)</span> <p> If you choice the manual way, you will have to know the information of your network (as your gateway, broadcast, mask...)</p>
      		<span class=sb>3. Skip (use this if you are already connected)</span> <p> In case your network interface is already set and can fetch internet, use this option.</p>
      		<div class=info>
     		<i class="fa fa-info-circle" aria-hidden="true"></i>
     		In some case involving, for example, a virtual environment as VirtualBox or Qemu, some rules of your firewall may reject the ICMP protocol witch denied the <span class=blyellow>ping</span> answer command and will block the install at this step since the script will exit, thinking your network interface is misconfigured. You can solve by this problem by editing the script located in <span class=blgreen>/usr/bin/blackarch-install</span> at the line 545 witch start as

     		<span class=blgreen>if ! ping -c 1 github.com > /dev/null 2>&1</span> until the next fi (line 548), you have to comment each line of the block condition or remove it. Once the edit made and save, run the <span class=blyellow>blackarch-install</span> and repeat the install.
     	    </div>

      		<img src="images/bl-install/9.png" alt="9">
      		<hr>
      		<p>
      		Pacman will now update each repo, download and install some basic system package, needed for the next step of the Blackarch install. If you have low speed connection, it can take a certain, go grab a coffee.
      		</p>
      		<img src="images/bl-install/10.png" alt="10">
      		<hr>
      		<p>Once the install of the basic system done, you will have to set the partition on the device storage where Blackarch will be installed. You will have to choice between 2 to 3 partition</p>
      		<div class=info>
     		<i class="fa fa-info-circle" aria-hidden="true"></i>
     		<p>1) Boot partition</p>
     		<p>2) Root partition</p>
     		<p>3) Swap partition *</p>
     		<p>* The swap partition is optional and can be avoid on a virtual system. It's still recommended to make a small one for avoid any crash due to a potential problem with your ram.</p>
     		</div>

			<p>In case more than 2 device get listed and you are not sure witch is the right one you want to use for the install system, you can use <i class=blyellow>fdisk</i> for display the size of the target device, for exemple, if you have sda listed and want to know the size of it and optionaly, the filesystem if any, enter
			<i class=blyellow>fdisk -l -o device,size /dev/sda</i></p>

      		<img src="images/bl-install/11.png" alt="11">
      		<hr>
      		<p>
			Select <i class=blyellow>y</i> when the script will ask you if you want to create your partition with <i class=blgreen>cfdisk</i>, selecting <i class=blyellow>n</i> will stop the install.
			</p>
      		<img src="images/bl-install/12.png" alt="12">
      		<hr>
			<p>
			If your storage device already got a label type, you won't see this, otherwise set it to <i class=blgreen>dos</i>.
			</p>
			<img src="images/bl-install/13.png" alt="13">
			<hr>
			<p>
            You have now to set the partitions. The example given is a basic one and should work in most of the cases. You will need to create at least 2 partitions (boot and root) but we will use 3 in this example including the swap partition. Let's start with the first one, boot.
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
			You need to mark this partition as bootable. Go to the option <i class=blgreen>bootable</i> and press enter. The * should appear as on the screen, afterwards go for the second partition, press the down arrow to select the free space then select <i class=blgreen>New</i>.
			</p>
			<img src="images/bl-install/17.png" alt="17">
			<hr>
			<p>
			This will be our swap partition. Press enter and write this time <i class=blyellow>512M</i>. Press enter again and select <i class=blgreen>primary</i> as early.
			</p>
			<img src="images/bl-install/18.png" alt="18">
			<hr>
			<p>
			For this partition you need a different type. Using the arrow, go to <i class=blgreenType</i> and press enter. A list will be displayed.
			</p>
			<p>
			Select <i class=blyellow>Linux swap, solaris</i> and press enter. Let's go for the last partition. Same process, as previously select the last free space in green, go to <i class=blyellow>New</i> and press enter. This time you don't need to write anything. We want to take all the free space available. Simply press enter twice.
			</p>
			<img src="images/bl-install/20.png" alt="20">
			<hr>
			<p>
			Before quit <i class=blgreen>cfdisk</i> you must save this partition table. Go to <i class=blgreen>Write</i> and press enter. It will ask you to confirm your changes. Write <i class=blyellow>yes</i> and press enter and you may now exit.
			</p>
			<img src="images/bl-install/20.png" alt="20">
			<hr>
			<p>
			You have the choice to full encrypt with <i class=blgreen>LUKS</i> your root partition. It's recommanded to set <i class=blyellow>y</i> as your data may be sensitive and you want to keep it private from anyone <i>(in case your computer get stolen or is taken by some agency...)</i>. Do not make something too easy as it can be bruteforce, a good and easy password can be to make a little sentence with some number witch sound familiar to you, for example : <i class=blgreen>myredhouseinthecornerof21street</i> or <i class=blgreen>myfirstbeerwasonmy15yearsold</i> ... Only use a uniq password and <b>NEVER use the same password as ROOT or for one user system</b> </p>
			<p>Be aware that in case you forgot the password for unlock your <i class=blgreen>LUKS</i> partition, the data nor the password can be recovered, a good move will be to write down on a white paper the password and hide it somewhere safe. This can save you from trouble in case you can't remember it.</p>
			<div class=info>
     		<i class="fa fa-info-circle" aria-hidden="true"></i>
     		<p>If you have a SSD hard drive, encrypt the data with luks will drastically reduce the lifetime of the device. Encrypt the stored data require a lot of disk writing (uncrypt as well), you can fix this problem by adding <span class=bgreen>root_trim=yes</span> as option in your bootloader.</p>
     		For grub, look for the line of the current used kernel, similar of the following : <span class=blgreen>linux /vmlinuz ...  root=/dev/mapper/ ... root_trim=yes</span> (add it at the end of the line)
     		</div>
			<img src="images/bl-install/21.png" alt="21">
			<hr>
			<p>
			The filesystem for each of those partition must be defined. Ext4 is the default choice since it's the latest made and is very reliable. First, boot will be <i class=blyellow>/dev/sda1</i> and choice <i class=blyellow>ext4</i> for the filesystem, second partition will be the root, write <i class=blyellow>/dev/sda3</i> and choice <i class=blyellow>ext4</i> as filesystem. The last will be the swap, write <i class=blyellow>/dev/sda2</i> or just push enter if you haven't create one.
			</p>
			<img src="images/bl-install/22.png" alt="22">
			<hr>
			<p>
			The script will ask you 3 times to confirm. The last one must be confirmed with <i class=blyellow>YES</i> (caps letter required).
			</p>
			<p>
			<p>If you have made the choice for the full encrypted root partition, you will have to define the password. A prompt asking for it at each boot will be displayed soon after the bootloader.</p>
			<p>When the password will be confirmed, the root partition will immediately be encrypt. After the fully encrypt, since the install is not yet finish, and the script haven't retain it in order to make it secure and private, you will see a prompt asking for the password of the newly encrypt partition.</p>
		    <img src="images/bl-install/25.png" alt="26">
		    <hr>
			<p>
            Now the script will download the last necessary packages for your system. This will take a little time depends on the speed of your internet. When the install will finish this task, you will be asked to set the password of your root account.
			</p>
			<img src="images/bl-install/28.png" alt="28">
			<hr>
    	    <p>
            Next, you need to create a normal account, using the root as the only user of your system is wrong and you should never be. There is more than a thousand of reason that you can find in Google, if you ever wonder why.
            </p>
            <img src="images/bl-install/29.png" alt="29">
            <hr>
            <p>
            When the script ask you to choose a mirror, pickup something near your location (or press enter if you don't care).
            </p>
            <img src="images/bl-install/30.png" alt="30">
            <hr>
            <p>
            From now, the last 3 steps before the end are optional.
            The script will now ask you if you want a X display (graphical environment, a desktop), before to set <i class=blyellow>y</i>, make sure nobody is looking at your screen, this is very important.
            </p>
            <img src="images/bl-install/31.png" alt="31">
            <hr>
            <p>
            You will have the choice to download the VirtualBox package, if you are not interested, press <i class=blyellow>n</i> and the last if you want the Blackarch tools, saying <i class=blyellow>y</i> will download more than 1500 tools of the Blackarch repo, you can at any time later on your system fetch those if you have the need of it, this can be pass without regret.
            </p>
            <img src="images/bl-install/33.png" alt="33">
            <hr>
            <p>
            If you ever wonder what the meaning of that is, in a word: Just a "Joke" made from by a dev. In other words, this mean the end of the installation. You can now reboot and access your new Blackarch Linux system.
            </p>1
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
