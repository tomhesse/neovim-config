return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            -- Enable syntax highlighting
            highlight = {
                enable = true,
            },
            -- Enable indentation
            indent = {
                enable = true,
            },
            -- Enable autotagging with nvim-ts-autotag plugin
            autotag = {
                enable = true,
            },
            -- Ensure these language parsers are installed
            ensure_installed = {
                "bash",
                "c",
                "dockerfile",
                "gitignore",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "terraform",
                "toml",
                "yaml",
            },
            -- Used to cycle nodes
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        })
    end,
}
