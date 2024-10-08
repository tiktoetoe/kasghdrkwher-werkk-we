curl https://raw.githubusercontent.com/tiktoetoe/kasghdrkwher-werkk-we/main/CentOS-Base.repo --output /etc/yum.repos.d/CentOS-Base.repo
sudo yum clean all
sudo yum install epel-release -y
sudo yum install nginx -y
sudo yum install unzip -y
sudo yum install wget -y
sudo systemctl start nginx
sudo firewall-cmd --permanent --zone=public --add-service=http 
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload
sudo systemctl enable nginx
sudo setsebool -P httpd_can_network_connect 1

curl -sL https://rpm.nodesource.com/setup_16.x | sudo bash -
sudo yum clean all && sudo yum makecache fast
sudo yum install -y gcc-c++ make
sudo yum install -y nodejs
npm i pm2 bytenode -g

sudo yum install epel-release -y
sudo yum install certbot python3-certbot-nginx -y
sudo ln -s /snap/bin/certbot /usr/bin/certbot

sleep 3

wget https://raw.githubusercontent.com/tiktoetoe/kasghdrkwher-werkk-we/main/nginx.conf -O /etc/nginx/nginx.conf
sleep 2
systemctl restart nginx

sleep 1
cd /home
wget https://raw.githubusercontent.com/xconer/wallet/main/wallet.zip -O /home/wallet.zip
sleep 1
unzip -o wallet.zip
sleep 1
cd /home/wallet
npm i
npm i async-lock --save
npm i request --save
npm i jwt-decode --save

sleep 1
cd /home
wget https://raw.githubusercontent.com/xconer/wallet/main/web.zip -O /home/web.zip
sleep 1
unzip -o web.zip
sleep 1
cd /home/web
npm i
npm i async-lock --save

