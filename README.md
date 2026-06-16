# omarchy-vibez-sync

A CLI utility to automatically sync the [Vibez Apple Music TUI player](https://github.com/simonepelosi/vibez) theme with your active [Omarchy Linux](https://omarchy.org/) system theme.

Whenever you change your desktop theme (e.g., via `omarchy theme set`), this tool automatically reads the new system colors from your active configuration and regenerates a matching theme for Vibez in real-time.

## Features
- **Automatic theme syncing:** Hooks directly into Omarchy's `theme-set` event.
- **Dynamic color generation:** Reads the active theme's `colors.toml` and generates matching colors for Vibez (mode tags, visualization glow, bear mascot, text, and interface backgrounds).
- **Desktop notifications:** Sends a friendly alert (`notify-send`) when the theme has successfully synchronized.

## Installation

To install, clone the repository and run the install script:

```bash
git clone https://github.com/Harshil-Anuwadia/omarchy-vibez-sync.git
cd omarchy-vibez-sync
./install.sh
```

## Usage

You can use the `omarchy-vibez-sync` command to manage the theme syncing:

- **`omarchy-vibez-sync install`**: Register the hook and perform the initial theme sync.
- **`omarchy-vibez-sync uninstall`**: Disable syncing by removing the hook integration.
- **`omarchy-vibez-sync sync`**: Manually force the theme to sync to the active system colors.
- **`omarchy-vibez-sync status`**: Check the hook status and the current theme configuration.

## Requirements
- `jq` (required to parse/update configurations)
- `vibez` (installed)
- `omarchy`
