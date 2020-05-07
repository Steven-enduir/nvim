syntax on

set guicursor=
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors


" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

call plug#begin('~/.vim/plugged')

"best autocomplete in the world
Plug 'ycm-core/YouCompleteMe'

"Dark theme
Plug 'joshdick/onedark.vim'

"Tree explorer
Plug 'scrooloose/nerdtree'

"Combines Nerdtree and tabs, but no longer active
Plug 'jistr/vim-nerdtree-tabs'

"Git Wrapper
Plug 'tpope/vim-fugitive'

"Vibrant color theme
Plug 'phanviet/vim-monokai-pro'

"undo history visualizer
Plug 'mbbill/undotree'

"Solid Language pack
Plug 'sheerun/vim-polyglot'

call plug#end()

"Set current colorTheme
colorscheme onedark

