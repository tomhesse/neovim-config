return {
    "pearofducks/ansible-vim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local ansible_augroup = vim.api.nvim_create_augroup("ansible", { clear = true })

        vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
            pattern = "*/playbooks/*.yml",
            group = ansible_augroup,
            command = "set filetype=yaml.ansible",
        })
    end,
}
