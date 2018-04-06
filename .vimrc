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
" Utilities.
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'mileszs/ack.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
" Write markdown and RestText distraction free.
" :Goyo to open zen mode.
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
" Comment code:
" gcc: Comment a line.
" gcap: Comment a paragraph.
" Visual select + gc to comment selected text.
Plug 'tpope/vim-commentary'

call plug#end()

if filereadable(glob("~/.vimrc.local")) 
    source ~/.vimrc.local
endif