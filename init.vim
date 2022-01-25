syntax enable
set number
set encoding=utf-8
filetype plugin indent on

" hello front end masters
set path+=**

" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*
set clipboard=unnamedplus

set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
 
set guifont=MonoLisa:h20

inoremap <silent><expr><TAB>
    \ pumvisible() ? “\<C-n>” : “\<TAB>”
nmap <silent> <F9> :ALEGoToDefinition<CR>
nmap <silent> <F10> :ALEFindReferences<CR>
nmap <silent> <F11> <Plug>(ale_previous_wrap)
nmap <silent> <F12> <Plug>(ale_next_wrap)

call plug#begin('~/vimfiles/plugged')

Plug 'rust-lang/rust.vim'
Plug 'scrooloose/syntastic'
Plug 'cespare/vim-toml'
Plug 'dense-analysis/ale'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/playground'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'nvim-telescope/telescope-project.nvim'
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug ‘sheerun/vim-polyglot’
Plug 'OmniSharp/omnisharp-vim'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let g:neovide_refresh_rate=140
let g:neovide_fullscreen=v:true
let g:neovide_cursor_antialiasing=v:true
let g:neovide_remember_window_size = v:true

let g:NERDTreeIgnore = ['^build$[[dir]]', '^target$[[dir]]', '^node_modules[[dir]]']

nnoremap <silent> <leader>ff :Telescope find_files<CR>
nnoremap <silent> <leader>fg :Telescope live_grep<cr>
nnoremap <silent> <leader>fp :Telescope project<CR>
nnoremap <silent> <leader>vf :NERDTreeToggle<CR>
nnoremap <silent> <leader>gb :e#<CR>
nnoremap <silent> <esc> :noh<CR>

colorscheme onedark

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
