# 🏠 Dotfiles

My personal dotfiles configuration supporting multiple shells and tools on macOS.

## 📁 Structure

```
dotfiles/
├── README.md               # This file
├── Makefile               # Installation and management commands
├── config/                # Configuration files for various tools
│   └── .config/
│       └── nushell/
│           ├── config.nu  # Nushell configuration
│           └── env.nu     # Nushell environment setup
├── wezterm/               # Wezterm terminal configuration
│   └── .wezterm.lua
└── zsh/                   # Zsh shell configuration
    ├── .zshrc            # Zsh configuration and aliases
    └── .zprofile         # Zsh profile setup
```

## 🚀 Quick Start

### Prerequisites

- macOS with Homebrew installed
- Git

### Installation

1. **Clone the repository:**
   ```bash
   git clone <your-repo-url> ~/dotfiles
   cd ~/dotfiles
   ```

2. **Install dependencies:**
   ```bash
   brew install eza nushell
   ```

3. **Install dotfiles:**
   ```bash
   make install
   ```

4. **Restart your shell or source the configuration:**
   ```bash
   source ~/.zshrc
   ```

## 📋 Available Make Commands

| Command | Description |
|---------|-------------|
| `make help` | Show all available commands |
| `make install` | Install dotfiles (creates symlinks) |
| `make uninstall` | Remove dotfiles symlinks |
| `make status` | Show installation status |
| `make test` | Test configurations for syntax errors |
| `make update` | Update dotfiles repository |
| `make backup` | Backup existing dotfiles |
| `make restore` | Show available backups |
| `make clean` | Clean up broken symlinks |
| `make reinstall` | Uninstall and reinstall |

## 🛠 Supported Tools & Shells

### 🐚 Shells

#### Zsh
- Enhanced `eza` aliases with icons and git status
- Homebrew environment setup
- Fallback support when `eza` is not available

#### Nushell
- Comprehensive `eza` aliases (`ls`, `ll`, `la`, `lt`, `ltn`)
- Custom prompt with path highlighting
- Enhanced completions and history
- Colored syntax highlighting
- Custom key bindings

### 📦 Tools

#### Eza (Enhanced ls)
Both shells include comprehensive `eza` configurations with:
- Icons and color coding
- Git status integration
- Directory grouping
- Tree views
- Fallback to standard `ls` when unavailable

**Available aliases:**
- `ls` - Basic listing with icons and git status
- `ll` - Long format with headers and timestamps
- `la` - Long format including hidden files
- `lt` - Tree view (2 levels deep)
- `ltn` - Tree view ignoring `node_modules` (nushell only)

#### WezTerm
- Terminal emulator configuration
- Linked as `~/.wezterm.lua`

## 🔧 Customization

### Adding New Configurations

1. **Add the configuration files** to the appropriate directory:
   - Shell configs → `zsh/` or `config/.config/`
   - Application configs → create new directory

2. **Update the Makefile** to include new symlinks in the `install` and `uninstall` targets

3. **Update the status command** to check the new symlinks

### Modifying Existing Configurations

Simply edit the files in the dotfiles directory. Since they're symlinked, changes take effect immediately (you may need to reload your shell).

## 📝 File Descriptions

### Zsh Configuration
- **`.zshrc`**: Main zsh configuration with enhanced eza aliases
- **`.zprofile`**: Homebrew environment setup

### Nushell Configuration
- **`config.nu`**: Main nushell configuration with UI settings, colors, and key bindings
- **`env.nu`**: Environment setup and aliases

### WezTerm Configuration
- **`.wezterm.lua`**: Terminal emulator configuration

## 🚨 Safety Features

- **Automatic backups**: The Makefile automatically backs up existing files before installation
- **Syntax checking**: `make test` validates shell configuration syntax
- **Status checking**: `make status` shows which files are properly linked
- **Safe uninstall**: Only removes symlinks, never deletes actual configuration files

## 🔄 Updating

To update your dotfiles:

```bash
make update    # Pull latest changes from git
make reinstall # Reinstall if needed
```

## 🛡️ Backup & Recovery

### Automatic Backups
The installation process automatically creates timestamped backups of existing dotfiles in `~/.dotfiles_backup/`.

### Manual Backup
```bash
make backup
```

### Restore from Backup
```bash
make restore  # Shows available backups
make uninstall  # Remove current symlinks
# Then manually copy files from ~/.dotfiles_backup/TIMESTAMP/
```

## 📊 Testing & Validation

Run tests to ensure everything is working correctly:

```bash
make test
```

This will check:
- Syntax validation for shell configurations
- Availability of required dependencies
- Proper installation of tools

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test with `make test`
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## ❓ Troubleshooting

### Common Issues

**Symlinks not working:**
```bash
make status  # Check current status
make clean   # Remove broken symlinks
make reinstall
```

**Command not found (eza, nu, etc.):**
```bash
brew install eza nushell
make test  # Verify installation
```

**Shell not loading new configuration:**
```bash
# For zsh:
source ~/.zshrc

# For nushell:
# Restart nushell or start a new session
```

**Need to revert changes:**
```bash
make uninstall
make restore  # Follow instructions to restore from backup
```

---

🎉 **Happy customizing!** Your dotfiles are now organized, version-controlled, and easy to manage across multiple machines.# dotfiles
# dotfiles
# dotfiles
# dotfiles
# dotfiles
# dotfiles
