"単語検索のとき、対象文字列にハイライトをつける
set hlsearch

"行番号を降る
set number

"右側で折り返すかどうか
"set wrap
set wrap

"vimでトラックパッドスクロールを有効にする
set mouse=a
set ttymouse=xterm2
"set clipboard=unnamed

"タブを表示するときの幅
set tabstop=2

"タブを挿入するときの幅
set shiftwidth=2


"クリップボードの共有
set clipboard=unnamed,autoselect

"タブをスペースにする
set expandtab
retab
set ts=2

"保存時に行末のスペースを削除
"autocmd BufWritePre *:%s/\s\+$//ge

"括弧を自動補完してインデント
" inoremap {<Enter> {}<Left><CR><ESC><S-o>
" inoremap [<Enter> []<Left><CR><ESC><S-o>
" inoremap (<Enter> ()<Left><CR><ESC><S-o>)]}


"<---------見た目------------->

"色づけを有効にする
syntax on

"配色を変更する
" colorscheme jellybeans
"colorscheme hybrid
"colorscheme badwolf
"colorscheme gruvbox
"set background=dark
"" Setting dark mode"


"<---------Markdownb設定---------->

" md as markdown, instead of modula2
"autocmd MyAutoGroup BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set
"filetype=markdown

"let g:vim_markdown_liquid=1
"let g:vim_markdown_frontmatter=1
"let g:vim_markdown_math=1
"au BufRead,BufNewFile *.{txt,text} set filetype=markdown

"let g:previm_open_cmd = 'open -a Safari' 


"<---------backspace有効化---------->
set backspace=2

"<---------cron動かすために設定---------->
"set backupskip=/tmp/*,/private/tmp/*

"<---------ファイル情報の可視化--------->
set laststatus=2

"<---------コマンドの候補を複数にする--------->
set wildmenu

"<---------undo/redoの永続化---------->
if has('persistent_undo')
    if !isdirectory("~/.vim/undo")
        call mkdir("~/.vim/undo", "p")
    endif
	let undo_path = expand('~/.vim/undo')
	exe 'set undodir=' .. undo_path
	set undofile
endif