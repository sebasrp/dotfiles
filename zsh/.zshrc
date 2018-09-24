# files to source in priority
source $HOME/.oh_my.zsh

# load zsh config files
config_files=(~/.zsh/**/*.zsh(N))
for file in ${config_files}
do
  source $file
done

eval "$(direnv hook zsh)"
