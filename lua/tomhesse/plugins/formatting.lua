return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                bash = { "shfmt" },
                lua = { "stylua" },
                markdown = { "prettier" },
                python = { "isort", "black" },
                sh = { "shfmt" },
                yaml = { "prettier" },
            },
            format_on_save = function(bufnr)
                -- Disable autoformat on certain files
                local ignore_filetypes = { "c" }

                if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
                    return
                end

                return {
                    lsp_fallback = true,
                    async = false,
                    timeout_ms = 1000,
                }
            end,
        })

        vim.keymap.set({ "n", "v" }, "<leader>mp", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end,
}
