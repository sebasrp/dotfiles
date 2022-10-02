# put homnebrew bins first thing
export PATH="/usr/local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH=$PATH:~/bin:/usr/local/bin:$HOME/.toolbox/bin

#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#export PATH="/home/sebasr/.pyenv/bin:$PATH"
#eval "$(pyenv init --path)"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

# for flutter
export JAVA_HOME='/usr/lib/jvm/java-11-openjdk'
export PATH=$JAVA_HOME/bin:$PATH
#export PATH="/home/snip/workspace/flutter/bin:$PATH"
#export ANDROID_HOME=$HOME/Android/Sdk
#export ANDROID_SDK_HOME=$HOME/Android/Sdk
#export ANDROID_SDK_ROOT=$HOME/Android/Sdk
#export ANDROID_AVD_HOME=$HOME/.android/avd

export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable

# java specifics
#export PATH="/usr/local/opt/openjdk/bin:$PATH"
#export PATH="$HOME/.jenv/bin:$PATH"
#eval "$(jenv init -)"

# android specific
#export ANDROID_HOME="/Users/sebastian.rodriguez/Library/Android/sdk"
#export ANDROID_SDK_ROOT="/Users/sebastian.rodriguez/Library/Android/sdk"
#export ANDROID_TOOLS="/Users/sebastian.rodriguez/Library/Android/sdk/tools"

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
