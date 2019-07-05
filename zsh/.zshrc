# put homnebrew bins first thing
export PATH="/usr/local/bin:$PATH"

export PATH=$PATH:~/bin:/usr/local/bin:$HOME/.toolbox/bin

# files to source in priority
source $HOME/.oh_my.zsh

# load zsh config files
config_files=(~/.zsh/**/*.zsh(N))
for file in ${config_files}
do
  source $file
done

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

