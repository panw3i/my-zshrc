
export ZSH="/Users/pan/.oh-my-zsh"
ZSH_THEME="agnoster"

# > zsh插件
plugins=(zsh-autosuggestions  autojump zsh-syntax-highlighting)

# >  History config
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history


source $ZSH/oh-my-zsh.sh

# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export MAVEN_HOME=/Users/pan/apache-maven-3.6.3
export PATH=$MAVEN_HOME/bin:$PATH
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export PATH=/Users/pan/flutter/bin:$PATH
export PATH=/usr/local/Cellar/node/16.5.0/bin:$PATH
export GOPATH=/Users/pan/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# PNPM
export PNPM_HOME="/Users/pan/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# > JAVA_HOME
export JAVA_HOME=/Users/pan/Library/Java/JavaVirtualMachines/azul-1.8.0_345/Contents/Home
export CLASSPAHT=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export PATH=$JAVA_HOME/bin:$PATH:

export PATH="/Users/pan/.deno/bin:$PATH"

# flutrer

export PATH="$PATH:/Users/pan/flutter/bin"

# > GOPROXY
export GOPROXY=https://goproxy.io,direct
export PATH="$PATH:/Users/pan/.local/bin"



export NO_PROXY=localhost,127.0.0.1

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh


export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles/
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

ulimit -n 1048576

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

alias cli='/Applications/HBuilderX.app/Contents/MacOS/cli'
export PATH="$PATH":"$HOME/flutter/.pub-cache/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

eval $(thefuck --alias)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/pan/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/pan/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/pan/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/pan/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$PATH":"$HOME/.pub-cache/bin"

function proxy() {
local action="${1:-on}"  # 如果未提供参数，则默认为"on"
  if [ "$action" = "on" ]; then
    export http_proxy=http://127.0.0.1:1087
    export https_proxy=http://127.0.0.1:1087
    export ALL_PROXY=socks5://127.0.0.1:1080
    echo "Proxy turned on"
  elif [ "$action" = "off" ]; then
    unset http_proxy
    unset https_proxy
    unset ALL_PROXY
    echo "Proxy turned off"
  else
    echo "Invalid argument: please use 'on' or 'off'"
    return 1
  fi

  # 测试连接是否正常
  local curl_output="$(curl -sSf https://www.google.com)"
  if [ $? -eq 0 ]; then
    echo "Connection successful"
    return 0
  else
    echo "Connection failed"
    echo "$curl_output"
    return 1
  fi
}


