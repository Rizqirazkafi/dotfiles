syntax on
set encoding=UTF-8

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set nowrap 
set undodir=~/.vim/undodir
set undofile
set incsearch
set t_Co=256
call plug#begin('~/.vim/plugged')

Plug 'suan/vim-instant-markdown', {'rtp': 'after'}
Plug 'frazrepo/vim-rainbow'
Plug 'ap/vim-css-color'
Plug 'vim-python/python-syntax'
Plug 'joshdick/onedark.vim'
Plug 'vim-scripts/taglist.vim'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree'
Plug 'lyuts/vim-rtags'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vifm/vifm.vim'
Plug 'valloric/youcompleteme'

call plug#end()


let g:lightline = {
            \'colorscheme': 'onedark',
            \}

colorscheme onedark


let mapleader = " "

" NERDTree Keybindings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=38
set splitbelow splitright
map <Leader>vv :Vifm<CR>
map <Leader>vs :VsplitVifm<CR> 
map <Leader>sp :SplitVifm<CR> 
map <Leader>dv :DiffVifm<CR> 
map <Leader>tv :TabVifm<CR>

" Remap splits navigation to just CTRL + hjkl 
nnoremap <C-h> <C-w>h 
nnoremap <C-j> <C-w>j 
nnoremap <C-k> <C-w>k 
nnoremap <C-l> <C-w>l 
" Make adjusing split sizes a bit more friendly 
noremap <silent> <C-Left> :vertical resize +3<CR> 
noremap <silent> <C-Right> :vertical resize -3<CR> 
noremap <silent> <C-Up> :resize +3<CR> 
noremap <silent> <C-Down> :resize -3<CR>

nnoremap <leader>u :UndotreeShow<CR>

nnoremap <silent> <leader>gd :YcmCompeleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompeleter FixIt<CR>


