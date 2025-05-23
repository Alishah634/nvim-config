-- ~/.config/nvim/lua/plugins/user.lua
return {
  -- themes
  { "folke/tokyonight.nvim" },
  { "ayu-theme/ayu-vim" },

  -- plugin manager
  --  { "wbthomason/packer.nvim" },  -- optional, LazyVim uses lazy.nvim but Packer still works

  -- utilities
  { "tpope/vim-sensible" },
  { "tpope/vim-fugitive" },
  {
    "akinsho/git-conflict.nvim",
    tag = "*",
    config = function()
      require("git-conflict").setup({
        default_mappings = true,
        disable_diagnostics = true,
      })
    end,
  },
  {
    "junegunn/fzf",
    run = function()
      vim.fn["fzf#install"]()
    end,
  },
  { "neoclide/coc.nvim", branch = "release" },
  { "lukas-reineke/indent-blankline.nvim" },
  {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true },
  },
  { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
  { "nvim-telescope/telescope.nvim", requires = "nvim-lua/plenary.nvim" },

  -- LSP & completion
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },

  -- git decorations
  { "lewis6991/gitsigns.nvim" },

  -- misc
  { "windwp/nvim-autopairs" },
  { "folke/which-key.nvim" },
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },
  { "mg979/vim-visual-multi", branch = "master" },
}
