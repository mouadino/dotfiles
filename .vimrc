" Use ag for Ack command..
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

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
noremap <leader>ss :call StripWhitespace()<CR>

" Different other plugins.
call plug#begin('~/.vim/plugged')

source ~/.vim/plug/main.vim
source ~/.vim/plug/clojure.vim
source ~/.vim/plug/golang.vim
source ~/.vim/plug/typescript.vim
source ~/.vim/plug/rust.vim
source ~/.vim/plug/bash.vim

call plug#end()

filetype plugin indent on