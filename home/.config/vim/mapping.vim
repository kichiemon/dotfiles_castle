" <==============
" キーマップの設定方法

" normal mode
" nnoremap a b

" visual mode
" vnoremap a b

" insert mode
" inoremap a b
" ==============>


"jjで挿入モードから抜ける
inoremap <silent> jj <ESC>
inoremap <C-e> <ESC>

"挿入モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>


"j,kによる移動を、折り返されたテキストでも自然に振る舞うようにする
nnoremap j gj
nnoremap k gk

" 数字のカウントアップ/ダウン 1 2 3
nnoremap + <C-A>
nnoremap - <C-X>

" 行を動かす
nnoremap <S-A-Down> dd

" ディレクトリを開く
nnoremap <silent> <D-b> :NERDTreeToggle<Return>
nnoremap <silent> <D-e> :NERDTreeToggle<Return>

nnoremap <D-_> <Plug>CommentaryLine
inoremap <D-_> <Plug>CommentaryLine
vnoremap <D-_> <Plug>CommentaryLine

nnoremap <C-e> :oldfiles<Enter>

" cocの利用
"  nmap <silent> gd <Plug>(coc-definition)


