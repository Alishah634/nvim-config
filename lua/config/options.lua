-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- ~/.config/nvim/lua/config/options.lua
local o = vim.opt
local g = vim.g

-- Stop the auto formatting because OMG I dont write code like that and its annoying!
g.autoformat = false

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
o.undodir = vim.fn.stdpath("config") .. "/undo"
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
-- vim.fn.mkdir(vim.opt.undodir:get(), "p")

-- other sensible defaults
o.mouse = "a"
o.hidden = true
o.backspace = { "eol", "start", "indent" }
o.wildmenu = true
