-- Set options
local cmd = vim.cmd
local opt = vim.opt
local indent = 4

-- Use tree view in netrw
cmd("let g:netrw_liststyle = 3")

-- General
opt.mouse = "" -- Disable mouse support
opt.fileencoding = "utf-8" -- The encoding written to a file
opt.encoding = "utf-8" -- The encoding

-- Indentation
opt.autoindent = true -- Enable auto indentation
opt.expandtab = true -- Convert tabs to spaces
opt.smartindent = true -- Make indentation smarter
opt.tabstop = indent -- Number of spaces that a tab counts for
opt.softtabstop = indent -- Number of spaces a tab counts while editing
opt.shiftwidth = indent -- Number of spaces used for (auto)indent
opt.backspace = "indent,eol,start" -- Allow backspace on indent, end of line or insert mode start position

-- Search
opt.hlsearch = true -- Highlight all matches
opt.ignorecase = true -- Ignore case in search patterns
opt.smartcase = true -- Overwrite ignorecase when pattern contains upper case
opt.incsearch = true -- Start searching while typing

-- UI
opt.syntax = "enable" -- Enable syntax highlighting
opt.cursorline = true -- Enable the cursor line
opt.scrolloff = 5 -- Always keep lines under the cursor
opt.colorcolumn = "120" -- Add the colorcolumn after 80 characters
opt.showmode = false -- Mode is shown in the statusline
opt.number = true -- Enable absolute line numbers
opt.relativenumber = true -- Enable relative line numbers
opt.wrap = false -- Don't wrap lines
opt.termguicolors = true
opt.background = "dark" -- Use dark theme when available
opt.signcolumn = "yes" -- Show sign column so that text doesn't shift

-- Clipboard
opt.clipboard:append("unnamedplus") -- Use system clipboard as default register

-- Split windows
opt.splitright = true -- Split vertical window to the right
opt.splitbelow = true -- Split horizontal window to the bottom
