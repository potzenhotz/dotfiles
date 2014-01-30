
"Syntax
syntax enable
"set background=dark
colorscheme github
"color smyck

"Add line numbers
set number
set ruler

"whitespace
set nowrap
set ts=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Set encoding
set encoding=utf-8

"show trailing spaces and hard tabs
set list lcs=tab:>-
"  Change default to ignore case for text searches
set ic

"Zeilenumbruch wann von rechter Seite
set tw=132

"TAB gibt alle moeglichkeiten
set wildmenu
set wildmode=list:longest


set title


"maeintain more context around the cursor
set scrolloff=3

" Color schemes:


map <F7> :tabprevious<CR>
map <F8> :tabnext<CR>
