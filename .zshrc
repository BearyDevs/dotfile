if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
export PATH=$HOME/bin:/usr/local/bin:$PATH

# ╭──────────────────────────────────────────────────────────╮
# │ BREW                                                     │
# ╰──────────────────────────────────────────────────────────╯
eval "$(/opt/homebrew/bin/brew shellenv)"
# alias brewarchset="arch -x86_64 zsh && eval '$(/usr/local/bin/brew shellenv)'"
alias brewarchpath="export PATH=/usr/local/bin:${PATH}"

# ╭──────────────────────────────────────────────────────────╮
# │ Locale                                                   │
# ╰──────────────────────────────────────────────────────────╯
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Random Secret for Secure
alias randomsecret='openssl rand -base64 32'

# ╭──────────────────────────────────────────────────────────╮
# │ NPM                                                      │
# ╰──────────────────────────────────────────────────────────╯
export PATH=/usr/local/share/npm/bin:$PATH
alias npmgloballist='npm list -g --depth=0'

# ╭──────────────────────────────────────────────────────────╮
# │ Check update of all dependencies in project              │
# ╰──────────────────────────────────────────────────────────╯
# $ npm install -g npm-check-updates
# $ ncu -u
# Or
# $ npx npm-check-updates -u

# ╭──────────────────────────────────────────────────────────╮
# │ YARN                                                     │
# ╰──────────────────────────────────────────────────────────╯
alias yarngloballist='yarn global list'

# ╭──────────────────────────────────────────────────────────╮
# │ NPM FIX PERMISSIONS MAC                                  │
# ╰──────────────────────────────────────────────────────────╯
export NPM_CONFIG_PREFIX=~/.npm-global
unset NPM_CONFIG_PREFIX

# ╭──────────────────────────────────────────────────────────╮
# │ Java                                                     │
# ╰──────────────────────────────────────────────────────────╯
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# ╭──────────────────────────────────────────────────────────╮
# │ NVM                                                      │
# ╰──────────────────────────────────────────────────────────╯
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh" # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# ╭──────────────────────────────────────────────────────────╮
# │ GO                                                       │
# ╰──────────────────────────────────────────────────────────╯
export PATH=$PATH:/opt/homebrew/bin/go

# ╭──────────────────────────────────────────────────────────╮
# │ CARGO                                                    │
# ╰──────────────────────────────────────────────────────────╯
export PATH="$PATH:/Users/bearydevtoylab/.cargo/bin"

# ╭──────────────────────────────────────────────────────────╮
# │ RUBY                                                     │
# ╰──────────────────────────────────────────────────────────╯
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/ruby/lib/pkgconfig"

# ╭──────────────────────────────────────────────────────────╮
# │ Java                                                     │
# ╰──────────────────────────────────────────────────────────╯
# For the system Java wrappers to find this JDK, symlink it with
#  $ sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"


# ╭──────────────────────────────────────────────────────────╮
# │ llvm                                                     │
# ╰──────────────────────────────────────────────────────────╯
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"


# ╭──────────────────────────────────────────────────────────╮
# │ C++                                                      │
# ╰──────────────────────────────────────────────────────────╯
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib/c++ -Wl,-rpath,/opt/homebrew/opt/llvm/lib/c++"

# robbyrussell
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git)
source $ZSH/oh-my-zsh.sh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# Unlock to Install 3rd Party App
alias unlock-install='sudo spctl --global-disable && sudo xattr -cr' # program path after that, can drag into

# alias ls='exa -s=extension -snew --group-directories-first'

# ╭──────────────────────────────────────────────────────────╮
# │ EZA instead of EXA                                       │
# ╰──────────────────────────────────────────────────────────╯
# alias ls="eza --icons=always"
alias ls="eza --color=always --long --icons=always --no-filesize --no-time --no-user --no-permissions"
alias l="eza --color=always --long --icons=always --group-directories-first"
alias ll="eza --color=always --long --icons=always --group-directories-first -a"

# Zoxide (Fast to path with some text not full)
eval "$(zoxide init zsh)"
alias cd='z'

alias lsa='exa -a -s=extension -snew --group-directories-first'
# alias ll='exa -la -s=extension -snew --group-directories-first'
alias home='cd ~'
alias hh='home; cls'
alias clr='clear'
# alias clr='clear; neofetch; showinfo'
# alias clr='clear; neofetch --source ~/neofetch-custom.txt'
alias dl='home; cd Downloads'
# alias cls='clear; showinfo'
# alias cls='clear; neofetch; showinforandom;'
alias cls='clear; echo -e "$(cat ~/neofetch-custom2.txt)"; showinforandom;'
alias nf='neofetch'
alias zshrc='nvim ~/.zshrc'
alias reload='source ~/.zshrc'
# alias reloadzsh='source ~/.zshrc'
alias dotconfig='cd ~/.config'
alias dotlocal='cd ~/.local'
alias dotcache='cd ~/.cache'
alias vim='nvim'
# alias vi='nvim'
# alias vim='echo "Use nvim instead"'
# alias vi='echo "Use nvim instead"'
alias vi='echo "Use vim instead"'
alias vide='neovide'
alias vimcf='home; cd ~/.config/nvim'
alias nvimcf='home; cd ~/.config/nvim'
alias vimlazy='home; cd ~/.config/nvim/lua/'
alias nvimlazy='home; cd ~/.config/nvim/lua/'
alias vimdata='home; cd ~/.local'
alias vimcache='cd ~/.cache'
alias lazypath='cd ~/.local/share/nvim/lazy/LazyVim'
alias dl='home; cd Downloads'
alias dt='home; cd Desktop'
alias work='dl; cd Projects'
alias neofetch-config='nvim ~/.config/neofetch/config.conf'
alias sudovim='sudo -E nvim' # NvChad
alias neovide='neovide --maximized'
alias clear-vimdata='rm -rf ~/.local/share/nvim && rm -rf ~/.local/state/nvim && rm -rf ~/.cache/nvim && echo "Clear all neovim-data successfully"'

alias env='printenv'

alias this='echo $0'

alias neovideframe='vim $HOME/.config/neovide/config.toml'


# Standard colors
alias echoblack='echo -e "\033[0;30mThis is black text\033[0m"'
alias echored='echo -e "\033[0;31mThis is red text\033[0m"'
alias echogreen='echo -e "\033[0;32mThis is green text\033[0m"'
alias echoyellow='echo -e "\033[0;33mThis is yellow text\033[0m"'
alias echoblue='echo -e "\033[0;34mThis is blue text\033[0m"'
alias echomagenta='echo -e "\033[0;35mThis is magenta text\033[0m"'
alias echocyan='echo -e "\033[0;36mThis is cyan text\033[0m"'
alias echowhite='echo -e "\033[0;37mThis is white text\033[0m"'

# Bright colors
alias echobrightblack='echo -e "\033[1;30mThis is bright black text\033[0m"'
alias echobrightred='echo -e "\033[1;31mThis is bright red text\033[0m"'
alias echobrightgreen='echo -e "\033[1;32mThis is bright green text\033[0m"'
alias echobrightyellow='echo -e "\033[1;33mThis is bright yellow text\033[0m"'
alias echobrightblue='echo -e "\033[1;34mThis is bright blue text\033[0m"'
alias echobrightmagenta='echo -e "\033[1;35mThis is bright magenta text\033[0m"'
alias echobrightcyan='echo -e "\033[1;36mThis is bright cyan text\033[0m"'
alias echobrightwhite='echo -e "\033[1;37mThis is bright white text\033[0m"'

alias echodeepblue='echo -e "\033[38;5;21mThis is deep blue text\033[0m"'
alias echowine='echo -e "\033[38;5;88mThis is wine red text\033[0m"'
alias echoolive='echo -e "\033[38;5;100mThis is olive text\033[0m"'
alias echogray='echo -e "\033[38;5;244mThis is gray text\033[0m"'
alias echopink='echo -e "\033[38;2;255;105;180mThis is pink text\033[0m"'
alias echoskyblue='echo -e "\033[38;2;135;206;235mThis is sky blue text\033[0m"'
alias echogold='echo -e "\033[38;2;255;215;0mThis is gold text\033[0m"'
alias echoteal='echo -e "\033[38;2;0;128;128mThis is teal text\033[0m"'

function colors() {
    echo -e "\033[0;30mThis is black text\033[0m"
    echo -e "\033[0;31mThis is red text\033[0m"
    echo -e "\033[0;32mThis is green text\033[0m"
    echo -e "\033[0;33mThis is yellow text\033[0m"
    echo -e "\033[0;34mThis is blue text\033[0m"
    echo -e "\033[0;35mThis is magenta text\033[0m"
    echo -e "\033[0;36mThis is cyan text\033[0m"
    echo -e "\033[0;37mThis is white text\033[0m"
    echo -e "\033[1;30mThis is bright black text\033[0m"
    echo -e "\033[1;31mThis is bright red text\033[0m"
    echo -e "\033[1;32mThis is bright green text\033[0m"
    echo -e "\033[1;33mThis is bright yellow text\033[0m"
    echo -e "\033[1;34mThis is bright blue text\033[0m"
    echo -e "\033[1;35mThis is bright magenta text\033[0m"
    echo -e "\033[1;36mThis is bright cyan text\033[0m"
    echo -e "\033[1;37mThis is bright white text\033[0m"
    echo -e "\033[38;5;21mThis is deep blue text\033[0m"
    echo -e "\033[38;5;88mThis is wine red text\033[0m"
    echo -e "\033[38;5;100mThis is olive text\033[0m"
    echo -e "\033[38;5;244mThis is gray text\033[0m"
    echo -e "\033[38;2;255;105;180mThis is pink text\033[0m"
    echo -e "\033[38;2;135;206;235mThis is sky blue text\033[0m"
    echo -e "\033[38;2;255;215;0mThis is gold text\033[0m"
    echo -e "\033[38;2;0;128;128mThis is teal text\033[0m"
}

alias color='colors'

alias ccp='pwd | pbcopy'
alias vscode-repeat-key='defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false'
alias vscode-insiders-repeat-key='defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false'
alias ios-sim='open -a simulator'
alias ios-list='xcrun simctl list devices'
alias ios-boot='xcrun simctl boot'
alias ios-showtouch='defaults write com.apple.iphonesimulator ShowSingleTouches 1'
alias ios-hidetouch='defaults write com.apple.iphonesimulator ShowSingleTouches 0'

alias lg='lazygit'
alias docklock='defaults write com.apple.Dock.plist prefersAllDisplays -bool false && echo lock-dock: main-screen'
alias dockdefault='defaults write com.apple.Dock.plist prefersAllDisplays -bool true && echo lock-dock: default'
alias coder='code-insiders .'

# Mac Cleanup
# brew tap fwartner/tap
# brew install fwartner/tap/mac-cleanup
alias mclean='mac-cleanup'

# ╭──────────────────────────────────────────────────────────╮
# │ Metal performance HUD with MangoHUD                      │
# ╰──────────────────────────────────────────────────────────╯
# alias fpson='launchctl setenv MTL_HUD_ENABLED 1'
# alias fpsoff='launchctl setenv MTL_HUD_ENABLED 0'
alias fpson='/bin/launchctl setenv MTL_HUD_ENABLED 1 && echo "Metal Performance HUD ON"'
alias fpsoff='/bin/launchctl setenv MTL_HUD_ENABLED 0 && echo "Metal Performance HUD OFF"'

alias getlocalip='ipconfig getifaddr en0'
alias getip='ipconfig getifaddr en0'
alias hollywoodapp='cls; docker run --rm -it bcbcarl/hollywood'

killport() {
if [[-z "$1"]]; then
echo "Usage: killport <port_number>"
return 1
fi
kill -9 $(lsof -ti tcp:"$1")
}

# demo => killport 3000
alias viewallport='sudo lsof -i -P -n'

# -i shows network connections.
# -P prevents the conversion of port numbers to port names for network files.
# -n prevents the conversion of network numbers to hostnames for network files.

checkport() {
if [[-z "$1"]]; then
echo "Usage: checkport <port_number>"
return 1
fi
sudo lsof -i :$1
}

# To sglpat-jKt6ofxaDTsUhirQqMYCet default password of user ubuntu

# ╭──────────────────────────────────────────────────────────╮
# │ $ sudo passwd ubuntu                                     │
# ╰──────────────────────────────────────────────────────────╯

# Remote
# $ ssh -i /Users/bearydev/Downloads/beary.pem ubuntu@3.0.99.135

# OR
# $ ssh -i /Users/bearydev/Downloads/beary.pem ubuntu@ec2-3-0-99-135.ap-southeast-1.compute.amazonaws.com

# COPY TO
# $ scp -i /Users/bearydev/Downloads/beary.pem ./hoya_academy-api.tar ubuntu@ec2-3-0-99-135.ap-southeast-1.compute.amazonaws.com:/home/ubuntu

# ╭──────────────────────────────────────────────────────────╮
# │ DOCKER                                                   │
# ╰──────────────────────────────────────────────────────────╯
# $ docker run -d --restart unless-stopped --name mysql-server -p 3306:3306 mysql-docker:0.1 --default-authentication-plugin mysql_native_password
# $ docker save imagename > imagename.zip || tar
# $ docker load < imagename.zip || tar

alias docker-stopall='docker ps -q | xargs -r docker stop && echo "Stopped all running containers successfully!"'
alias dockerrmall-container='if [ "$(docker ps -q)" ]; then docker stop $(docker ps -q) && docker rm $(docker ps -q) && echo "Stopped and removed all running containers successfully!"; else echo "No running containers to stop and remove."; fi'
alias dockerrmall-image='docker rmi $(docker images -a -q)'
alias dockerrmconfig='rm -rf /home/bearydevtoylab/.docker/config.json'
alias docker-pruneall='docker system prune -a --volumes -f && echo "Pruned all unused Docker objects successfully!"'

# ╭──────────────────────────────────────────────────────────╮
# │ Build and run combine cli │
# ╰──────────────────────────────────────────────────────────╯
# docker compose up --build --no-cache -d

# ╭──────────────────────────────────────────────────────────╮
# │ Clear Build Cache │
# docker builder prune --all

# ╭──────────────────────────────────────────────────────────╮
# │ Maybe Help when docker can not log in │
# ╰──────────────────────────────────────────────────────────╯
# sudo apt-get install pass

# ╭──────────────────────────────────────────────────────────╮
# │ Docker tutorial │
# ╰──────────────────────────────────────────────────────────╯
# $ docker build -t <imagename>:<version> <path> --no-cache
# $ docker run -p <host_port>:<container_port> <image_name>

# ╭──────────────────────────────────────────────────────────╮
# │ CURL │
# ╰──────────────────────────────────────────────────────────╯
# GET
# curl https://reqres.in/api/users
# "curl https://reqres.in/api/users?page=2"

# POST
# curl -X POST -H "Content-Type: application/json" -d '{ "name": "morpheus", "job": "leader" }' https://reqres.in/api/users

# ╭──────────────────────────────────────────────────────────╮
# │ FZF path to folder │
# ╰──────────────────────────────────────────────────────────╯
eval "$(fzf --zsh)"

cd_with_fzf() {
local dir
dir=$(find * -type d -print 2> /dev/null | fzf +m)
    if [[ -n $dir ]]; then
        cd "$dir"
fi
}

# Bind the function to a key or alias for convenience

alias ff='cd_with_fzf'


# ╭──────────────────────────────────────────────────────────╮
# │ TMUX │
# ╰──────────────────────────────────────────────────────────╯
export PATH=$PATH:/opt/homebrew/bin/tmux

# alias tm='tmux attach -t TMUX || tmux new -s TMUX'
alias tm="tmux new-session -A -s TMUX;"
alias tmconfig="nvim ~/.tmux.conf"
alias tm-sname="tmux rename-session -t"

# Function to kill a specific tmux window
function tmkillw() {
  if [ -z "$1" ]; then
    echo "Usage: tmkillw <window_number>"
    return 1
  fi
  tmux kill-window -t $1
}

# Function to kill a specific tmux session
function tmkills() {
  if [ -z "$1" ]; then
    echo "Usage: tmkills <session_name>"
    return 1
  fi
  tmux kill-session -t $1
}
# Function to check if tmux is active
function is_tmux_active() {
  if [ -z "$TMUX" ]; then
    echo "false"
  else
    echo "true"
  fi
}

# Alias to use the function
alias tmux-active="is_tmux_active"

if [ "$(is_tmux_active)" = "false" ]; then
    tmux new-session -A -s TMUX;
fi

# Check if inside a tmux session; if not, start one.
# if [ -z "$TMUX" ]; then
#   tm
# fi

# ╭──────────────────────────────────────────────────────────╮
# │ tmux plugins management │
# ╰──────────────────────────────────────────────────────────╯
# $ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# chmod +x ~/.tmux/plugins/tpm/tpm
# or
# chmod -R u+rwX ~/.tmux/plugins/tpm

# ╭──────────────────────────────────────────────────────────╮
# │ tmux install plugins │
# ╰──────────────────────────────────────────────────────────╯
# Afterplace repo in ~/.tmux.conf
# prefix + shift + i
#
# ╭──────────────────────────────────────────────────────────╮
# │ tmux short key │
# ╰──────────────────────────────────────────────────────────╯

# prefix c = Create new window
# prefix [num] = change to window
# prefix , = rename window name
# prefix [n , p] = next and previous window
# prefix s = view all session
# prefix w = view all window
# prefix [ = enter vi mode

# = use jk or JK vim and can select to copy with v and y that we config
# = ctrl u - go up half a page
# = ctrl d - go down half a page
# = ctrl b - go back a full page
# = ctrl f - go forward a full page

# ╭──────────────────────────────────────────────────────────╮
# │ tmux commands │
# ╰──────────────────────────────────────────────────────────╯

# Create new session
# $ tmux new -s mysession
# alias tmfc='tmux new -s TMUX' # tmux fast create session

# Attach to session
# $ tmux a -t mysession

# Kill current
# prefix and &

# Kill session
# $ tmux kill-session -t mysession

# Kill all sessions
# $ tmux kill-server
alias killtm='tmux kill-server'
# List sessions

# $ tmux ls


# $ tmux kill-window -t window-name
# $ tmux kill-window -t :window-index
# tmwkill() {
#   tmux kill-window -t "$1"
# }
# alias tmwkill='tmwkill'

# Rename sessions
# $ tmux rename-session -t mysession mynewsession


# ╭──────────────────────────────────────────────────────────╮
# │ Bun                                                      │
# ╰──────────────────────────────────────────────────────────╯
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
# ╭──────────────────────────────────────────────────────────╮
# │ Bun completions                                          │
# ╰──────────────────────────────────────────────────────────╯
[ -s "/Users/bearydevtoylab/.bun/_bun" ] && source "/Users/bearydevtoylab/.bun/_bun"
# ╭──────────────────────────────────────────────────────────╮
# │ Bun check globle installed list                          │
# ╰──────────────────────────────────────────────────────────╯
alias bunglobal-list='bun pm ls -g'

# ╭──────────────────────────────────────────────────────────╮
# │ Bun check for outdated dependencies in project:          │
# ╰──────────────────────────────────────────────────────────╯
# $ bun upgrade --dry-run

# ╭──────────────────────────────────────────────────────────╮
# │ Bun update the dependencies to the latest version        │
# ╰──────────────────────────────────────────────────────────╯
# $ bun upgrade

# ╭──────────────────────────────────────────────────────────╮
# │ Bun update specific dependencies                         │
# ╰──────────────────────────────────────────────────────────╯
# $ bun upgrade <package-name>

# ╭──────────────────────────────────────────────────────────╮
# │ PostgreSQL                                               │
# ╰──────────────────────────────────────────────────────────╯
create_docker_postgresql() {
  local container_name=$1
  local password=$2
  local db_name=$3

  if [ -z "$container_name" ] || [ -z "$password" ] || [ -z "$db_name" ]; then
    echo -e "\033[1m\033[1;31mError: \033[0m\033[0m\033[1m\033[38;2;255;215;0mUsage-> \033[0m\033[0mcreate_docker_postgresql <container_name> <password> <db_name>"
    return 1
  fi

  docker run --name "$container_name" -e POSTGRES_PASSWORD="$password" -e POSTGRES_DB="$db_name" -d -p 5432:5432 postgres
}

alias create-docker-postgresql=create_docker_postgresql
# create_docker_postgresql my_container my_password my_database

# ╭──────────────────────────────────────────────────────────╮
# │ Android Emulator                                         │
# ╰──────────────────────────────────────────────────────────╯
# Android SDK
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias android-path='cd /Users/bearydevtoylab/Library/Android/sdk'
alias listavd='emulator -list-avds'
alias runavd='emulator -avd'

# ╭──────────────────────────────────────────────────────────╮
# │ Host                                                     │
# ╰──────────────────────────────────────────────────────────╯
alias hostmac='sudovim /etc/hosts'

# ╭──────────────────────────────────────────────────────────╮
# │ Arc StorableSidebar.json                                 │
# ╰──────────────────────────────────────────────────────────╯
alias arcstore='cd /Users/bearydevtoylab/Library/Application\ Support/Arc'

# ╭──────────────────────────────────────────────────────────╮
# │ Python                                                   │
# ╰──────────────────────────────────────────────────────────╯
alias python='python3'
alias py='python3'

# ╭──────────────────────────────────────────────────────────╮
# │ FFmpeg                                                   │
# ╰──────────────────────────────────────────────────────────╯
alias convertwebp='ffmpeg -i $1 -vf scale=1000:-1 -vcodec libwebp -compression_level 1 -qscale 80 %d.webp'
# demo use convertwebp pathToFile.mp4


# ╭──────────────────────────────────────────────────────────╮
# │ Alacritty                                                │
# ╰──────────────────────────────────────────────────────────╯
alias aconfig='apath; nvim ~/.config/alacritty/alacritty.toml'
alias apath='cd ~/.config/alacritty'
# History Alacritty or others terminal setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history 
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
# demo use : nvim ...use arrow

# ╭──────────────────────────────────────────────────────────╮
# │ dotfile backup                                           │
# ╰──────────────────────────────────────────────────────────╯
alias dlconfigfirst='rm -rf ~/dotfile/.config'
alias bkconfig='cp -rvf ~/.config ~/dotfile && echo "\033[1;36m **.config copy success\033[0m"'
alias bkp10='cp -rvf ~/.p10k.zsh ~/dotfile && echo "\033[1;36m **.p10k.zsh copy success\033[0m"'
alias bktmux='cp -rvf ~/.tmux.conf ~/dotfile && echo "\033[1;36m **.tmux.conf copy success\033[0m"'
alias bkzsh='cp -rvf ~/.zshrc ~/dotfile && echo "\033[1;36m **.zshrc copy success\033[0m"'
alias bkneofetchcustom='cp -rvf ~/neofetch-custom.txt ~/dotfile && cp -rvf ~/neofetch-custom2.txt ~/dotfile && echo "\033[1;36m **neofetch-custom.txt copy success\033[0m"'
alias store-iterm2-all-config='cp ~/Library/Preferences/com.googlecode.iterm2.plist ~/dotfile && echo "\033[1;36m **com.googlecode.iterm2.plist copy success\033[0m"'
alias bkwakatime='cp -rvf ~/.wakatime ~/dotfile && echo "\033[1;36m **.wakatime copy success\033[0m"'
alias bkgitconfig='cp -rvf ~/.gitconfig ~/dotfile && echo "\033[1;36m **.gitconfig copy success\033[0m"'

alias restore-iterm2-config='cp ~/dotfile/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist'

alias dotfile='cd ~/dotfile/'

alias afterDone='cd ~/dotfile; gs; gaa; gc; gp; home; cls; echo -e DOTFILE STORE SUCCESS'
alias afterStore='echo -e "\033[38;2;255;215;0mALL SCRIPT BACKUP IS DONE, Please commit state\033[0m"; sleep 2; afterDone'

alias store-dotfile='home; dlconfigfirst; bkconfig; bkp10; bktmux; bkzsh; bkneofetchcustom; bkwakatime; bkgitconfig; store-iterm2-all-config; afterStore'

alias minfo='echo -e "\033[1;31m🅷 🅸 \033[0m \033[1;38;2;255;215;0m🅱 🅴 🅰 🆁 🆈 , \033[38;2;255;105;180m🅷 🅰 🅿 🅿 🆈 \033[0m \033[1;38;2;148;0;211m🅲 🅾 🅳 🅸 🅽 🅶 .\033[0m"' # Bold font

function show_info() {
  echo -e ""
  echo -e "  \033[1m \033[1;36m🅲 🅾 🅼 🅿 🅰 🅽 🆈 : \033[0m \033[1m\033[38;2;255;215;0m🆃 🅾 🆈 🅻 🅰 🅱  🅲 🅾 .,🅻 🆃 🅳 .\033[0m\033[0m"
  echo -e "  \033[1m \033[1;31m🅳 🅴 🆅 🅴 🅻 🅾 🅿 🅴 🆁 : \033[0m \033[1m\033[1;36m🆃 🅴 🅴 🆁 🅰 🅿 🅰 🆃 \033[0m \033[1;32m🆆 🅰 🆂 🆂 🅰 🆅 🅰 🅽 🅸 🅲 🅷 \033[0m \033[1m\033[38;5;244m(🅱 🅴 🅰 🆁 🆈 )\033[0m \033[0m "
  echo -e "  \033[1m \033[1;35m🅴.🅼.🅰.🅸.🅻.: \033[0m \033[1m \033[38;2;135;206;235m🆃.🅴.🅴.🆁.🅰.🅿.🅰.🆃..🆃.🅴.🅲.🅷.@🅶.🅼.🅰.🅸.🅻..🅲.🅾.🅼.\033[0m \033[0m"
  echo -e "  \033[1m 🅸.🅳.🅴.: \033[0;33m \033[1m🅽.🅴.🅾.🆅.🅸.🅼.\033[0m \033[0m"
  echo -e "  \033[1m \033[38;2;255;105;180m🆁.🅾.🅻.🅴.:  \033[0m\033[1m\033[38;5;21m🆂.🅾.🅵.🆃.🆆.🅰.🆁.🅴. 🅳.🅴.🆅.,\033[0m \033[1m \033[38;5;88m🅲 🅴 🅳 \033[0m \033[0m"
  echo -e ""
  echo -e "  \033[1;31m 🅷 🅸 \033[0m \033[1;38;2;255;215;0m🅱 🅴 🅰 🆁 🆈 , \033[1m\033[0m\033[38;2;255;105;180m\033[1m 🅷 🅰 🅿 🅿 🆈 \033[0m \033[1m \033[1;38;2;148;0;211m🅲 🅾 🅳 🅸 🅽 🅶 .\033[0m"
  echo -e ""
}

function show_info_random() {
  # Generate random colors avoiding color code 0 (black)
  company_color=$((1 + $RANDOM % 220))
  company2_color=$((1 + $RANDOM % 220))
  developer_color=$((1 + $RANDOM % 220))
  developer2_color=$((1 + $RANDOM % 220))
  developer3_color=$((1 + $RANDOM % 220))
  developer4_color=$((1 + $RANDOM % 220))
  email_color=$((1 + $RANDOM % 220))
  email2_color=$((1 + $RANDOM % 220))
  ide_color=$((1 + $RANDOM % 220))
  ide2_color=$((1 + $RANDOM % 220))
  role_color=$((1 + $RANDOM % 220))
  role2_color=$((1 + $RANDOM % 220))
  role3_color=$((1 + $RANDOM % 220))
  greeting_color=$((1 + $RANDOM % 220))
  greeting2_color=$((1 + $RANDOM % 220))
  greeting3_color=$((1 + $RANDOM % 220))
  greeting4_color=$((1 + $RANDOM % 220))

  echo -e ""
  echo -e "  \033[1m \033[38;5;${company_color}m🅲 🅾 🅼 🅿 🅰 🅽 🆈 : \033[0m\033[1m\033[38;5;${company2_color}m🆃 🅾 🆈 🅻 🅰 🅱  🅲 🅾 .,🅻 🆃 🅳 .\033[0m .\033[0m"
  echo -e "  \033[1m \033[38;5;${developer_color}m🅳 🅴 🆅 🅴 🅻 🅾 🅿 🅴 🆁 : \033[0m\033[1m\033[38;5;${developer2_color}m🆃 🅴 🅴 🆁 🅰 🅿 🅰 🆃 \033[0m \033[1m\033[38;5;${developer3_color}m🆆 🅰 🆂 🆂 🅰 🆅 🅰 🅽 🅸 🅲 🅷 \033[0m \033[1m\033[38;5;${developer4_color}m(🅱 🅴 🅰 🆁 🆈 )\033[0m"
  echo -e "  \033[1m \033[38;5;${email_color}m🅴.🅼.🅰.🅸.🅻.: \033[0m\033[1m \033[38;5;${email2_color}m🆃.🅴.🅴.🆁.🅰.🅿.🅰.🆃..🆃.🅴.🅲.🅷.@🅶.🅼.🅰.🅸.🅻..🅲.🅾.🅼.\033[0m"
  echo -e "  \033[1m \033[38;5;${ide_color}m🅸.🅳.🅴.: \033[0m\033[1m \033[38;5;${ide2_color}m🅽.🅴.🅾.🆅.🅸.🅼.\033[0m"
  echo -e "  \033[1m \033[38;5;${role_color}m🆁.🅾.🅻.🅴.: \033[0m\033[1m\033[38;5;${role_color}m🆂.🅾.🅵.🆃.🆆.🅰.🆁.🅴. 🅳.🅴.🆅.,\033[0m \033[1m\033[38;5;${role_color}m🅲 🅴 🅳 \033[0m"
  echo -e ""
  echo -e "  \033[1m \033[38;5;${greeting_color}m🅷 🅸 \033[0m \033[1m\033[38;5;${greeting2_color}m🅱 🅴 🅰 🆁 🆈 ,\033[0m \033[1m\033[38;5;${greeting3_color}m🅷 🅰 🅿 🅿 🆈 \033[0m \033[1m\033[38;5;${greeting_color}m🅲 🅾 🅳 🅸 🅽 🅶 \033[0m"
  echo -e ""
}

alias showinfo='show_info'
alias showinforandom='show_info_random'

# ╭──────────────────────────────────────────────────────────╮
# │ #Git │
# ╰──────────────────────────────────────────────────────────╯

# type gg to use git gui

alias g='git'
alias gs='git status -s'
alias gaa='git add .'
alias ga='git add'
alias gp='git push'
alias gb='git branch'
alias gsw='git switch'
alias gres='git reset --hard'
alias gc='git commit'
alias gpu='git pull'
alias gf='git fetch'
alias gll='git log'
alias glls='git log --stat'
alias gllp='git log --patch'
alias gl='git log --oneline --all --graph'
alias gls='git log --oneline --stat'
alias glp='git log --oneline --patch'
alias glr='git log --oneline --reverse'
alias gus='git restore --staged'
alias gbprune='git checkout main && git branch | grep -v "^\*" | grep -v "main" | xargs git branch -D'
alias gcgl='git config --global --list' # or cat ~/.gitconfig
alias gcg='git config --global -e'
alias gd='git diff'
alias gco='git checkout' # git checkout branchName || git checkout -b branchName || git checkout HEAD fileName.[filesignature]txt, js, ts
alias gre='git restore'
alias gmer='git merge'
alias gdeploy='git status -s; git add .; git commit; git push'

alias ccp='pwd | pbcopy'
alias vscode-repeat-key='defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false'
alias vscode-insiders-repeat-key='defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false'
alias ios-sim='open -a simulator'
alias ios-list='xcrun simctl list devices'
alias ios-boot='xcrun simctl boot'
alias ios-showtouch='defaults write com.apple.iphonesimulator ShowSingleTouches 1'
alias ios-hidetouch='defaults write com.apple.iphonesimulator ShowSingleTouches 0'

alias lg='lazygit'
alias docklock='defaults write com.apple.Dock.plist prefersAllDisplays -bool false && echo lock-dock: main-screen'
alias dockdefault='defaults write com.apple.Dock.plist prefersAllDisplays -bool true && echo lock-dock: default'
alias coder='code-insiders .'

# ╭──────────────────────────────────────────────────────────╮
# │ Android Platform Tools                                   │
# ╰──────────────────────────────────────────────────────────╯
alias adbcheckbattery='cd ~/Downloads/platform-tools/ && ./adb shell dumpsys battery'
# mSavedBatteryAsoc => This is battery health percentage

# ╭──────────────────────────────────────────────────────────╮
# │ GCloud                                                   │
# ╰──────────────────────────────────────────────────────────╯
# Must downloads binary from https://cloud.google.com/sdk/docs/install

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/bearydev/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/bearydev/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/bearydev/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/bearydev/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
alias gcloud-login='gcloud auth login'
alias gcloud-activate-docker='gcloud auth configure-docker asia-southeast1-docker.pkg.dev'
alias gcloud-update='gcloud components update'

# Tagging the local image
#   LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY/IMAGE
  # demo path like breadcrumb from of current at google-cloud
  #   $ docker build -t asia-southeast1-docker.pkg.dev/easy-commerce-workshop/example-backend <dockerfile path or current use .>


# ╭──────────────────────────────────────────────────────────╮
# │ AeroSpace                                                │
# ╰──────────────────────────────────────────────────────────╯
# $ brew install --cask nikitabobko/tap/aerospace

# Create directory
# $ mkdir -p ~/.config/aerospace
# $ cd ~/.config/aerospace && touch aerospace.toml

# ╭──────────────────────────────────────────────────────────╮
# │ C#                                                       │
# ╰──────────────────────────────────────────────────────────╯
# run app in console
# $ dotnet run
alias create-dotnet-console-app='dotnet new console -n' # dotnet new console -n AppName

# ╭──────────────────────────────────────────────────────────╮
# │ InkDrop                                                  │
# ╰──────────────────────────────────────────────────────────╯

# ╭──────────────────────────────────────────────────────────╮
# │ Mac Fix mic-vol                                          │
# ╰──────────────────────────────────────────────────────────╯
# alias set-mic-vol='osascript -e "set volume input volume 85"'

function set-mic() {
  if [ -z "$1" ]; then
    echo "Please provide a volume level (0-100)."
  else
    osascript -e "set volume input volume $1"
  fi
}

alias set-mic-vol='set-mic'

# ╭──────────────────────────────────────────────────────────╮
# │ Expo                                                     │
# ╰──────────────────────────────────────────────────────────╯
# $ bun install -g eas-cli 
#
# // EAS CLI is used to log in to your Expo account and compile your app using different EAS services such as Build, Update, or Submit. You can also use this tool to:
# Publish your app to the app stores
# Create a development, preview, or production build of your app
# Create over-the-air (OTA) updates
# Manage your app credentials
# Create an ad hoc provisioning profile for an iOS device


# $ brew install expo-orbit

# // Orbit is a macOS and Windows app that enables:
# Install and launch builds from EAS on physical devices and emulators.
# Install and launch updates from EAS on Android Emulators or iOS Simulators.
# Launch snack projects on Android Emulators or iOS Simulators.
# Use local files to install and launch apps. Orbit supports any Android .apk, iOS Simulator compatible .app, or ad hoc signed apps.
# See a list of pinned projects from your EAS dashboard.

# $ bunx expo-doctor

# // Expo Doctor is a command line tool used to diagnose issues in your Expo project. To use it, run the following command in your project's root directory:

# ╭──────────────────────────────────────────────────────────╮
# │ Pod                                                      │
# ╰──────────────────────────────────────────────────────────╯
export PATH=$HOME/.gem/bin:$PATH

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# ╭──────────────────────────────────────────────────────────╮
# │ Neovim                                                   │
# ╰──────────────────────────────────────────────────────────╯
alias nvim-clear-lsplog='rm -rf /Users/bearydevtoylab/.local/state/nvim/lsp.log && echo "Clear lsp.log successfully"'

# ╭──────────────────────────────────────────────────────────╮
# │ ZSH Additionals config for macOS │
# ╰──────────────────────────────────────────────────────────╯
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

cls
