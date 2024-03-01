#!/bin/bash

# Function to install Ansible
install_ansible() {
    echo "Installing Ansible..."
    if [[ $(uname) == "Darwin" ]]; then
        brew install ansible
    elif [[ -f /etc/os-release && $(grep -oP '(?<=^ID=).+' /etc/os-release) == "ubuntu" ]]; then
        sudo apt update
        sudo apt install -y software-properties-common
        sudo apt-add-repository --yes --update ppa:ansible/ansible
        sudo apt install -y ansible
    else
        echo "Unsupported OS. Please install Ansible manually."
        exit 1
    fi
}

# Install Ansible if not already installed
if ! command -v ansible &> /dev/null; then
    install_ansible
fi

# Run Ansible playbook
echo "Running Ansible playbook..."
ansible-playbook -i inventory/ playbook.yml