# Homebrew

In this directory are a few different files:

1. [Brewfile](Brewfile) - Stripped-down, general-purpose `Brewfile` of things I often find useful as a starting point
1. [Current-Brewfile](Current-Brewfile) - Auto-generated file of everything currently installed - may have a lot of cruft 
1. [update-current](update-current) - Script to generate the `Current-Brewfile` file from whatever is currently installed

## Installing Brewfile Apps

[Brewfile](Homebrew/Brewfile) can be applied with the following command:

```shell
brew bundle -f Brewfile
```

>**_NOTE:_** Change the `Brewfile` above to `Current-Brewfile` (or any other `Brewfile`) as necessary to install from a different bundle file.

## Resources

- [Homebrew/homebrew-bundle](https://github.com/Homebrew/homebrew-bundle) - Similar to how Gemfiles work in Ruby for managing package lists from a file
- [rcmdnk/homebrew-file](https://homebrew-file.readthedocs.io/en/latest/index.html) - Looks like an interesting replacement for Homebrew's Bundle (Brewfile) with more features
