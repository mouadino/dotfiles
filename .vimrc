" Use ag for Ack command..
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

filetype plugin indent on

" Use OSX clipboard by default.
set clipboard=unnamed

" Enhance command-line completion.
set wildmenu

" Don’t add empty newlines at the end of files.
set binary
set noeol

" Centralize backups, swapfiles and undo history.
set backupdir=~/.vim/backups
set directory=~/.vim/swaps

" Enable line numbers
set number

" Make tabs as wide as two spaces
set tabstop=2
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

" Highlight searches
set hlsearch

" Disable error bells
set noerrorbells

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction

" Different other plugins.
call plug#begin('~/.vim/plugged')

source ~/.vim/plug/main.vim
source ~/.vim/plug/clojure.vim
source ~/.vim/plug/golang.vim
source ~/.vim/plug/typescript.vim
source ~/.vim/plug/javascript.vim
source ~/.vim/plug/rust.vim
source ~/.vim/plug/bash.vim
source ~/.vim/plug/html.vim

call plug#end()

" Enable airline dark solarized.
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" Enable Syntastic.
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Mapped keys.
:nmap <silent> <leader>d <Plug>DashSearch