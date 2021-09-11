# put homnebrew bins first thing
export PATH="/usr/local/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

export PATH=$PATH:~/bin:/usr/local/bin:$HOME/.toolbox/bin
#export PATH="/home/sebasr/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# for flutter
export JAVA_HOME='/usr/lib/jvm/java-11-openjdk'
export PATH=$JAVA_HOME/bin:$PATH
export PATH="/home/snip/workspace/flutter/bin:$PATH"
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_SDK_HOME=$HOME/Android/Sdk
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export ANDROID_AVD_HOME=$HOME/.android/avd

export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable

# files to source in priority
source $HOME/.oh_my.zsh

# load zsh config files
config_files=(~/.zsh/**/*.zsh(N))
for file in ${config_files}
do
  source $file
done

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

