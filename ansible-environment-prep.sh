 #!/bin/bash
sudo apt update

sudo apt install software-propiertis-common

sudo add-apt-repository --yes --update ppa:ansible/ansible

sudo apt install ansible

ansible-galaxy collection install ansible.windows
