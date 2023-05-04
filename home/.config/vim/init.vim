" vim-plugがなかったらインストール
" vim-plugの使い方 (https://github.com/junegunn/vim-plug)
" :PlugInstall :PlugUpdate :PlugClean :PlugStatus
if empty(glob('~/.vim/autoload/plug.vim'))
  " https://github.com/junegunn/vim-plug#unix
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"  set statusline+=%#warningmsg#
"  set statusline+=%{SyntasticStatuslineFlag()}
"  set statusline+=%*
let g:ale_completion_enabled = 1

" |~=====================|
" | Start install plugin |
" |~=====================|
call plug#begin('~/.vim/plugged')

" ALE (Asynchronous Lint Engine) https://github.com/dense-analysis/ale
Plug 'dense-analysis/ale'

" Swift
" Plug 'keith/swift.vim', { 'for': 'swift' }

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" LSP
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-lsp-icons'
"  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"  Plug 'hrsh7th/vim-vsnip'
"  Plug 'hrsh7th/vim-vsnip-integ'

" Use release branch
"  Plug 'neoclide/coc.nvim', {'branch': 'release'}

"  Plug 'Shougo/ddc.vim', { 'do': 'InsertEnter' } " ddc.vim本体
"  Plug 'vim-denops/denops.vim' " DenoでVimプラグインを開発するためのプラグイン
"  Plug 'Shougo/ddc-ui-native'
"  Plug 'Shougo/ddc-around' " カーソル周辺の既出単語を補完するsource
"  Plug 'Shougo/ddc-source-around'
"  Plug 'Shougo/ddc-matcher_head' " 入力中の単語を補完の対象にするfilter
"  Plug 'Shougo/ddc-sorter_rank' " 補完候補を適切にソートするfilter
"  Plug 'Shougo/pum.vim' " ポップアップウィンドウを表示するプラグイン
"  Plug 'LumaKernel/ddc-file' " ファイル名を補完するsource
"  Plug 'Shougo/ddc-converter_remove_overlap' " 補完候補の重複を防ぐためのfilter
"  Plug 'shun/ddc-vim-lsp'


"  Plug 'rust-lang/rust.vim', { 'for': 'rs' }
" let g:rustfmt_autosave = 1

" JSON
Plug 'elzr/vim-json', { 'for': 'json' }
" markdown preview
Plug 'kannokanno/previm', { 'for': 'md' }
let g:previm_custom_css_path = '~/.config/vim/plugins/previm_markdown.css'
let g:previm_open_cmd = 'open -a Safari'
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

" select file,dir
Plug 'scrooloose/nerdtree' , { 'on': 'NERDTreeToggle' }
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" 括弧の保管
"  Plug 'cohama/lexima.vim'
Plug 'jiangmiao/auto-pairs'

" 構文チェック
Plug 'w0rp/ale'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 0
let g:ale_fixers = {
      \ 'javascript': ['prettier', 'eslint'],
      \ 'typescript': ['prettier', 'eslint'],
      \ 'python': ['autopep8', 'isort'],
      \ 'markdown': [
      \   {buffer, lines -> {'command': 'textlint -c ~/.config/textlintrc -o /dev/null --fix --no-color --quiet %t', 'read_temporary_file': 1}}
      \   ],
      \ 'Dockerfile': ['dockerfile_lint', 'hadolint'],
      \ 'scss': ['stylelint']
      \ }
let g:ale_fix_on_save = 1

" Lineのハイライト
"  Plug 'junegunn/limelight.vim'
"  nmap <Leader>l <Plug>(Limelight)
"  xmap <Leader>l <Plug>(Limelight)
"  let g:limelight_conceal_ctermfg = 'gray'
"  let g:limelight_conceal_ctermfg = 240

" カラースキーマ
Plug 'logico/typewriter-vim', { 'for': ['txt', 'md'] }
Plug 'junegunn/goyo.vim' , { 'for': ['txt', 'md'] }
Plug 'junegunn/limelight.vim' , { 'for': ['txt', 'md'] }
autocmd BufEnter *.md colorscheme typewriter
autocmd BufEnter *.txt colorscheme typewriter
" Set typewriter airline theme
let g:airline_theme = 'typewriter'
" Activate FOCUS mode with F12
nmap <F12> :Goyo <bar> Limelight!!<CR>"
" Change the cursor from block to i-beam in INSERT mode
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
augroup myCmds
  au!
  autocmd VimEnter * silent !echo -ne "\e[1 q"
augroup END

" 構文のハイライト
Plug 'sheerun/vim-polyglot'

" gitの差分
Plug 'airblade/vim-gitgutter'

" コメントアウト gcc
Plug 'tpope/vim-commentary'

"  ぬるぬるスクロール
Plug 'yuttie/comfortable-motion.vim'

"  Git上位互換
Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf.vim'

call plug#end()
" |=====================|
" |  End install plugin |
" |=====================|
"
" if executable('go-langserver')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'go-langserver',
"         \ 'cmd': {server_info->['go-langserver', '-gocodecompletion']},
"         \ 'whitelist': ['go'],
"         \ })
"     let g:go_def_mode='gopls'
"     let g:go_info_mode='gopls'
"     autocmd BufWritePre *.go LspDocumentFormatSync
"     autocmd FileType go setlocal noexpandtab
"     autocmd FileType go setlocal omnifunc=lsp#complete
"     autocmd FileType go nmap <C-]> :LspDefinition<CR>
"     autocmd FileType go nmap K :LspHover<CR>
" endif

"  if executable('rls')
"      au User lsp_setup call lsp#register_server({
"          \ 'name': 'rls',
"          \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
"          \ 'workspace_config': {'rust': {'clippy_preference': 'on'}},
"          \ 'whitelist': ['rust'],
"          \ })
"  endif

" syntax 


let mapleader = ','
let base16colorspace=256

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
