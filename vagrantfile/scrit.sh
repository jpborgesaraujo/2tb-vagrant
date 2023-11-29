sudo docker run -d --name servidor-dhcp -v /vagrant/dhcp/dhcpd.config:/etc/dhcp/ networkboot/dhcpd:latest

sudo docker run -d --name servidor-dns -v /vagrant/dns/:/etc/bind/ -p 30053:53 technitium/dns-server:latest

sudo docker run -d --name servidor-apache -v /vagrant/web/:/usr/local/apache2/htdocs/ -p 8080:80 httpd:2.4

sudo docker run -d --name servidor-ftp -v /home/vagrant:/home/vsftpd -p 20:20 -p 21:21 -p 21100-21110:21100-21110 -e FTP_USER=admin -e FTP_PASS=admin -e PASV_ADDRESS=127.0.0.1 -e PASV_MIN_PORT=21100 -e PASV_MAX_PORT=21110 fauria/vsftpd

sudo docker run -d --name servidor-nfs --net=host d3fk/nfs-client