local o = vim.opt
local g = vim.g
o.nu = true
o.relativenumber = true
o.errorbells = false
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.smartindent = true
o.wrap = false
o.mouse = "a"
-- Share Neovim and Host OS clipboard
o.clipboard = 'unnamedplus'
o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true
o.hlsearch = false
o.incsearch = true
o.termguicolors = true
o.scrolloff = 8
o.signcolumn = "yes"
o.isfname:append("@-@")
-- Give more space for displaying messages.
o.cmdheight = 1
-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
o.updatetime = 50
o.colorcolumn = "80"
g.mapleader = " "
-- LaTex Configuration
g.tex_conceal = ''
g.vimtex_fold_manual = 1
-- g.vimtex_latexmk_continuous = 1
g.vimtex_compiler_progname = 'pdflatex'
g.vimtex_view_method = 'zathura'
-- Indent Guides
g.indent_guides_enable_on_vim_startup = 1
