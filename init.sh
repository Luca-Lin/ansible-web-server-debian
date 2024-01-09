apt update
apt install -y git ansible sudo
cd ~ && git clone https://github.com/Luca-Lin/ansible-web-server-debian.git
mv ~/ansible-web-server-debian/ansible /etc/ansible
ansible-galaxy install geerlingguy.mysql
ansible-playbook -i /etc/ansible/hosts /etc/ansible/web-server.yml