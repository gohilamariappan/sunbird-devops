#!/bin/sh
# Build script
# set -o errexit

ansible-playbook --version
ansible-playbook -i ansible/inventories/${TARGET_ENV} ansible/deploy.yml -vv --tags "stack-monitor" --vault-password-file /run/secrets/vault-pass
