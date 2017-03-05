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
	 <div class="panel panel-default text-left">
       <div class=panel-heading>
            <b>How to</b>
        </div>
		<div class=list-group-item>
            <hr>
            <p>
        	This tutorial will show you how to install Blackarch Linux using the ISO and the blackarch-installer. This tutorial uses VirtualBox, but you can also use other software if you prefer to virtualize.
        	</p>
        	<p>
        	We assume you have already burned the iso onto a USB or DVD and you are ready for the installation. When you boot to the image it should display something similar to the following screen. Select your architecture and press enter. [Example: Blackarch Linux (x86_64) for 64bit]
     		</p>
     		<div class=info>
     		<i class="fa fa-info-circle" aria-hidden="true"></i>
        	<p>If you want to install BlackArch using VirtualBox, make sure to choose the right ISO. Check if your hardware supports virtualization. If so enable it in your UEFI/BIOS settings. If not, you must use the 32 bit ISO. Qemu with KVM was successfully tested and can be used instead of VirtualBox</p>
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
        	To start the installation, you must execute the Blackarch install script. In order to avoid any problems that can cause you to restart the installation, make sure to have internet available on the machine where you want to install Blackarch. You can list the available network interfaces with the command <i class=blgreen>ip a</i>. If you want or only have wifi available as an option, you may read the arch wiki to know how to setup a wireless connection.(ie: wifi-menu/netctl) If your keyboard differs from the default one, <i class=blgreen>qwerty us</i>,
        	you can set the keymap corresponding to your language / country.
        	For example, enter the command <i class=blyellow>loadkeys</i> following the 2 letters of your country code. Execute the command <i class=blyellow>blackarch-install</i> to start the Blackarch install script.
        	</p>
        	<div class=info>
     		<i class="fa fa-info-circle" aria-hidden="true"></i>
     		<p>Throughout this tutorial, you may want to execute some shell commands while the script is running. You can do it at any time without the need to stop it by simply switching <span class=blgreen>tty's</span> by pressing these keys simultaneously <span class=blyellow>ctrl + alt + f2</span> (f1 is the default tty where you ran the <span class=blyellow>blackarch-install</span> script (if you did not execute it in another tty...), f2, f3, f4, f5 or f6 will bring a new tty where you can execute any command you may need. This is just a tip in case you didn't know)</p>
     		</div>

        	<img src="images/bl-install/3.png" alt="3">
        	<hr>
        	<p>
        	3 options should now be displayed
        	</p>
        	<span class=sb>1. Install from repository using pacman</span> <p> This is the recommended option to select for the netinstall iso, it
will fetch the required packages from official arch repositories and the blackarch repositories as well.</p>
        	<span class=sb>2. Install from Live-ISO</span> <p> If you downloaded the live ISO. If you choose this option you will not need internet during the install process. However, in order to have an updated system, after the installation has finished, once you reach your install environment (after you boot into the fresh install) start a general update using <i class=blyellow>pacman -Syyu</i> .</p>
        	<span class=sb>3. Install from source using blackman</span> <p> This is not a recommended option for beginners, instead of fetching the
prebuilt package from a repository as pacman does, this will get the source code and compile from source. It's similar to emerge available on a Gentoo system (blackman simply builds from source, emerge is infinitively more advanced and offers a ton of features)</p>
        	<img src="images/bl-install/4.png" alt="4">
        	<hr>
   			<p>
        	You now have to select the <i class=blgreen>keymap</i> you want. If you have a qwerty based keyboard, you can stick with the <i class=blgreen>us</i> keycode, however, this may be not always be the case. If you are unsure, you may <i class=blgreen>List available keymaps</i> on Blackarch by selecting 2.
            Most of the time, the english country code is used. For a french azerty, the keymap will be <i class=blgreen>fr</i>, for a spanish <i class=blgreen>es</i> etc... If you know the keymap, set 1
        	</p>
        	<img src="images/bl-install/5.png" alt="5">
        	<hr>
      		<p>
        	You have to write the keymap as explained above
      		</p>
        	<img src="images/bl-install/6.png" alt="6">
        	<hr>
     		<p>
      		The hostname is basically the name you want to give to your computer on your local network. It will resolve as the name given. You may choose whatever you like and this can be changed at any time by editing the <i class=blyellow>/etc/hostname</i> file.
      		</p>
      		<img src="images/bl-install/7.png" alt="7">
      		<hr>
      		<p>
			A list of the available network interfaces will be displayed. As explained earlier, you should select your ethernet interface if possible, the script doesn't provide any support for wifi. It's still possible to use wifi, but you will have to set it up by yourself.
      		</p>
      		<img src="images/bl-install/8.png" alt="8">
      		<hr>
      		<span class=sb>1. Auto DHCP (use this if you work in the kitchen)</span> <p> The easy and recommended way to automatically setup your network information. (This will request/lease a local IP from your dhcp server/router for your device.)</p>
      		<span class=sb>2. Manual (use this if you are 1337)</span> <p> If you choose the manual way, you will have to know the information of your network (your gateway, LAN IP address, subnet mask, etc...)</p>
      		<span class=sb>3. Skip (use this if you are already connected)</span> <p> In case your network interface is already setup and can reach the internet, use this option.</p>
      		<div class=info>
     		<i class="fa fa-info-circle" aria-hidden="true"></i>
     		In some cases involving, a virtual environment such as VirtualBox or Qemu, some rules in your firewall may drop ICMP, which will deny the <span class=blyellow>ping</span> and will block the install at this step since the script will exit, thinking your network interface is misconfigured. You can solve by this problem by editing the script located in <span class=blgreen>/usr/bin/blackarch-install</span> at the line 545 witch start as

     		<span class=blgreen>if ! ping -c 1 github.com > /dev/null 2>&1</span> until the next fi (line 548), you have to comment each line of the block condition or remove it. Once the edit made and save, run the <span class=blyellow>blackarch-install</span> and repeat the install.
     	    </div>

      		<img src="images/bl-install/9.png" alt="9">
      		<hr>
      		<p>
      		Pacman will now update each repo, download and install some basic system packages needed for the next step of the Blackarch install. If
