require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!
vim.cmd 'set noswapfile'
vim.cmd 'set nobackup'
vim.cmd 'set nowritebackup'
vim.cmd 'set undodir=~/.config/nvim/undodir'
vim.cmd 'set undofile'
vim.cmd 'set clipboard=unnamedplus'
