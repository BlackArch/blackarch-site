cat common/start-blackarch-install

cat <<\EOF
    <!-- Page Content -->
    <div class="container result ">
        <!-- Page Heading/Breadcrumbs -->
         <div class="row">
            <div class="col-lg-12">
            	<div class="page-header page-header-title">
	                <h1>Tutorial de instalação</h1> <h2>Como instalar o blackarch</h2>
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
			Este tutorial demonstra a instalação do Blackarch Linux usando uma ISO e o blackarch-installer.Foi usado o VirtualBox mas pode ser instalado em quaquer outro dispositivo.
        	</p>
        	<p>
			Nós partimos do pressuposto que você já gravou a iso dentro de um USB ou um DVD e já está pronto para a instação.A tela de boot deve mostar algo similar a imagem seguinte.Selecione a primeira opção para uma nova instalação.
     		</p>
        	<img src="images/bl-install/1.png" alt="1">
        	<hr>
        	<p>
			Espere até a tela de login aparecer, solicitando o <i class=blgreen>Blackarch login</i>.A credencial padrão BlackArch Linux é
        	</p>
        	<div class=info>
        	<p>Login : <i class=blblue>root</i></p>
        	<p>Password : <i class=blblue>blackarch</i></p>
        	</div>
        	<img src="images/bl-install/2.png" alt="2">
      		<hr>
        	<p>
			Para começar a instalação, é preciso executer um script, o comando é <i class=blyellow>blackarch-install</i>.Se você estiver usando um teclado diferente do padão, <i class=blgreen>qwerty us</i>,
			você pode configurar o keymap de acordo com sua lingua / país.
			O comando é <i class=blgreen>loadkeys</i> seguido das duas letras de seu país, exemplo:
			</p>
        	<div class=info>
        	<p>Francês : <i class=blblue>keymaps fr</i> (azerty keymap)</p>
        	<p>Russo : <i class=blblue>keymaps ru</i> (cyrillic keymap)</p>
        	<p>Espanhol : <i class=blblue>keymaps es</i> (spanish keymap)</p>
        	<p>Brasileiro : <i class=blblue>keymaps br</i> (qwerty-abnt keymap)</p>
        	</div>
        	<img src="images/bl-install/3.png" alt="3">
        	<hr>
        	<p>
			É recomendado para novos usuários selecionar o primeira opção "pacman", blackman é similar ao pacman mas ao invés de instalar os pacotes requisitados ele irá pegar o codigo fonte e construir o pacote (igual ao emerge do Gentoo).
        	</p>
        	<img src="images/bl-install/4.png" alt="4">
        	<hr>
   			<p>
			Selecione a opção 1 se você sabe qual keymap você está usando (caso contrário consulte a lista pela opção 2)..
        	</p>
        	<img src="images/bl-install/5.png" alt="5">
        	<hr>
      		<p>
			Entre com o keymap em uso (normalmente, 2 letras com o codigo do país, por exemplo, o teclado francês azerty deve ser <i class=blyellow>fr</i>).
      		</p>
        	<img src="images/bl-install/6.png" alt="6">
        	<hr>
     		<p>
				O hostname é basicamente o nome que você quer dar ao seu computador para uma rede local (escolha o nome de sua preferência).
      		</p>
      		<img src="images/bl-install/7.png" alt="7">
      		<hr>
      		<p>
				Neste ponto irá aparecer as interfaces de rede detectadas.É recomentado para o netinstall-ISO estar conectado por um cabo ethernet para evitar problemas (no caso do uso de wifi, consultar a arch wiki sobre configuração do wifi).
      		</p>
      		<img src="images/bl-install/8.png" alt="8">
      		<hr>
      		<p>
      		O DHCP irá tomar conta das informações para a conexão (caso contrário você deve saber como configurar manualmente).
      		</p>
      		<img src="images/bl-install/9.png" alt="9">
      		<hr>
      		<p>
      		O repositório irá sincronizar e obter as ultimas atualizações disponiveis.
      		</p>
      		<img src="images/bl-install/10.png" alt="10">
      		<hr>
      		<p>
				Quando a atualização terminar, uma lista de dispositivos de armazenamento disponiveis irá aparecer.Escolha o que você deseja instalar o BlackArch.
				Se mostrar mais de um dispositivo e você não tem certeza qual escolher, use o <i class=blyellow>fdisk</i> para listar a informação de todos os dispositivos, seguindo o exemplo irá mostrar <i class=blgreen>sda</i> como disco ssd e <i class=blgreen>sdb</i> como dispositivo usb.
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
			Selecione <i class=blyellow>y</i> quando o script perguntar se você quer criar uma partição com o <i class=blgreen>cfdisk</i>.
			</p>
      		<img src="images/bl-install/12.png" alt="12">
      		<hr>
			<p>
			Se seu dispositivo já esteja particionado, isto não será necessario, caso contrario configure em <i class=blyellow>dos</i>.
			</p>
			<img src="images/bl-install/13.png" alt="13">
			<hr>
			<p>
				Agora você tem que configurar as partições.No exemplo dado é basicamente um e deve funcionar na maioria dos casos.Você deve criar ao menos duas partições (/boot + /) mas nós usaremos três neste exemplo incluindo a partição swap.Vamos começar com a primeira, boot.
			</p>
			<img src="images/bl-install/14.png" alt="14">
			<hr>
			<p>
			Usnado as setas, vá para <i class=blyellow>New</i>, pressione enter e escreva <i class=blyellow>500M</i>, é o suficiente para para um usuário desde que ele não use mais de três kernels diferentes ao mesmo tempo.
			</p>
			<img src="images/bl-install/15.png" alt="15">
			<hr>
			<p>
			Selecione <i class=blyellow>primary</i> e pressione enter.
			</p>
			<img src="images/bl-install/16.png" alt="16">
			<hr>
			<p>
			Você pode marcar esta partição como bootável, vá na opção <i class=blyellow>bootable</i> e pressione enter.O * deve aparecer na tela, depois vá na segunda partição, usando as setas vá para baixo e selecione o espaço livre e selecione <i class=blyellow>New</i>.
			</p>
			<img src="images/bl-install/17.png" alt="17">
			<hr>
			<p>
			Esta vai ser a partição swap.Pressione enter e escreva <i class=blyellow>512M</i> desta vez.Pressione enter novamente e selecione <i class=blyellow>primary</i>.
			</p>
			<img src="images/bl-install/18.png" alt="18">
			<hr>
			<p>
			Para esta partição você precisa de um tipo diferente.Usando as setas, vá para <i class=blyellow>Type</i> e pressione enter.Uma lista irá aparecer.
			</p>
			<p>
			Selecione <i class=blyellow>Linux swap, solaris</i> e pressione enter.Agora vamos para a ultima partição.O mesmo processo, selecione o ultimo espaço vazio em verde, vá em <i class=blyellow>New</i> e pressione enter.Desta vez não é preciso escrever nada.Nós queremos todo o espaço livre disponivel.Simplesmente pressione enter duas vezes.
			</p>
			<img src="images/bl-install/20.png" alt="20">
			<hr>
			<p>
			Antes de sair do <i class=blgreen>cfdisk</i> você precisa salvar esta partição.Vá para <i class=blyellow>Write</i> e pressione enter.Irá aparecer a pergunta se você quer salvar as mudanças.Escreva <i class=blyellow>yes</i> e pressione enter e agora você pode sair.
			</p>
			<img src="images/bl-install/20.png" alt="20">
			<hr>
			<p>
			Você tem a opção de encriptar o disco inteiro com <i class=blgreen>LUKS</i> na sua partição root.É recomendado escolher <i class=blyellow>y</i> pois seus dados podem ser sensiveis e você quer manter privado (no caso de seu computador ser roubado ou nas mãos de alguma agencia...)
			</p>
			<img src="images/bl-install/21.png" alt="21">
			<hr>
			<p>
			O sistema de arquivos deve ser definido para cada partição.Primeiramente, o boot deve ser <i class=blyellow>/dev/sda1</i> e a escolha <i class=blyellow>ext4</i>, a segunda partição deve ser o root, escreva <i class=blyellow>/dev/sda3</i> e escolha <i class=blyellow>ext4</i> como sistema de arquivo.A ultima deve ser a swap, escreva <i class=blyellow>/dev/sda2</i>.
			</p>
			<img src="images/bl-install/22.png" alt="22">
			<hr>
			<p>
			O script irá perguntar três vezes para a confirmação.A ultima deve ser confirmada com <i class=blyellow>YES</i> (em caps lock).
			</p>
			<p>
			Se você escolheu a opção de total encriptação da partição root, você deve entrar com a senha para descriptografar a partição.
			</p>
		    <img src="images/bl-install/25.png" alt="26">
		    <hr>
			<p>
				Agora o script irá baixar todos os pacotes necessários para seu sistema.Isto pode levar algum tempo (pegue seu café).Uma vez terminado, você pode escolher a senha para sua conta root.
			</p>
		    <p>
			Agora precisa configurar sua senha para a conta root.
            </p>
			<img src="images/bl-install/28.png" alt="28">
			<hr>
    	    <p>
				Depois, você pode criar uma conta normal (é recomendado que você crie uma).
            </p>
            <img src="images/bl-install/29.png" alt="29">
            <hr>
            <p>
				Quando o script pedir para escolhar uma mirror pressione enter (você pode escolher uma mirror mais perto de você depois).
            </p>
            <img src="images/bl-install/30.png" alt="30">
            <hr>
            <p>
				O script vai agora perguntar se você quer um X display (ambiente gráfico, um desktop), depois de escolher <i class=blyellow>y</i>, tenha certeza que ninguém está olhando sua tela, isto é muito importante.
            </p>
            <img src="images/bl-install/31.png" alt="31">
            <hr>
            <p>
				Você está quase no final.O instalador irá perguntar se você quer que as ferramentas do BlackArch Linux sejam instalados (recomendado) e opcionalmente os pacotes do virtualbox.
            </p>
            <img src="images/bl-install/33.png" alt="33">
            <hr>
            <p>
				Se você ainda não entendeu o que é isso, trata-se de uma "piada" feita pelo desenvolvedor.Em outras palavras, significa o final da instalação.Agora você pode reiniciar a máquina e usar seu novo sistema BlackArch Linux.
            </p>
            <img src="images/bl-install/34.png" alt="34">
            <hr>
            <p>
				Se você escolheu a opção de encriptar a partição root, irá aparecer a cada inicialização um pedido de senha para descriptografar o sistema.
       		</p>
       		<img src="images/bl-install/35.png" alt="35">
       		<hr>
       		<p>
				Aproveite seu sistema e lembre-se, o desenvolvimento do BlackArch Linux é voluntario.Todo trabalho é feito de forma gratuita e em tempo livre.Tudo é feito para manter o BlackArch linux atualizado e seguro.Você pode nos ajudar fazendo uma <a class=donate href="donate.html" title="Donate to Blackarch">doação</a> que será interamente usado para o projeto.
       		</p>
            </div>
       	</div>
        <!-- /.row -->
EOF

cat common/end
