# Dotfiles

Configuration files for zsh, tmux, i3, picom, polybar and utility scripts

## Installation

### Using Ansible (Recommended)

For automated installation:

```bash
cd ansible
ansible-playbook install.yml
```

See [ansible/README.md](ansible/README.md) for more details.

### Manual Installation

You can also use the provided Makefile for specific components:

```bash
# Install raise-terminal
make install-raise-terminal
```

## Contents

- ZSH configuration (.zshrc)
- Tmux configuration (.tmux.conf)
- i3 window manager configuration
- picom compositor configuration 
- polybar configuration
- raise-terminal utilities
- Various utility scripts
