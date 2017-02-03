" VIMRC

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" " Add all your plugins here (note older versions of Vundle used Bundle instead
" of Plugin)
"""Plugin 'nvie/vim-flake8'
"""Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
"vim airline is faster than pwoerline
"Bundle 'bling/vim-airline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/indentpython.vim'
"Bundle 'Valloric/YouCompleteMe'

" " All of your Plugins must be added before the following line
call vundle#end()            " required


"Hide .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

" enter the current millenium
set nocompatible

"Syntax
set background=dark


" FINDING FILES:

" " Search down into subfolders
" " Provides tab-completion for all file-related tasks
set path+=**

" " Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" " - Hit tab to :find by partial match
" " - Use * to make it fuzzy
"
" " THINGS TO CONSIDER:
" " - :b lets you autocomplete any open buffer





" PYTHON:
"filetype indent plugin on
"set t_Co=256
let g:solarized_termtrans = 1
let g:solarized_termcolors=16
colorscheme solarized 
"Pretty 
let python_highlight_all=1

"Add line numbers
set number
set relativenumber
set ruler

"whitespace
set nowrap
set ts=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Set encoding
set encoding=utf-8

"show trailing spaces and hard tabs
set list lcs=tab:>-
"  Change default to ignore case for text searches
set ic

"Zeilenumbruch wann von rechter Seite
set tw=110

"Colorcolumn als Hilfe
set colorcolumn=110 

"TAB gibt alle moeglichkeiten
set wildmenu
set wildmode=list:longest

"will allow to use backspace with insert properlly
set backspace=2

set title

set hlsearch
"maeintain more context around the cursor
set scrolloff=3

"sets increment search
set incsearch 

"highlighting 
highlight Search     ctermfg=Black      ctermbg=Red     cterm=NONE

" Color schemes:

"map ctrl+p to inte3ractivly start the script
map <C-p> :w<CR>:!python3 %<CR>

"cycling buffers
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-b> :bprevious<CR>

"map ctrl hjkl to switch buffers

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"


"Start NERDTree directly
au VimEnter *  NERDTree
