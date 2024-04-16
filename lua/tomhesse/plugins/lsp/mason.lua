return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local mason = require("mason")

        local mason_lspconfig = require("mason-lspconfig")

        local mason_tool_installer = require("mason-tool-installer")

        -- Enable mason and configure icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            -- List of language servers for mason to install
            ensure_installed = {
                "ansiblels", -- Ansible language server
                "bashls", -- Bash language server
                "clangd", -- C language server
                "lua_ls", -- Lua language server
                "pyright", -- Python language server
            },
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "ansible-lint", -- Ansible linter
                "black", -- Python formatter
                "isort", -- Python formatter
                "prettier", -- Prettier formatter
                "pylint", -- Python linter
                "shellcheck", -- Shell script linter
                "shfmt", -- Shell formatter
                "stylua", -- Lua formatter
            },
        })
    end,
}
