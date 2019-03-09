wget -c https://launchpad.net/~chris-lea/+archive/ubuntu/redis-server/+build/5455425/+files/redis-tools_2.8.4-1chl1~raring1_amd64.deb
sudo dpkg -i redis-tools_2.8.4-1chl1~raring1_amd64.deb
wget -c https://launchpad.net/~chris-lea/+archive/ubuntu/redis-server/+build/5455425/+files/redis-server_2.8.4-1chl1~raring1_amd64.deb
sudo dpkg -i redis-server_2.8.4-1chl1~raring1_amd64.deb

sudo service redis-server start
sudo service redis-server status
sudo sysctl vm.overcommit_memory=1
sudo  service redis-server restart
