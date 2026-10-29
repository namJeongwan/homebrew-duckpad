# Duckpad Homebrew tap

Install [Duckpad](https://github.com/namJeongwan/duckpad), a text and code editor
for macOS inspired by Notepad++, using Homebrew.

## Install

```sh
brew install --cask namJeongwan/duckpad/duckpad
```

Homebrew adds this tap automatically. Requires macOS 13 or later and supports
Apple Silicon and Intel Macs through the upstream universal build.

Duckpad is ad-hoc signed and is not notarized by Apple. If macOS blocks the first
launch, attempt to open Duckpad, then use **System Settings > Privacy & Security >
Open Anyway**. This cask preserves macOS quarantine protections.

Launch Duckpad from Applications. On its first launch, Duckpad registers its
`duckpad` terminal command; open a new terminal window to use it.

## Update

Use **Check for Updates** in Duckpad, or explicitly include apps with their own
updater when upgrading with Homebrew:

```sh
brew update
brew upgrade --cask --greedy namJeongwan/duckpad/duckpad
```

The Homebrew version follows the version published in this tap.

## Uninstall

```sh
brew uninstall --cask namJeongwan/duckpad/duckpad
```

Uninstalling the cask preserves documents, recovery data, settings, plugins and
the app-managed `~/.local/bin/duckpad` launcher. Remove that launcher separately
if you no longer need it.

## Maintain

For a new [upstream release](https://github.com/namJeongwan/duckpad/releases),
update `version` and `sha256` in `Casks/duckpad.rb`. Use the SHA-256 of the
versioned universal ZIP, verify it against the release's `SHA256SUMS.txt`, and
validate before publishing:

```sh
brew style Casks/duckpad.rb
brew audit --cask namJeongwan/duckpad/duckpad
brew fetch --cask namJeongwan/duckpad/duckpad
```

This tap distributes the existing upstream release without rebuilding or
modifying the application.
