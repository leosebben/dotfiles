local telescope = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', telescope.find_files)
vim.keymap.set('n', '<leader>gf', telescope.git_files)
vim.keymap.set('n', '<leader>lg', telescope.live_grep)
