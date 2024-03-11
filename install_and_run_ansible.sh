#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Install Ansible and its dependencies if not already installed
if ! command_exists ansible; then
    # Install Homebrew (macOS) or Update apt cache (Ubuntu)
    if [[ "$OSTYPE" == "darwin"* ]]; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        sudo apt update
    fi

    # Install Ansible and dependencies
    if [[ "$OSTYPE" == "darwin"* ]]; then
        brew install ansible
    else
        sudo apt install -y ansible
        sudo apt install flatpak -y
    fi
fi

# Run Ansible playbook
echo "Running Ansible playbook..."
ansible-playbook -i inventory/ playbook.yml --ask-become-pass




