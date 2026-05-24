-- Configurações básicas do Neovim
vim.opt.relativenumber = true
vim.opt.number = true           -- Números de linha
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.g.mapleader = " "

vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-a>', '<Esc>ggVG', { noremap = true, silent = true })
vim.keymap.set('i', '<Caps>', '<Esc>', { noremap = true })
vim.keymap.set('n', '<Caps>', '<Esc>', { noremap = true })
vim.keymap.set('i', '<C-V>', '<C-r>+', { noremap = true })
vim.keymap.set('n', '<C-V>', '"+p', { noremap = true })

