-- ~/.config/nvim/lua/config/lsp.lua
local manager = require("lvim.lsp.manager")
manager.setup("pyright", {
  settings = {
    python = {
      analysis = {
        pythonPath = "/home/syedali14/miniconda3/envs/ece60146/bin/python",
        extraPaths = {
          "/home/syedali14/miniconda3/envs/ece60146/lib/python3.10/site-packages",
        },
      },
    },
  },
})

require("mason").setup()
require("mason-lspconfig").setup({ ensure_installed = { "pyright", "clangd" } })
require("lspconfig").pyright.setup({})
require("lspconfig").clangd.setup({})
