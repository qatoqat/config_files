-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Disable unused built-in plugins to reduce startup time
local disabled_built_ins = {
  "gzip", "matchit", "matchparen", "netrwPlugin", "tarPlugin", "tohtml",
  "tutor", "zipPlugin", "rplugin", "spellfile_plugin", "shada_plugin",
  "2html_plugin", "getscript", "getscriptPlugin", "vimball", "vimballPlugin",
  "logiPat", "rrhelper", "man"
}

for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end

-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Load plugins
require("plugins")
