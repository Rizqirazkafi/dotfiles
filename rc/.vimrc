if has('python3')
endif
syntax on
set encoding=UTF-8
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set smartcase
set noswapfile
set nobackup
set nowrap 
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
call plug#begin('~/.vim/plugged')

Plug 'suan/vim-instant-markdown', {'rtp': 'after'}  "Markdown Preview
Plug 'frazrepo/vim-rainbow'                         
Plug 'ap/vim-css-color'                             "Color Preview for CSS 
Plug 'vim-python/python-syntax'                     "Python Sytnax Highlighting 
Plug 'joshdick/onedark.vim'                         "Onedark colorscheme
Plug 'vim-scripts/taglist.vim'                      "Tag support for various programming language
Plug 'mbbill/undotree'                              "Undo tree for showing file history
Plug 'scrooloose/nerdtree'                          "NERDTree file manager
Plug 'lyuts/vim-rtags'                              "C++ Nav Keybindings 
Plug 'ryanoasis/vim-devicons'                       "Icon for vim and NERDTree 
Plug 'vim-airline/vim-airline'                      "Airline
Plug 'vim-airline/vim-airline-themes'               "Airline colorscheme
Plug 'valloric/youcompleteme'                       "Auto Complete for various programming language 
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

"Python config for YouCompleteMe
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/.global_extra_conf.py'
