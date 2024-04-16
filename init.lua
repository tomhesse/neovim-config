-- Check if Neovim version is sufficient
if vim.fn.has("nvim-0.9.2") == 0 then
    error("Need Neovim 0.9.2+ in order to use this config")
end

-- Define required commands
local required_commands = {
    "git", -- Required by mason and to bootstrap lazy.nvim
    "curl", -- Required by mason
    "unzip", -- Required by mason
    "tar", -- Required by mason
    "gzip", -- Required by mason
    "npm", -- Required by mason to install packages
    "rg", -- Ripgrep required by telescope
    "lazygit", -- Required by lazygit plugin
}

-- Check if required programs are installed
for _, command in ipairs(required_commands) do
    local name = type(command) == "string" and command or vim.inspect(command)
    local commands = type(command) == "string" and { command } or command
    ---@cast commands string[]
    local found = false

    for _, cmd in ipairs(commands) do
        if vim.fn.executable(cmd) == 1 then
            name = cmd
            found = true
        end
    end

    if not found then
        error(("`%s` is not installed"):format(name))
    end
end

-- Load core config and lazy.nvim
require("tomhesse.core")
require("tomhesse.lazy")
