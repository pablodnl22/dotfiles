# Dotfiles Installation with Ansible

This directory contains Ansible playbooks to automate the installation of dotfiles on your system.

## Prerequisites

- Ansible installed on your system
  ```
  # On Ubuntu/Debian
  sudo apt install ansible
  
  # On Fedora/RHEL
  sudo dnf install ansible
  
  # On Arch Linux
  sudo pacman -S ansible
  ```

## Usage

### Shell Configurations

To copy (not symlink) shell configuration files (.zshrc and .tmux.conf):

```bash
cd ansible
ansible-playbook shell-configs.yml
```

### Window Manager Environment

To install i3 window manager with polybar and picom configurations:

```bash
cd ansible
ansible-playbook i3-config.yml
```

### Complete Installation

To install all dotfiles (creates symlinks):

```bash
cd ansible
ansible-playbook install.yml
```

You can also install specific components using tags:

```bash
# Install only zsh and tmux configs
ansible-playbook install.yml --tags core

# Install only window manager configs (i3, picom, polybar)
ansible-playbook install.yml --tags wm

# Install only utilities
ansible-playbook install.yml --tags utils
```

## What gets installed

The main playbook performs the following:

1. Creates necessary directories in your home folder
2. Creates symlinks to configuration files:
   - ZSH configuration (.zshrc)
   - Tmux configuration (.tmux.conf)
   - i3 window manager configuration
   - picom compositor configuration
   - polybar configuration
   - raise-terminal configuration and desktop file
3. Copies scripts to ~/bin (ensure this is in your PATH)

Individual playbooks:
- **shell-configs.yml**: Copies .zshrc and .tmux.conf to your home directory
- **i3-config.yml**: Sets up a complete window manager environment:
  - i3 window manager configuration and wallpaper
  - polybar configuration for system status bar
  - picom compositor for window effects

## Configuration

You can customize the installation by editing `group_vars/all.yml`:
- Change installation paths
- Toggle which components to install
- Control whether to overwrite existing files

## Notes

- For the main playbook, existing files will be overwritten with symlinks to this repository
- For individual component playbooks, files are copied (changes to the originals won't affect your copies)
- Make sure to keep this repository updated with any changes you make to your configuration 