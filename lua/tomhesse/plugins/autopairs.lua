return {
    "windwp/nvim-autopairs",
    event = { "InsertEnter" },
    dependencies = {
        "hrsh7th/nvim-cmp",
    },
    config = function()
        -- Import nvim-autopairs
        local autopairs = require("nvim-autopairs")

        -- Configure autopairs
        autopairs.setup({
            check_ts = true, -- Enable treesitter
            ts_config = {
                lua = { "string" }, -- Don't add pairs in lua string treesitter nodes
            },
        })

        -- Import nvim-autopairs completion functionality
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")

        -- Import nvim-cmp plugin (completions plugin)
        local cmp = require("cmp")

        -- Make autopairs and completion work together
        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
}
