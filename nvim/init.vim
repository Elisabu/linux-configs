call plug#begin()
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    Plug 'sonph/onehalf', { 'rtp': 'vim' }
    Plug 'EdenEast/nightfox.nvim'
    Plug 'preservim/nerdtree'
    Plug 'nvim-lua/completion-nvim'
    " main one
    "Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
    "Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
    "Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

    " For ultisnips users.
    Plug 'SirVer/ultisnips'
    "Plug 'quangnguyen30192/cmp-nvim-ultisnips'

    " For snippy users.
    "Plug 'dcampos/nvim-snippy'
    "Plug 'dcampos/cmp-snippy'
    "
    "
    Plug 'windwp/nvim-autopairs'
call plug#end()

set showmatch               
set ignorecase              
set mouse=v                 
set hlsearch          
set incsearch
set tabstop=4               
set softtabstop=4           
set expandtab
set shiftwidth=4           
set autoindent              
set number
set relativenumber
set cc=80                  
filetype plugin indent on   
syntax on
set mouse=a                  
set clipboard=unnamedplus   
filetype plugin on
set cursorline
set ttyfast
set completeopt=menu,menuone,noselect


colorscheme  carbonfox
"let g:airline_theme='onehalfdark'
" let g:lightline = { colorscheme= 'onehalfdark' }

"nnoremap <silent>;f <cmd>Telescope find_files<cr>
"nnoremap <silent>;r <cmd>Telescope live_grep<cr>
"nnoremap <silent>// <cmd>Telescope buffers<cr>
"nnoremap <silent>;;<cmd>Telescope help_tags<cr>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd VimEnter * NERDTree | wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif


inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set completeopt=menuone,noinsert,noselect

set shortmess+=c
