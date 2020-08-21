# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"
# Example aliases
  alias zshconfig="mate ~/.zshrc"
  alias ohmyzsh="mate ~/.oh-my-zsh"

  alias master='cd ~/Dropbox/Studium/Master_Thesis'
  alias zmaw_sshfs='sshfs -p 22 u300202@login1.zmaw.de:/home/zmaw/u300202 ~/zmaw -oauto_cache,reconnect,defer_permissions,negative_vncache,volname=zmaw'
  alias zmaw_sshfs_logout='umount ~/zmaw'

  alias lex='sshfs -p 22 u300202@login1.zmaw.de:/net/nas2/export/m4t/lehre/lex2013/ ~/lex -oauto_cache,reconnect,defer_permissions,negative_vncache,volname=lex'
  alias lex_logout='umount ~/lex'

  alias zmaw='ssh u300202@login1.zmaw.de'

  alias pi='ssh pi@192.168.178.30'

  #alias ll='ls -lrth'
  alias ll='exa -lhrs mod'
  alias lls='ls -lSrh'
  alias llds='du -s'

  alias uberspace='ssh u300202@gienah.uberspace.de'

  #commits changes and deletion
  alias yolo='git commit -am "DEAL WITH IT" && git push origin master'

  alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
  alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

  alias projects='cd /Users/lukas.muessle/Documents/AT_documents/02_Projekte'
  alias npp='wine /Users/lukas.muessle/.wine/drive_c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe > /var/log/wine_notepad_pp.txt 2>&1 &'

  alias myenv='source ~/.virtualenvs/myvenv/bin/activate'

function virtualenv_info {
[ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv)
#export VIRTUAL_ENV_DISABLE_PROMPT=true
#export VIRTUAL_ENV_DISABLE_PROMPT=

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)
#plugins=(virtualenv)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv)
source $ZSH/oh-my-zsh.sh

# User configuration

#export PATH="/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/texbin"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

#Tab completion after ..
zstyle ':completion:*' special-dirs true


#./wetter.sh
export PATH=/usr/local/bin:$PATH
#export PATH=/anaconda/bin:$PATH

#Workaround for pandas python 
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# added by Anaconda3 4.2.0 installer
#export PATH="/home/potzenhotz/anaconda3/bin:$PATH"

export TERM=xterm-256color

export PATH="/usr/local/sbin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/usr/local/Caskroom/miniconda/4.6.14/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/usr/local/Caskroom/miniconda/4.6.14/miniconda3/etc/profile.d/conda.sh" ]; then
#        . "/usr/local/Caskroom/miniconda/4.6.14/miniconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/usr/local/Caskroom/miniconda/4.6.14/miniconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

fortune | cowsay
