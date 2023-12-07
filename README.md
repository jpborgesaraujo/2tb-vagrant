Esse trabalho vai utilizar a topologia de rede estrela pelo fato que todos os containers vão se comunicar com a vm de forma separada.

Divisão de rede: rede do servidor:192.168.14.0/24. Sub-rede da maquina virtual:192.168.15.0/24. Sub-rede para os Contêineres do Docker: entre 192.168.16.0/24 é 192.168.25.0/24.

O DHCP (Dynamic Host Configuration Protocol), que nada mais é do que um provedor que faz com que as máquinas dentro de determinada rede consigam obter um endereço de IP de maneira automática, ele vai ser implantado dentro da vm como imagem para depois de rodar ser chamado de contêiner.

O DNS converte a solicitação de um site que está em palavras para o IP do site solicitado.

O servidor web Apache e um software que permite a visualização de páginas da internet.

O Protocolo de Transferência de Arquivos (FTP) é um método para baixar e mover dados entre computadores. Ele utiliza conexões TCP/IP para permitir que usuários com permissão possam enviar e baixar arquivos de servidores FTP.

O FTP permite a transferência de arquivos, ele e um método que permite baixar e mover dados entre computadores, ele usa a conexão tcp/ip ele faz com que usuários que tem permissões acessem e baixem arquivos de servidores FTP.

O primeiro passo e criar uma vm básica depois faz o provisionamento da imagem do DHCP, após isso e feito a definição de porta da imagem, e utilizado um comando para iniciar a imagem é depois disso ela se torna um contêiner, depois disso e inserido um arquivo dentro dele, esse arquivo contém as configurações do contêiner.

Esse passo se repete para o: DNS, SERVIDOR WEB APACHE, FTP e NFS. passo a passo para utilizar o meu vagrantfile: Clone o repositório “2tb-vagrant” em sua máquina.

#bash git clone < https://github.com/jpborgesaraujo/2tb-vagrant.git > cd <2tb-vagrant>
#Inicie as máquinas virtuais usando o Vagrant. vagrant up
#Após a criação das VMs, utilize o seguinte comando para se conectar a VM desejada( vagrant ssh vm1 ).





