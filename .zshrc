ZSH_THEME="lambda" # set by `omz`


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:$HOME/.cargo/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export AWT_TOOLKIT=MToolkit

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd-mm-yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup. (haha no it doesn't, powerlevel10k go brr)
plugins=(
	git
	thefuck
	sudo
	python
	archlinux
	virtualenv
	vi-mode
	cp
	colored-man-pages
	aliases
  zsh-interactive-cd
  zsh-navigation-tools
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-history-substring-search
 pipenv git-auto-fetch pyenv vscode pylint)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# - - - - - [ Aliases ] - - - - -
# chad aliases
alias starwars='telnet towel.blinkenlights.nl'

# basic
alias ping="ping -c 5"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com" # the better myip
alias reload='source ~/.zshrc'
alias rmf='rm -rf'
alias clear="echo -ne '\0033\0143'" # actually clears the screen instead of just adding a bunch of new lines
alias venv='source venv/bin/activate'
alias bb='sudo bleachbit --clean system.cache system.localizations system.trash system.tmp'

# changing programs to better ones
alias ls='exa --icons -al --git --color=always --group-directories-first'
alias la='exa --icons -a --color=always --group-directories-first'
alias ll='exa --icons -l --color=always --group-directories-first'
alias lt='exa --icons -aT --color=always --group-directories-first'
alias l.='exa --icons -a | egrep "^\."'
alias grep="rg --color=always"
alias jar="fastjar"
alias top='btm --color gruvbox -m'

# pacman
alias pacup='sudo pacman -Syyu --noconfirm'
alias parup='paru -Sua --noconfirm'
alias pacs='pacman -Ss'
alias pacins='sudo pacman -S'
alias pacr='sudo pacman -Rs'
alias pacq='pacman -Q'
alias pacu='sudo pacman -U'
alias pacclean='sudo rm /var/cache/pacman/pkg/*'
alias cleanup='pacman -Qtdq | sudo pacman -Rns'
alias packs='pacman -Qi | awk '/^Name/{name=$3} /^Installed Size/{print $4$5, name}' | sort -h'
alias deepclean='pacman -Qqd | sudo pacman -Rsu --print'
alias unlock='sudo rm /var/lib/pacman/db.lck'

# information
alias gputemp="watch -tn1 nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader"
alias cputemp="watch -tn1 'sensors | grep Core'"
alias cpuspeed="sudo watch dmidecode -t processor | grep \"Speed\""

# get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# edit programs
alias sxhkdedit="nvim ~/.config/sxhkd/sxhkdrc"
alias bspwmedit="nvim ~/.config/bspwm/bspwmrc"
alias zshedit="nvim ~/.zshrc"

# update grub
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#add new fonts
alias update-fc='sudo fc-cache -fv'

#search content with ripgrep
alias rg="rg --sort path"

# youtube-dl
alias yta-aac="yt-dlp --extract-audio --audio-format aac "
alias yta-best="yt-dlp --extract-audio --audio-format best "
alias yta-flac="yt-dlp --extract-audio --audio-format flac "
alias yta-m4a="yt-dlp --extract-audio --audio-format m4a "
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3 "
alias yta-opus="yt-dlp --extract-audio --audio-format opus "
alias yta-vorbis="yt-dlp --extract-audio --audio-format vorbis "
alias yta-wav="yt-dlp --extract-audio --audio-format wav "
alias ytv-best="yt-dlp -f bestvideo+bestaudio "
alias ytmp3="yt-dlp -x --audio-format mp3"

# function aliases
mcd() { mkdir -p "$1" && cd "$1"; }
say() { espeak "$1" > /dev/null 2>&1}

function pac-log {
    # Usage: pac-log [n=20]
    #    show persisting installs/removes in last n lines of pacman.log (install X...remove X pairs and the converse are filtered out)

    {
        if [[ -e /var/log/pacman.log.1 ]]; then
            cat /var/log/pacman.log.1
        elif [[ -e /var/log/pacman.log.1.gz ]]; then
            zcat /var/log/pacman.log.1.gz
        fi
        cat /var/log/pacman.log
    } \
    | rg -e '] installed|] removed' | tail -n "${1-20}" \
    | python <(cat << EOF
import sys, re
pkgre=re.compile(r'\[[^]]*\] (installed|removed) ([^ ]*) .*')
lines = []
hist = {
    'installed': {},
    'removed': {},
}
otheract = {
    'installed':'removed',
    'removed':'installed',
}
li=0
for l in sys.stdin:
    m = pkgre.match(l)
    if m:
        act,pkg = m.groups()
        hist[act].setdefault(pkg,[]).append(li)
        lines.append((li,act,pkg,l[:-1]))
        li+=1
for li,act,pkg,line in lines:
    if li==hist[act][pkg][-1] and li>hist[otheract[act]].get(pkg,-1):
        print("%s" % (line,))
EOF
)

}


# - - - - - - - - - - - - - - - -

# - - - - - [ Theme Configuration ] - - - - -
# Syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

# Autocompletion
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff"
# - - - - - - - - - - - - - - - - - - - - - -

# - - - - - [ Powerlevel 10k ] - - - - -
source ~/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
