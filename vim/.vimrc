" VIMRC
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" " let Vundle manage Vundle, required
"""Plugin 'gmarik/Vundle.vim'

"""Plugin 'vim-airline/vim-airline'
"""Plugin 'vim-airline/vim-airline-themes'
"Plugin 'davidhalter/jedi-vim'
"""Bundle 'Valloric/YouCompleteMe'

" " All of your Plugins must be added before the following line
call vundle#end()            " required

"""AIRLINE
"Enable status line by defaul airline
set laststatus=2
" Enable powerline fonts
let g:airline_powerline_fonts = 1
"show buffers by default
let g:airline#extensions#tabline#enabled = 1
"user airline theme solarized
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

"Syntax
syntax enable
set background=dark
"set t_Co=256
"let g:solarized_termtrans = 0
let g:solarized_termcolors=16
colorscheme solarized

set background=dark
" solarized options 
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized

"Add line numbers
set number
set ruler

"tabs
set autoindent
set noexpandtab
set tabstop=2
set shiftwidth=2

"
set backspace=indent,eol,start

"buffers not need to be saved when switching
set hidden

"switch between buffers
"map gn :bn<cr>
"map gp :bp<cr>
"map gd :bd<cr>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <C-X> :bdelete<CR>

" Set encoding
set encoding=utf-8

"show trailing spaces and hard tabs
set list listchars=tab:▸\ ,trail:·,precedes:←,extends:→
highlight SpecialKey ctermfg=grey guifg=grey70
"  Change default to ignore case for text searches
set ic

"Zeilenumbruch wann von rechter Seite
set tw=132

"TAB gibt alle moeglichkeiten
set wildmenu
set wildmode=list:longest

set title
"sets higlight search
set hlsearch

"maeintain more context around the cursor
set scrolloff=3
"sets increment search
set incsearch 
highlight IncSearch guibg=green ctermbg=green term=underline

map <F7> :tabprevious<CR>
map <F8> :tabnext<CR>

"map ctrl+p to inte3ractivly start the script
map <C-p> :w<CR>:! %:p<CR>


"you comple me config
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

"set mucomple settings
"set completeopt+=menuone
"set shortmess+=c   " Shut off completion messages
"set belloff+=ctrlg " If Vim beeps during completion
"set completeopt-=preview
"set completeopt+=longest,menuone,noselect
"let g:jedi#popup_on_dot = 0  " It may be 1 as well
"let g:mucomplete#enable_auto_at_startup = 1

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.
"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
"function! Tab_Or_Complete()
"  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
"    return "\<C-N>"
"  else
"    return "\<Tab>"
"  endif
"endfunction
":inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
":set dictionary="/usr/dict/words"
