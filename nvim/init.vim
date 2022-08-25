syntax on
set ma
set mouse=a
set cursorline
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoread
set nobackup
set nowritebackup
set noswapfile
set nu 
set foldlevelstart=99
set scrolloff=7

call plug#begin()
Plug 'pangloss/vim-javascript' "JS support
Plug 'leafgarland/typescript-vim' "TS support
Plug 'maxmellon/vim-jsx-pretty'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sindrets/diffview.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ghifarit53/tokyonight-vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

set encoding=UTF-8

set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:airline_powerline_fonts = 1

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

lua << EOF
  require("todo-comments").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF
