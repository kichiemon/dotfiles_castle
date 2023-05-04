#export PS1='\[\e[33m\e[4m\]\w \[\e[0m\]\[\e[32m\e[4m\]$(__git_ps1 "(%s)")\[\e[0m\]\n\u  '

set -x PATH $HOME/.pub-cache/bin $PATH


# flutter
set -x FLUTTER_PATH (asdf where flutter)
set -x FLUTTER_ROOT "$FLUTTER_PATH"
set -x PATH (asdf where flutter) $PATH

# android
set -x PATH ~/Library/Android/sdk/platform-tools $PATH

set -U fish_user_paths $fish_user_paths $HOME/.cargo/bin


# FZF keybinding
set -U FZF_LEGACY_KEYBINDINGS 0

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '.'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

# alias ----------
## git
alias ls='ls -ax1FG'


# 大文字小文字を区別しない
#shopt -s nocaseglob

set -g fish_user_paths "/usr/local/opt/icu4c/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/icu4c/sbin" $fish_user_paths

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/__tabtab.fish ]; and . ~/.config/tabtab/__tabtab.fish; or true

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.fish.inc' ]; . '~/google-cloud-sdk/path.fish.inc'; end

source /usr/local/opt/asdf/libexec/asdf.fish

source "$HOME/.homesick/repos/homeshick/homeshick.fish"
