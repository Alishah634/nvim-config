return {
    "mbbill/undotree",
    keys = {
        { "<F5>", "<cmd>UndotreeToggle<CR>", desc = "Toggle UndoTree" }
    },
    config = function()
        -- optional: undotree opens on the right
        vim.g.undotree_WindowLayout = 2
        vim.g.undotree_SetFocusWhenToggle = 1
    end,
}

