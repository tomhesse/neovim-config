return {
    "folke/trouble.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "folke/todo-comments.nvim",
    },
    keys = {
        { "<leader>xx", "<cmd>TroubleToggle<CR>", desc = "Open/Close trouble list" }, -- Open/Close trouble list
        { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<CR>", desc = "Open trouble workspace diagnostics" }, -- Open trouble workspace diagnostics
        { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<CR>", desc = "Open trouble document diagnostics" }, -- Open trouble document diagnostics
        { "<leader>xq", "<cmd>TroubleToggle quickfix<CR>", desc = "Open trouble quickfix list" }, -- Open trouble quickfix list
        { "<leader>xl", "<cmd>TroubleToggle loclist<CR>", desc = "Open trouble location list" }, -- Open trouble location list
        { "<leader>xt", "<cmd>TodoTrouble<CR>", desc = "Open todos in trouble" }, -- Open todos in trouble
    },
}
