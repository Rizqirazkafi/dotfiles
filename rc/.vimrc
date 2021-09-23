if has('python3')
endif
syntax on
set encoding=UTF-8
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set wildmenu
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
"Plug 'plasticboy/vim-markdown'                      "Markdown Syntax
Plug 'terroo/vim-auto-markdown'
Plug 'frazrepo/vim-rainbow'                         
"Plug 'yggdroot/indentline'
Plug 'ap/vim-css-color'                             "Color Preview for CSS 
Plug 'vim-python/python-syntax'                     "Python Sytnax Highlighting 
Plug 'joshdick/onedark.vim'                         "Onedark colorscheme
Plug 'vim-scripts/taglist.vim'                      "Tag support for various programming language
"Plug 'SirVer/ultisnips'
Plug 'mbbill/undotree'                              "Undo tree for showing file history
Plug 'scrooloose/nerdtree'                          "NERDTree file manager
Plug 'lyuts/vim-rtags'                              "C++ Nav Keybindings 
Plug 'ryanoasis/vim-devicons'                       "Icon for vim and NERDTree 
Plug 'vim-airline/vim-airline'                      "Airline
Plug 'vim-airline/vim-airline-themes'               "Airline colorscheme
Plug 'valloric/youcompleteme'                       "Auto Complete for various programming language 
Plug 'townk/vim-autoclose'
Plug 'dracula/vim', { 'as': 'dracula' }             "Dracula color scheme

call plug#end()

let g:rainbow_active = 1
let g:lightline = {
            \'colorscheme': 'onedark',
            \}

colorscheme dracula


let mapleader = " "

highlight LineNr ctermfg=grey ctermbg=white
highlight LineNr guifg=white
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

" Line indent guides
" Vim
let g:indentLine_color_term = 239

" GVim
let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

" Background (Vim, GVim)
let g:indentLine_bgcolor_term = 202
let g:indentLine_bgcolor_gui = '#FF5F00'
"Python config for YouCompleteMe
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/.global_extra_conf.py'
