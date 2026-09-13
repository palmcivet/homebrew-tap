- [palmcivet/tap](#palmcivettap)
   - [Install](#install)
   - [Upgrade and uninstall](#upgrade-and-uninstall)
   - [Packages](#packages)

# palmcivet/tap

Homebrew tap for [palmcivet](https://github.com/palmcivet) macOS apps and command-line tools.

This repository only hosts formulae and casks. Source, issues, and product docs live in each project's own repo.

## Install

```bash
brew tap palmcivet/tap
brew install --cask arkeys
```

Homebrew also taps this repository when you install a fully-qualified token:

```bash
brew install --cask palmcivet/tap/arkeys
```

Brewfile:

```ruby
tap "palmcivet/tap"
cask "arkeys"
```

Replace `arkeys` with any token from [Packages](#packages).

## Upgrade and uninstall

```bash
brew update
brew upgrade --cask arkeys
brew uninstall --cask arkeys
```

## Packages

| Token    | Type | Project                                       |
| -------- | ---- | --------------------------------------------- |
| `arkeys` | Cask | [Arkeys](https://github.com/palmcivet/Arkeys) |
