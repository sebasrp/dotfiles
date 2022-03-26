# put homnebrew bins first thing
export PATH="/usr/local/bin:$PATH"

export PATH=$PATH:~/bin:/usr/local/bin:$HOME/.toolbox/bin
export PATH="/home/sebasr/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# java specifics
#export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# android specific
export ANDROID_HOME="/Users/sebastian.rodriguez/Library/Android/sdk"
export ANDROID_SDK_ROOT="/Users/sebastian.rodriguez/Library/Android/sdk"
export ANDROID_TOOLS="/Users/sebastian.rodriguez/Library/Android/sdk/tools"

# golang specific
mkdir -p $HOME/go/{src,pkg,bin}
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# files to source in priority
source $HOME/.oh_my.zsh

# load zsh config files
config_files=(~/.zsh/**/*.zsh(N))
for file in ${config_files}
do
  source $file
done

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
