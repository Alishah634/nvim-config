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
