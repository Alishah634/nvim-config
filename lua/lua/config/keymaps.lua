-- ~/.config/nvim/lua/config/keymaps.lua
local map = vim.keymap.set
local tb = require("telescope.builtin")

-- Telescope
map("n", "<leader>ff", tb.find_files, { desc = "Find Files" })
map("n", "<leader>fb", tb.buffers, { desc = "Open Buffers" })
map("n", "<leader>fo", tb.oldfiles, { desc = "Recent Files" })
map("n", "<leader>fg", tb.live_grep, { desc = "Live Grep" })
map("n", "<leader>fr", tb.grep_string, { desc = "Word Under Cursor" })
map("n", "<leader>fh", tb.help_tags, { desc = "Help Tags" })
map("n", "<leader>fd", tb.lsp_definitions, { desc = "LSP Definitions" })
map("n", "<leader>frf", tb.lsp_references, { desc = "LSP References" })

-- Coc.nvim Tab confirm vs literal Tab
map("i", "<Tab>", function()
  if vim.fn["coc#pum#visible"]() == 1 then
    return vim.fn["coc#pum#confirm"]()
  else
    return "\t"
  end
end, { expr = true, silent = true })
map("i", "<S-Tab>", function()
  if vim.fn["coc#pum#visible"]() == 1 then
    return vim.fn["coc#pum#cancel"]()
  else
    return "<C-h>"
  end
end, { expr = true, silent = true })
