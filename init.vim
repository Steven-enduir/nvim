" Condition to ignore all of this for vscode
if !exists('g:vscode')

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
set undofile
set incsearch
set termguicolors

"Add ref to coc config file
"source $HOME/.config/nvim/plug-config/coc.vim

"Set version cursor highlight as well"
set cursorcolumn
highlight cursorcolumn guibg=#528BFF

" Set numberline to be based off cursor location"
set number relativenumber

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

call plug#begin('~/.vim/plugged')

"best autocomplete in the world, trying out coc for awhile
"Plug 'ycm-core/YouCompleteMe'

"Maybe the best autocomplete in the world? 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

"Dark theme
"Plug 'joshdick/onedark.vim'

"Purple theme
"Plug 'yassinebridi/vim-purpura'

"Gruvebox theme
Plug 'morhetz/gruvbox'

"Tree explorer
Plug 'preservim/nerdtree'

"C# autoComplete
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'

"Combines Nerdtree and tabs, but no longer active
Plug 'jistr/vim-nerdtree-tabs'

"Git Wrapper
Plug 'tpope/vim-fugitive'

"Vibrant color theme
Plug 'phanviet/vim-monokai-pro'

"Theme TokyoNight
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

"undo history visualizer
Plug 'mbbill/undotree'

"Solid Language pack
Plug 'sheerun/vim-polyglot'

"ThePrimeagen vim be good
Plug 'ThePrimeagen/vim-be-good'

"ThePrimeagen Harpoon, terminal nav for nvim
Plug 'ThePrimeagen/harpoon'

"Prettier
Plug 'sbdchd/neoformat'

"NVIM built in LSP support
"Plug 'neovim/nvim-lspconfig'

"LSP Completion
"Plug 'nvim-lua/completion-nvim'

"Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"Additional C++ Highlighting
Plug 'octol/vim-cpp-enhanced-highlight'

"Cheat Sheet
Plug 'dbeniamine/cheat.sh-vim'

"Vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

"LSPs
"lua <<EOF
"    require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
"    require'lspconfig'.angularls.setup{}
"    require'lspconfig'.gopls.setup{}
"EOF

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

"Plugin config
let g:OmniSharp_srver_stdio = 1
let g:gruvbox_contrast_dark = 'hard'

"Set current colorTheme
colorscheme gruvbox
autocmd ColorScheme * highlight CocErrorFloat guifg=#ffffff
autocmd ColorScheme * highlight CocInfoFloat guifg=#ffffff
autocmd ColorScheme * highlight CocWarningFloat guifg=#ffffff
autocmd ColorScheme * highlight SignColumn guibg=#adadad

"Keybind mapping:"
imap jj <esc>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

endif
