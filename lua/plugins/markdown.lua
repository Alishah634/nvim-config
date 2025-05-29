-- ~/.config/nvim/lua/plugins/markdown.lua
return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = {}, -- Disable linting for markdown
      },
    },
  },
}
