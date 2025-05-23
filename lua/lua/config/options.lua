-- ~/.config/nvim/lua/config/options.lua
local o = vim.opt
local g = vim.g

-- colors & splits
o.termguicolors = true
o.splitright = true

-- line numbers & gutter
o.number = true
o.relativenumber = true
vim.o.statuscolumn = "%s %l %r"

-- undo/swap
o.undofile = true
o.swapfile = true

-- other sensible defaults
o.mouse = "a"
o.hidden = true
o.backspace = { "eol", "start", "indent" }
o.wildmenu = true
