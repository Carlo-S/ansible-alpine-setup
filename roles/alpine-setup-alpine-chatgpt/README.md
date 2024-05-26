# setup-alpine

Ansible role to automate the setup of Alpine Linux.

## Requirements

- Ansible 2.9 or later
- Supported Alpine Linux versions: 3.17.2-r0 or later

## Role Variables

Available variables are listed below, along with default values:

```yaml
use_answer_file: ""
create_answer_file: ""
empty_root_password: false
quick_mode: false
answer_file_options: {}

--- first version ---
# setup-alpine Ansible Role

This Ansible role sets up Alpine Linux based on the provided configuration. It integrates multiple roles to perform various setup tasks.

## Dependencies

This role depends on the following roles:
- setup-network
- setup-keymap
- setup-hostname
- setup-interfaces
- setup-dns
- setup-timezone
- setup-proxy
- setup-ntp
- setup-apkrepos
- setup-devd
- setup-user
- setup-sshd
- setup-xen-dom0
- setup-disk
- setup-lbu
- setup-apkcache

## Role Variables

- `use_answer_file`: URL or path to an answer file to use for the installation.
- `create_answer_file`: Path to create an answer file.
- `empty_root_password`: Boolean to set an empty root password.
- `quick_mode`: Boolean to enable quick mode.
- `answer_file_options`: Dictionary of options to populate the answer file template.

## Example Playbook

```yaml
- hosts: all
  roles:
    - role: setup-alpine
      use_answer_file: "http://example.com/answerfile"
      create_answer_file: "/root/answerfile"
      empty_root_password: true
      quick_mode: true
      answer_file_options:
        KEYMAPOPTS: "us us"
        HOSTNAMEOPTS: "alpine"

