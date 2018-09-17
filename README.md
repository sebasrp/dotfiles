*Collection of my dotfies managed on [stow](https://www.gnu.org/software/stow).*
Why Stow?
- **`stow` powered:** symlink dotfiles and thus keep them always up-to-date in your repository
- **topical organization:** organize dotfiles by application facilitating reuse across different machines
- **clever naming scheme:** the repository architecture is easy to browse while staying compatible with `stow` symlinking mechanism
- **KISS:** there is deliberately none build script involved at all, the repository consist of dotfiles all installable using same modus operandi (`stow <directory>`)

## Install

1. clone the repository : `git clone https://github.com/sebasrp/dotfiles.git ~/.dotfiles ; cd ~/.dotfiles`
1. install desired package via `stow <directory>`

When needed, special install instructions are present in package `README.md` file.