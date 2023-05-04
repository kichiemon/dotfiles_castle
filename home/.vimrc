" dain.vimの設定
let s:config_dir = '~/.config/vim'

" load *.vim
function s:source_rc(path) abort
    let abspath = resolve(expand(s:config_dir . '/' . a:path))
    if filereadable(abspath)
        execute 'source' abspath
        return
    endif
endfunction

call s:source_rc('init.vim')
call s:source_rc('editor.vim')
call s:source_rc('mapping.vim')

"ファイルタイプ設定をオンにする
filetype on
filetype plugin on
filetype indent on
