filetype plugin indent on
syntax enable

set noerrorbells
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set relativenumber
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set clipboard=unnamedplus

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'vim-utils/vim-man'
Plug 'bfrg/vim-cpp-modern'
Plug 'git@github.com:ycm-core/YouCompleteMe.git'
Plug 'git@github.com:mbbill/undotree.git'
Plug 'git@github.com:liuchengxu/space-vim-dark.git'
Plug 'git@github.com:tribela/vim-transparent.git'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'git@github.com:taketwo/vim-ros.git'
Plug 'lervag/vimtex'
call plug#end()

set background=dark
set encoding=utf8
hi Normal guibg=NONE ctermbg=NONE
if strftime("%H") < 24 && strftime("%H")>5 
  colorscheme gruvbox
else
    colorscheme space-vim-dark
endif

let mapleader=' '
let g:ycm_semantic_triggers = {
\   'roslaunch' : ['="', '$(', '/'],
\   'rosmsg,rossrv,rosaction' : ['re!^', '/'],
\ }
let g:new_winsize=25
let g:ycm_clangd_uses_ycmd_caching=0
let g:ycm_clangd_binary_path='/usr/bin/clangd-15'
let g:cpp_posix_standard = 1
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_view_method = 'zathura'
if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif


nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pw :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>gd :YcmCompleter GoTo<CR>
nnoremap <leader>" :wincmd v<CR>
nnoremap <leader>% :wincmd s<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <F5> :UndotreeToggle<CR>
nnoremap Y y$
 
inoremap <A-z> <Esc>  
