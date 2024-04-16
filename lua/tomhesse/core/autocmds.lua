-- Toggle numbers while mode switching
local numbertogglegroup = vim.api.nvim_create_augroup("numbertoggle", { clear = true })
vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave" }, {
    pattern = "*",
    group = numbertogglegroup,
    command = "set relativenumber",
})
vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter" }, {
    pattern = "*",
    group = numbertogglegroup,
    command = "set norelativenumber",
})
