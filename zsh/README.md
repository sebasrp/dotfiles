# Zsh

    ├── .oh_my.zsh                Zsh theme and plugins
    ├── .zsh
    │   ├── aliases.zsh
    │   ├── config.zsh            Configure shell behavior
    │   └── dircolors.256dark     Colored ls
    ├── .zshenv                   Routine loading all .zshenv files
    └── .zshrc                    Routine loading all .zsh files

Loads [Oh-My-Zsh](https://github.com/sebasrp/dotfiles/tree/master/zsh).

### Customizations
Others packages define environment variables or functions by writing shell files into ~/.zsh.

~/.zsshenv sources all *.zshenv files present in ~/.zsh subfolders at zsh startup, and ~/.zshrc do the same with *.zsh files.

### Requirements

- `oh-my-zsh` <<https://github.com/robbyrussell/oh-my-zsh>>
- `spaceship` <<https://github.com/denysdovhan/spaceship-prompt>>
- `grc` - `brew install grc`
- `npm` - `brew install npm`
- 'zsh-syntax-highlighting' - `brew install zsh-syntax-highlighting`
