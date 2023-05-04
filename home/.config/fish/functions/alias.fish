function fish_alias 

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
alias rm='rmtrash'

# git
alias ls='ls -ax1FG'
alias g='git'
alias gcm='git commit -m'
alias gpl='git push'
alias gps='git push'
alias gco='git checkout'

# play
alias play='activator'

# その他コマンド補助
alias cp='cp -i'
#alias rm='rm -i'
alias mv='mv -i'
alias safari='open -a Safari'
alias firefox='open -a Firefox'
alias chrome='open -a Google\ Chrome'
alias prev='open -a Preview'
alias ggsync='java -jar /Users/i_terasaka/work/googleCalendar/ggsync/bin/GGsync.jar /Users/i_terasaka/work/googleCalendar/ggsync/bin'
alias be='bundle exec'
alias play=$PLAY_HOME
alias record='xcrun simctl io booted recordVideo'


end
