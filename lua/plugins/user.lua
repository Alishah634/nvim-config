-- ~/.config/nvim/lua/plugins/user.lua
return {
  -- ─── Themes ──────────────────────────────────────────────────────────────
  { "folke/tokyonight.nvim" },
  { "ayu-theme/ayu-vim" },

  -- ─── Git & Diff Helpers ───────────────────────────────────────────────────
  { "tpope/vim-fugitive" },

  {
    "akinsho/git-conflict.nvim",
    -- no tag/branch needed—let it use upstream's default
    brnach = "main",
    config = function()
      require("git-conflict").setup({
        default_mappings = true, -- use ]x/[x to navigate
        disable_diagnostics = true, -- turn off LSP errors in conflicts
      })
    end,
  },

  -- ─── Fuzzy Finding ─────────────────────────────────────────────────────────
  {
    "junegunn/fzf",
    build = function()
      vim.fn["fzf#install"]()
    end,
    lazy = true,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope",
  },

  -- ─── Treesitter & Indent Guides ────────────────────────────────────────────
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "BufReadPost",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "python", "bash" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
  { "lukas-reineke/indent-blankline.nvim", event = "BufReadPost" },

  -- ─── Status & Signs ─────────────────────────────────────────────────────────
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
  },
  { "lewis6991/gitsigns.nvim", event = "BufReadPre" },

  -- ─── LSP & Completion ───────────────────────────────────────────────────────
  { "neovim/nvim-lspconfig", event = "BufReadPre" },
  { "williamboman/mason.nvim", cmd = "Mason" },
  { "williamboman/mason-lspconfig.nvim", after = "mason.nvim" },

  -- 1) Core completion engine
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      -- 2) LSP source for cmp
      {
        "hrsh7th/cmp-nvim-lsp",
        dependencies = { "hrsh7th/nvim-cmp" },
        event = "InsertEnter",
      },
      -- 3) Snippet engine
      {
        "L3MON4D3/LuaSnip",
        dependencies = { "hrsh7th/nvim-cmp" },
        event = "InsertEnter",
      },
      -- 4) Snippet completions for cmp
      {
        "saadparwaiz1/cmp_luasnip",
        dependencies = {
          "hrsh7th/nvim-cmp",
          "L3MON4D3/LuaSnip",
        },
        event = "InsertEnter",
      },
    },

    -- Formatting/Linting
    { "jose-elias-alvarez/null-ls.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
    -- Debugging
    { "mfussenegger/nvim-dap" },
    { "mfussenegger/nvim-dap-python", dependencies = "nvim-dap" },
    { "rcarriga/nvim-dap-ui", dependencies = "nvim-dap" },
    -- Testing
    { "vim-test/vim-test" },
    { "nvim-neotest/neotest", dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter" } },

    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        }),
        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
        },
      })
    end,
  },

  -- optional: Coc.nvim (you probably only want _either_ cmp or coc)
  { "neoclide/coc.nvim", branch = "release", lazy = true },

  -- ─── Utility Helpers ────────────────────────────────────────────────────────
  { "tpope/vim-sensible", event = "VeryLazy" },
  { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
  { "folke/which-key.nvim", event = "VeryLazy", config = true },
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    config = function()
      require("Comment").setup()
    end,
  },
  { "mg979/vim-visual-multi", branch = "master", event = "VeryLazy" },

  -- ─── Cursor Animation ───────────────────────────────────────────────────────
  {
    "gen740/SmoothCursor.nvim",
    event = "BufReadPost",
    config = function()
      require("smoothcursor").setup({
        autostart = true,
        cursor = "",
        texthl = "Whitespace",
        linehl = nil,
        type = "exp",
        fancy = {
          enable = true,
          head = { cursor = "►", texthl = "Identifier" },
          body = { { cursor = "•", texthl = "Comment" } },
        },
      })
    end,
  },
}
