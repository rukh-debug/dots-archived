call plug#begin('~/.vim/plugged')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Discord
Plug 'hugolgst/vimsence'

" Gruvbox scheme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

" Syntax checking hacks
Plug 'sheerun/vim-polyglot'

" Ranger vim integrate
Plug 'francoiscabrol/ranger.vim'

" Linting and stuff
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Initialize plugin system
call plug#end()

" Line number
set number

" Adding the cursor type on different type
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Airline Gruvbox Load
set background=dark
let g:gruvbox_bold = '1'
let g:gruvbox_termcolors = '256'
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italicize_comments = '1'
colorscheme gruvbox
let g:airline_powerline_fonts=1

" Enable cursorLine
set cursorline

" Tabspace to 4
set ts=4 sw=4

