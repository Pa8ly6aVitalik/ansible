##Доступ через SSH под ключу##
apt-get install ssh
systemctl enable sshd
systemctl start sshd

##Перенос публичного ключа с сервера##
scp /root/.ssh/manager.pub user@192.168.1.66:/home/user
mkdir /root/.ssh
touch /root/.ssh/authorized_keys
chmod 0600 /root/.ssh/authorized_keys
cat /home/user/manager.pub >> /root/.ssh/authorized_keys 


apt-get install ansible
cat /etc/ansible/hosts >>

[all:vars]
ansible_user=root

[local]
10.10.3.77

ssh-keygen -t ed25519 -f ~/.ssh/manager

eval `ssh-agent`
ssh-add ~/.ssh/manager

mkdir -p /etc/ansible/playbooks

##Клиент
apt-get install python python-module-yaml python-module-jinja2 python-modules-json python-modules-distutils

chkconfig sshd on
service sshd start

systemctl enable sshd.service
systemctl start sshd.service

nano /etc/ssh/sshd_config
PermitRootLogin=yes
--------------------------------

##посмотреть доступность машин в категории
ansible -m ping locallinux



Файл: /etc/ansible/playbooks/repo.yml
- hosts: local
  remote_user: root
  tasks: 
  - name: Remove all repositories
    shell: apt-repo rm all
  - name: Add official mirror
    shell: apt-repo add http://10.10.3.77/repo/p8
  - name: Add official mirror with arepo
    shell: apt-repo add 'rpm http://10.10.3.77/repo/p8 x86_64-i586 classic'
  - name: Add extra repository 
    shell: apt-repo add 'rpm http://10.10.3.77/repo/extra x86_64 extra'


#Запуск playbook с лимитированием на один host
ansible-playbook example-simple-playbook.yml --limit host1
