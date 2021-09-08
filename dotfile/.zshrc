# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PYENV_ROOT/shims:$PATH"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
source ~/.zinit/bin/zinit.zsh

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

alias dotdrop='dotdrop --cfg=~/Desktop/dotfiles/config.yaml'
# 快速目录跳转
zinit ice lucid wait='1'
zinit light skywind3000/z.lua

# 语法高亮
zinit ice lucid wait='0' atinit='zpcompinit'
zinit light zdharma/fast-syntax-highlighting

# 自动建议
zinit ice lucid wait="0" atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

# 补全
zinit ice lucid wait='0'
zinit light zsh-users/zsh-completions

# 加载 OMZ 框架及部分插件
zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/history.zsh
# zinit snippet OMZ::lib/key-bindings.zsh
zinit snippet OMZ::lib/theme-and-appearance.zsh
zinit snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh
zinit snippet OMZ::plugins/pyenv/pyenv.plugin.zsh

zinit ice svn
# zinit snippet OMZ::plugins/extract

zinit ice lucid wait='1'
zinit snippet OMZ::plugins/git/git.plugin.zsh

# p10k
zinit ice depth=1; zinit light romkatv/powerlevel10k


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# 加载 pure 主题
# zinit ice pick"async.zsh" src"pure.zsh"
# zinit light sindresorhus/pure
# zinit snippet OMZ::lib/git.zsh
# zinit snippet OMZ::themes/ys.zsh-theme


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
export M2_HOME=$HOME/.m2/apache-maven-3.6.0
export PATH=$PATH:$M2_HOME/bin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/admin/.sdkman"
[[ -s "/Users/admin/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/admin/.sdkman/bin/sdkman-init.sh"

HADOOP_HOME="/usr/local/Cellar/hadoop/3.3.1"
PATH=$HADOOP_HOME/sbin:$PATH:                                                                                                              
export HADOOP_OPTS="$HADOOP_OPTS -Djava.library.path=$HADOOP_HOME/lib/native"

alias start-hadoop='$HADOOP_HOME/sbin/start-all.sh'
alias stop-hadoop='$HADOOP_HOME/sbin/stop-all.sh'

HIVE_HOME="/usr/local/Cellar/hive/3.1.2_3"
PATH=$HIVE_HOME/binL$PATH: