export PS1='\[\e[33m\e[4m\]\w \[\e[0m\]\[\e[32m\e[4m\]$(__git_ps1 "(%s)")\[\e[0m\]\n\u  '

# path ---------- 

export PATH=/usr/local/bin:$PATH
export RBENV_ROOT=/usr/local/var/rbenv
export ANDROID_HOME=/usr/local/opt/android-sdk
export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk
export VIM_HOME=/usr/local/bin:/usr/bin

# 色
export LSCOLORS=gxfxcxdxbxegedabagacad

# JAVA
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
# JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# alias ---------- 

# cd 移動系
alias ..='cd ../'
alias ....='cd ../../'
alias desktop='cd ~/desktop'
alias ganma='cd ~/comic/ganma.local'
alias cdplay='cd ~/comic/ganma.local/share.dev/app/play'
alias cdportal='cd ~/comic/ganma.local/share.dev/app/portals'
alias cdweb2='cd ~/comic/ganma.local/share.dev/app/web2'
alias cdios='cd ~/comic/reader2-ios'
alias cdandroid='cd ~/comic/reader2-android'
alias cdtsubu='cd ~/comic/tsubuyaki/tsubuyaki.local'
alias cddotsubu='cd ~/comic/tsubuyaki/tsubuyaki.local/share.dev/app/dotsubu'
alias memo='cd ~/Documents/memo/'
alias rm='trash'
alias brew="env PATH=${PATH/\/Users\/username\/\.pyenv\/shims:/} brew"

# git
alias ls='ls -laFG'
alias g='git'
alias gcm='git commit -m'
alias gpl='git push'
alias gps='git push'
alias gco='git checkout'

# play
alias play='activator'

# その他コマンド補助
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'
alias safari='open -a Safari'
alias firefox='open -a Firefox'
alias chrome='open -a Google\ Chrome'
alias prev='open -a Preview'
alias server='cd /Applications/XAMPP/xamppfiles/test'
alias ggsync='java -jar ~/WorkSpace/ggsync/bin/GGsync.jar ~/WorkSpace/ggsync/bin'
alias be='bundle exec'
alias play=$PLAY_HOME

# 大文字小文字を区別しない
shopt -s nocaseglob

export HISTSIZE=50000
export HISTFILESIZE=10000

# git
. ~/WorkSpace/git/contrib/completion/git-completion.bash
. ~/WorkSpace/git/contrib/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk

export PATH="$HOME/.cargo/bin:$PATH"
