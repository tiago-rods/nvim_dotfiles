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

-- Mover linha para cima
vim.keymap.set('n', '<A-Up>', ':m .-2<CR>==')

-- Mover linha para baixo
vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==')

-- Navegação entre splits (Ctrl + hjkl)
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Janela esquerda' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Janela inferior' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Janela superior' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Janela direita' })

-- Criar splits
vim.keymap.set('n', 'sv', ':vsplit<CR>', { desc = 'Split vertical' })
vim.keymap.set('n', 'sh', ':split<CR>', { desc = 'Split horizontal' })
vim.keymap.set('n', 'sx', ':close<CR>', { desc = 'Fechar janela atual' })

-- Redimensionar janelas (Alt + setas)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { desc = 'Reduzir largura' })
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { desc = 'Aumentar largura' })
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', { desc = 'Reduzir altura' })
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', { desc = 'Aumentar altura' })
