apt update
apt install -y git ansible sudo vim
cd ~ && git clone https://github.com/Luca-Lin/ansible-web-server-debian.git
mv ~/ansible-web-server-debian/ansible /etc/ansible
ansible-galaxy install geerlingguy.mysql
ansible-playbook -i /etc/ansible/hosts /etc/ansible/web-server.yml

curl -sL https://deb.nodesource.com/setup_18.x | bash -
apt install -y nodejs
corepack enable

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

sudo mv composer.phar /usr/local/bin/composer