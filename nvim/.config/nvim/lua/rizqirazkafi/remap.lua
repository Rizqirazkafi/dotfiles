local map = require("rizqirazkafi.keymap").map

-- Open Netrm filemanager
map("n", "<Leader>pv",":Ex<CR>", {silent = true})
-- remap splits navigation to just ctrl + hjkl
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
-- make adjusting split sizes a bit more friendl
map ("n", "<left> ",":vertical res +3<CR>",{silent = true}) 
map ("n", "<right>",":vertical res -3<CR>",{silent = true}) 
map ("n", "<up>",":res +3<CR>",{silent = true})
map ("n", "<down>",":res -3<CR>",{silent = true})
-- FZF Keybinding
map ("n", "<C-p>",":Files<CR>",{silent = true})
