-- global
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- options
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
-- vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.number = true
vim.opt.relativenumber = true

-- use spaces for tabs
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true

vim.keymap.set('n', '<leader>,', ':noh<CR>', {noremap = true})
