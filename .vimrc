" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/autoload/vim.plug')

" Make sure you use single quotes

" Gruvbox scheme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

" Auto complition
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" WakaTime
Plug 'wakatime/vim-wakatime'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Used for displaying nerdtree according the git changes
Plug 'Xuyuanp/nerdtree-git-plugin'

" Icons and everything on vim
Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Commenter on vim
Plug 'scrooloose/nerdcommenter'

" Initialize plugin system
call plug#end()

" Line Number
set number

" Airline Gruvbox Load
set background=dark
let g:gruvbox_bold = '1'
let g:gruvbox_termcolors = '256'
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italicize_comments = '1'
let g:gruvbox_guisp_fallback = 'bg'
colorscheme gruvbox
let g:airline_powerline_fonts=1

" Enable cursorLine
set cursorline

" Tabspace to 4
set ts=2 sw=2

" coc config
let g:coc_global_extensions = ['coc-snippets','coc-pairs','coc-tsserver','coc-eslint','coc-prettier','coc-json',]
" If hidden is not set, Text Edit might fail
set hidden

" Some server have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for message
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" Prettier config
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nmap <C-p> : Prettier<CR>

" NerdToggle
nmap <C-n> : NERDTreeToggle<CR>
let g:NERDTreeIgnore = ['^node_modules$']
