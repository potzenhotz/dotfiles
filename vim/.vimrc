
"Syntax
syntax enable
set background=dark

"python
filetype indent plugin on
"set t_Co=256
let g:solarized_termtrans = 1
let g:solarized_termcolors=16
colorscheme solarized 
"color smyck

"Add line numbers
set number
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
set tw=80

"Colorcolumn als Hilfe
set colorcolumn=80 

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


" Color schemes:

"map ctrl+p to inte3ractivly start the script
map <C-p> :w<CR>:!python3 %<CR>


"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

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


