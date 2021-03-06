# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#vscode fonts
#   Search: Terminal Font
#   Input: MesloLGS NF
#https://github.com/romkatv/powerlevel10k/issues/671
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
	dotenv
	osx
	zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"
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
  alias ll='exa -lhs mod'
  alias lls='ls -lSrh'
  alias llds='du -s'

  alias uberspace='ssh u300202@gienah.uberspace.de'

  #commits changes and deletion
  alias yolo='git commit -am "DEAL WITH IT" && git push'

  alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
  alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

  alias projects='cd /Users/lukas.muessle/Documents/AT_documents/02_Projekte'
  alias npp='wine /Users/lukas.muessle/.wine/drive_c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe > /var/log/wine_notepad_pp.txt 2>&1 &'

  alias myenv='source ~/.virtualenvs/myvenv/bin/activate'

function virtualenv_info {
[ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv)

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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

#Tab completion after ..
#zstyle ':completion:*' special-dirs true

#./wetter.sh
export PATH=/usr/local/bin:$PATH

#Workaround for pandas python 
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

export TERM=xterm-256color

export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.poetry/bin"

#fortune | cowsay
eval "$(pyenv init -)"
neofetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
