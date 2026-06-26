<div align="center">

# 🌅 dotfiles

**My Linux desktop, tuned to the keystroke.**

A reproducible i3 setup — window manager, bar, compositor, terminal, shell and editor —
installable on a fresh machine with a single Ansible playbook.

<img src="screenshots/desktop-1.webp" alt="i3 desktop" width="100%" />

![i3](https://img.shields.io/badge/i3-wm-1793D1?style=flat-square&logo=i3&logoColor=white)
![Polybar](https://img.shields.io/badge/Polybar-status%20bar-222222?style=flat-square)
![picom](https://img.shields.io/badge/picom-compositor-5E81AC?style=flat-square)
![kitty](https://img.shields.io/badge/kitty-terminal-71BEF2?style=flat-square)
![zsh](https://img.shields.io/badge/zsh-oh--my--zsh-4EAA25?style=flat-square&logo=gnu-bash&logoColor=white)
![Neovim](https://img.shields.io/badge/Neovim-editor-57A143?style=flat-square&logo=neovim&logoColor=white)
![tmux](https://img.shields.io/badge/tmux-multiplexer-1BB91F?style=flat-square&logo=tmux&logoColor=white)
![Ansible](https://img.shields.io/badge/Ansible-automated-EE0000?style=flat-square&logo=ansible&logoColor=white)

</div>

---

## ✨ Showcase

#### Editor — Neovim + Telescope, working on a rofi theme installer
<img src="screenshots/nvim-rofi.webp" alt="Neovim editing a bash script with the file tree open" width="100%" />

#### Dual-monitor desktop
<table>
  <tr>
    <td><img src="screenshots/desktop-1.webp" alt="Primary monitor" /></td>
    <td><img src="screenshots/desktop-2.webp" alt="Secondary monitor" /></td>
  </tr>
</table>

---

## 🧰 What's inside

| Component | Tool | Role |
|-----------|------|------|
| 🪟 Window manager | **i3** | Tiling layout, keyboard-driven workspaces |
| 📊 Status bar | **Polybar** | Workspaces, system stats, network, tray |
| 🖼️ Compositor | **picom** | Transparency, blur, shadows |
| 🐱 Terminal | **kitty** | GPU-accelerated, themed |
| 🐚 Shell | **zsh + oh-my-zsh** | Prompt, aliases, plugins |
| 🧩 Multiplexer | **tmux** | Sessions, panes, custom keybindings |
| 📁 File manager | **yazi** | Fast terminal file browser |
| 🚀 Drop-down terminal | **raise-terminal** | Quake-style toggle utility |
| 🔧 Scripts | `scripts/` | `pretty-diff`, `projects`, `rofi-thunar`, `tmux-rename`, `tmux-windownizer` |

Plus terminal color themes and a few quality-of-life helper scripts.

---

## 🚀 Installation

### Ansible (recommended)

Provisions everything on a fresh machine:

```bash
cd ansible
ansible-playbook install.yml
```

See [`ansible/README.md`](ansible/README.md) for details and available tags.

### Makefile (per-component)

Prefer to install pieces individually:

```bash
make install                  # full setup
make install-i3-config        # just i3
make install-polybar-config   # just Polybar
make install-raise-terminal   # drop-down terminal utility
make install-check            # verify what's installed
```

---

<div align="center">
<sub>Built for a fast, distraction-free, keyboard-first workflow. Steal anything you like. 🐧</sub>
</div>