you have a slow download speed, this can take some time. Go grab a coffee!
      		</p>
      		<img src="images/bl-install/10.png" alt="10">
      		<hr>
      		<p>Once the script is done getting things ready, you will have to setup partitions on the device where Blackarch will be installed. You
will have to choose between having 2 or 3 partitions</p>
      		<div class=info>
     		<i class="fa fa-info-circle" aria-hidden="true"></i>
     		<p>1) Boot partition</p>
     		<p>2) Root partition</p>
     		<p>3) Swap partition *</p>
     		<p>* The swap partition is optional and can be avoided on a virtual machine. It's still recommended to make a small one to avoid any crash due to a potential problem with your ram.</p>
     		</div>

			<div>In case more than 2 devices get listed and you are not sure which is the right one you want to install to, you can use <i class=blyellow>fdisk</i> to display the size of the target device, for exemple, if you have sda listed and want to know the size of it and optionally, the filesystem if any, enter
			<i class=blyellow>fdisk -l -o device,size /dev/sda</i></div>

      		<img src="images/bl-install/11.png" alt="11">
      		<hr>
      		<div>
			Select <i class=blyellow>y</i> when the script asks you if you want to create your partition with <i class=blgreen>cfdisk</i>, selecting <i class=blyellow>n</i> will stop the install.
			</div>
      		<img src="images/bl-install/12.png" alt="12">
      		<hr>
			<div>
			If your storage device already has a label type, you won't see this, otherwise set it to <i class=blgreen>dos</i>.
			</div>
			<img src="images/bl-install/13.png" alt="13">
			<hr>
			<p>
            You now have to setup the partitions. The example given is a basic one and should work in most cases. You will need to create at least 2 partitions (boot and root) but we will use 3 in this example including the swap partition. Let's start with the first one, boot.
			</p>
			<img src="images/bl-install/14.png" alt="14">
			<hr>
			<div>
			Using the arrow, go to <i class=blyellow>New</i>, push enter and write <i class=blyellow>500M</i>, This is enough space for most users since you won't have more than 3 different kernels at the same time.
			</div>
			<img src="images/bl-install/15.png" alt="15">
			<hr>
			<div>
			Select <i class=blyellow>primary</i> and press enter.
			</div>
			<img src="images/bl-install/16.png" alt="16">
			<hr>
			<div>
			You need to mark this partition as bootable. Go to the option <i class=blgreen>bootable</i> and press enter. The * should appear as on the screen, afterwards go to the second partition, press the down arrow to select the free space then select <i class=blgreen>New</i>.
			</div>
			<img src="images/bl-install/17.png" alt="17">
			<hr>
			<div>
			This will be our swap partition. Press enter and write <i class=blyellow>512M</i>. Press enter again and select <i class=blgreen>primary</i>.
			</div>
			<img src="images/bl-install/18.png" alt="18">
			<hr>
			<div>
			For this partition you need a different type. Using the arrow, go to <i class=blgreen>Type</i> and press enter. A list will be displayed.
			</div>
			<div>
			Select <i class=blyellow>Linux swap, solaris</i> and press enter. Let's go for the last partition. Same process, as we did earlier, select the free space in green, go to <i class=blyellow>New</i> and press enter. This time you don't need to write anything. We want to take all the free space available. Simply press enter twice.
			</div>
			<img src="images/bl-install/20.png" alt="20">
			<hr>
			<div>
			Before you quit <i class=blgreen>cfdisk</i> you must save this partition table. Go to <i class=blgreen>Write</i> and press enter. It will ask you to confirm your changes. Write <i class=blyellow>yes</i> and press enter and you may now quit.
			</div>
			<img src="images/bl-install/20.png" alt="20">
			<hr>
			<div>
			You have the choice to fully encrypt your root partition with <i class=blgreen>LUKS</i>. It's recommended to set <i class=blyellow>y</i> as your data may be sensitive and you want to keep it private from anyone <i>(in case your computer gets stolen or is taken by some agency...)</i>. Do not make something too easy as it can be bruteforced. </div>
			<div>Be aware that if you forget the password to unlock your <i class=blgreen>LUKS</i> partition, the data nor the password can be recovered, a good move would be to write down the password on a piece of paper, and hide it somewhere safe. This can save you from trouble in case you can't remember it.</div>
			<div class=info>
     		<i class="fa fa-info-circle" aria-hidden="true"></i>
     		<div>If you have an SSD, if you encrypt the data with luks it will drastically reduce the lifetime of the SSD. Encrypting the stored data requires a lot of disk writing (uncrypt as well), you can fix this problem by adding <span class=bgreen>root_trim=yes</span> as option in your bootloader.</div>
     		For grub, look for the line of the current used kernel, similar of the following : <span class=blgreen>linux /vmlinuz ...  root=/dev/mapper/ ... root_trim=yes</span> (add it at the end of the line)
     		</div>
			<img src="images/bl-install/21.png" alt="21">
			<hr>
			<p>
			The filesystem for each of those partitions must be defined. Ext4 is the default choice since it's the most recent. First, boot will be <i class=blyellow>/dev/sda1</i> and choose <i class=blyellow>ext4</i> for the filesystem, second partition will be the root, write <i class=blyellow>/dev/sda3</i> and choose <i class=blyellow>ext4</i> as filesystem. The last one will be the swap, write <i class=blyellow>/dev/sda2</i> or just push enter if you haven't created one.
			</p>
			<img src="images/bl-install/22.png" alt="22">
			<hr>
			<div>
			(If you choose to use LUKS) The script will ask you 3 times to confirm. The last one must be confirmed with <i class=blyellow>YES</i> (capital letters required).
			</div>
			<p>If you have chose the full encrypted root option, you will have to define the password. A prompt asking for it at each boot will be displayed soon after the bootloader.</p>
			<p>When you confirm the password, the root partition will immediately be encrypted. After it fully encrypts the partition, the install script needs to mount the device, enter your password again to unclock the root partition so the install script can mount it and complete the installation.</p>
		    <img src="images/bl-install/25.png" alt="26">
		    <hr>
			<p>
            Now the script will download the latest necessary packages for your system. This will take a little time depending on your internet speed. When the install is finished with this task, you will be asked to set the password of your root account.
			</p>
			<img src="images/bl-install/28.png" alt="28">
			<hr>
    	    <p>
            Next, you need to create a normal account, using the root as the only user of your system is wrong and you should never do it.
            </p>
            <img src="images/bl-install/29.png" alt="29">
            <hr>
            <p>
            When the script asks you to choose a mirror, (press enter for the default) You can change this later.
            </p>
            <img src="images/bl-install/30.png" alt="30">
            <hr>
            <p>
            From now on, the last 3 steps before the end are optional.
            The script will now ask you if you want a X display (graphical environment, a desktop), before you type <i class=blyellow>y</i> and press enter, make sure nobody is looking at your screen, this is very important.
            </p>
            <img src="images/bl-install/31.png" alt="31">
            <hr>
            <p>
            You will have the choice to download the VirtualBox guest additions/tools, if you are not interested, press <i class=blyellow>n</i> and hit enter. If you want the Blackarch tools, saying <i class=blyellow>y</i> will download and install more than 1500 tools from the Blackarch repo, you can fetch those later if you want. This is an option that can be skipped.
            </p>
            <img src="images/bl-install/33.png" alt="33">
            <hr>
            <p>
            If you ever wonder what the meaning of that is. It's just a "Joke" made by a developer. In other words, this means that its the end of the installation. You can now reboot and access your new Blackarch Linux system.
            </p>
            <img src="images/bl-install/34.png" alt="34">
            <hr>
            <p>
            If you chose the fully encrypted root option, it will prompt you for your partition's LUKS password on each boot.
       		</p>
       		<img src="images/bl-install/35.png" alt="35">
       		<hr>
       		<p>
       		Enjoy Blackarch Linux, and remember the developers/contributors of BlackArch Linux are volunteers. All the work provided is free and was done in their free time. You can help us by making a <a class=donate href="donate.html" title="Donate to Blackarch">donation</a> which will be used for this project only.
       		</p>
            </div>
       	</div>
        <!-- /.row -->
EOF

cat common/end
