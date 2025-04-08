# homebrew-astroctl

Homebrew formula for installing [astroctl](https://astropulse.io/docs/latest/cli/astroctl), a command-line interface for Astro Platform.

## Installation

```bash
brew tap astropulseinc/astroctl
brew install astroctl
```

## Usage

Basic commands:
```bash
# Check version
astroctl version

# Get help
astroctl --help

# List available commands
astroctl -h
```

For detailed documentation, visit our [CLI Reference](https://astropulse.io/docs/latest/cli/astroctl).

## Updating

To get the latest version:
```bash
brew update
brew upgrade astroctl
```

You can also check if a new version is available:
```bash
brew livecheck astroctl
```

## Troubleshooting

If you encounter any issues:

1. Make sure you have the latest version:
   ```bash
   brew update && brew upgrade astroctl
   ```

2. Try reinstalling:
   ```bash
   brew uninstall astroctl
   brew install astroctl
   ```

3. Repair the tap:
   ```bash
   brew tap --repair
   ```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.