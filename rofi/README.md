# rofi

My [rofi](https://github.com/davatorium/rofi) launcher configuration.

The look is the **windows11-list-dark** theme — a centered, bottom-anchored
launcher with a blurred translucent background, bound to `$mod+d` in i3.

## What's tracked here

This folder only contains **my** customization, not the upstream collection:

| File | Purpose |
|------|---------|
| `config.rasi` | Main rofi config (modi, icons, fonts) + active theme selection |
| `windows11-list-dark.rasi` | The theme used for the launcher |
| `install.sh` | Installs the two files above into the right XDG paths |

> The base config and the launcher/applet/powermenu menus originate from
> **[adi1090x/rofi](https://github.com/adi1090x/rofi)**. I deliberately don't
> vendor that whole collection here — install it from upstream if you want the
> full set of menus.

## Install

```bash
./install.sh
```

This will:
1. Install `rofi` (via apt) if it isn't already present.
2. Back up any existing `~/.config/rofi/config.rasi`.
3. Copy `config.rasi` → `~/.config/rofi/`.
4. Copy `windows11-list-dark.rasi` → `~/.local/share/rofi/themes/`.

Then test:

```bash
rofi -show drun
```

## Optional — full adi1090x menus

The polybar power menu and other launchers reference adi1090x's scripts. To get
the complete set:

```bash
git clone --depth 1 https://github.com/adi1090x/rofi.git /tmp/adi1090x-rofi
cd /tmp/adi1090x-rofi && ./setup.sh
```

Re-run `./install.sh` afterwards to put my `config.rasi` back on top.

## Credits

Theme and base config by **[Aditya Shakya (@adi1090x)](https://github.com/adi1090x/rofi)**.
