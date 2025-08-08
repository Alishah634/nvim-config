-- in your lazy.nvim spec (e.g. ~/.config/nvim/lua/plugins/speedtyper.lua)
return {
  'NStefan002/speedtyper.nvim',
  branch = 'v2',
  lazy   = false,  -- load at startup
  config = function()
    require('speedtyper').setup({
      modes = {'time', 'words', 'custom'},
      time = 30,
      -- …other settings…
    })
    vim.keymap.set('n','<leader>tp','<cmd>Speedtyper<CR>',{desc="Typing practice"})
  end,
}

