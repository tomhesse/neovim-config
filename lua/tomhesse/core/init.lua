-- Define modules
local modules = { "tomhesse.core.options", "tomhesse.core.autocmds", "tomhesse.core.keymaps" }

-- Load modules
for _, module in ipairs(modules) do
    local ok, err = pcall(require, module)
    if not ok then
        error(("Error loading %s...\n\n%s"):format(module, err))
    end
end
