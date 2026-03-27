#!/usr/bin/env bash
set -euo pipefail

# Let's get local. Like... where this script lives.
cd "$(dirname "$0")"

export ANSIBLE_CONFIG="$PWD/ansible.cfg"

# 1) Install collections (once)
ansible-galaxy collection install -r collections/requirements.yml

# 2) Run root-only tasks (will prompt for sudo once)
ansible-playbook playbooks/01-package-install-sudo.yml --ask-become-pass

# 3) Run user-level tasks
ansible-playbook playbooks/02-config-env.yml