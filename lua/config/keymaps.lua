-- ~/.config/nvim/lua/config/keymaps.lua
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local tb = require("telescope.builtin")
local cmp = require("cmp")

-- ── Telescope ────────────────────────────────────────────────
map("n", "<leader>ff", tb.find_files, { desc = "Find Files" })
map("n", "<leader>fb", tb.buffers, { desc = "Open Buffers" })
map("n", "<leader>fo", tb.oldfiles, { desc = "Recent Files" })
map("n", "<leader>fg", tb.live_grep, { desc = "Live Grep" })
map("n", "<leader>fr", tb.grep_string, { desc = "Word Under Cursor" })
map("n", "<leader>fh", tb.help_tags, { desc = "Help Tags" })
map("n", "<leader>fd", tb.lsp_definitions, { desc = "LSP Definitions" })
map("n", "<leader>frf", tb.lsp_references, { desc = "LSP References" })

-- ── nvim-cmp Tab completion ──────────────────────────────────
map("i", "<Tab>", function()
  if cmp.visible() then
    return cmp.select_next_item()
  else
    return "<Tab>"
  end
end, { expr = true, silent = true })

map("i", "<S-Tab>", function()
  if cmp.visible() then
    return cmp.select_prev_item()
  else
    return "<S-Tab>"
  end
end, { expr = true, silent = true })
