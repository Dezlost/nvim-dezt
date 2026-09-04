vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Nagevacion

vim.keymap.set('n', '<c-h>', function() vim.cmd.wincmd('h') end)
vim.keymap.set('n', '<c-j>', function() vim.cmd.wincmd('j') end)
vim.keymap.set('n', '<c-k>', function() vim.cmd.wincmd('k') end)
vim.keymap.set('n', '<c-l>', function() vim.cmd.wincmd('l') end)
