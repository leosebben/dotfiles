vim.g.mapleader = ' '

-- General
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
vim.keymap.set('n', 'Q', '<nop>')

-- Fuzzy Finder
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')

-- Scroll
vim.keymap.set('n', '<C-d>', '10jzz')
vim.keymap.set('n', '<C-u>', '10kzz')
