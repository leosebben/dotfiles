-- change <leader> to Space
vim.g.mapleader = ' '

local opts = { noremap = true, silent = true }

-- General
vim.keymap.set('n', '<leader>nh', ':nohl<CR>', opts)
vim.keymap.set('n', '<C-f>', ':!tmux neww tmux-sessionizer<CR>', opts)
vim.keymap.set('n', '<leader>sh', '<C-w>h', opts)
vim.keymap.set('n', '<leader>sj', '<C-w>j', opts)
vim.keymap.set('n', '<leader>sk', '<C-w>k', opts)
vim.keymap.set('n', '<leader>sl', '<C-w>l', opts)

-- Movement
vim.keymap.set('n', '<C-d>', '10jzz', opts)
vim.keymap.set('n', '<C-u>', '10kzz', opts)
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", opts)
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", opts)
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)
vim.keymap.set('n', '<leader>zi', ':vertical resize 1000<CR>', opts)

-- Buffers
vim.keymap.set('x', '<leader>p', '\"_dP', opts)
vim.keymap.set('n', '<leader>y', '\"+y', opts)
vim.keymap.set('v', '<leader>y', '\"+y', opts)
vim.keymap.set('n', '<leader>d', '\"_d', opts)
vim.keymap.set('v', '<leader>d', '\"_d', opts)

-- Fix?
vim.keymap.set('n', 'Q', '<nop>', opts)

-- Nvim Tree
vim.keymap.set('n', '<leader>nn', ':NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '<leader>nf', ':NvimTreeFocus<CR>', opts)
vim.keymap.set('n', '<leader>nc', ':NvimTreeColapse<CR>', opts)
vim.keymap.set('n', '<leader>nr', ':NvimTreeRefresh<CR>', opts)
vim.keymap.set('n', '<leader>na', ':NvimTreeResize 30<CR>', opts)
vim.keymap.set('n', '<leader>n+', ':NvimTreeResize +10<CR>', opts)
vim.keymap.set('n', '<leader>n-', ':NvimTreeResize -10<CR>', opts)
vim.keymap.set('n', '<leader>nz', ':NvimTreeResize 1000<CR>', opts)

-- Telescope
local telescope_builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, opts)
vim.keymap.set('n', '<leader>fg', telescope_builtin.git_files, opts)
vim.keymap.set('n', '<leader>fl', telescope_builtin.live_grep, opts)
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, opts)
vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags, opts)

-- Harpoon
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<leader>hp', ui.toggle_quick_menu)
vim.keymap.set('n', '<C-j>', function() ui.nav_file(1) end)
vim.keymap.set('n', '<C-k>', function() ui.nav_file(2) end)
vim.keymap.set('n', '<C-l>', function() ui.nav_file(3) end)
vim.keymap.set('n', '<C-;>', function() ui.nav_file(4) end)

-- Terminal
local terminal = require('nvterm.terminal')

vim.keymap.set('n', '<leader>tf', function() terminal.toggle('float') end)
vim.keymap.set('n', '<leader>tv', function() terminal.toggle('vertical') end)
vim.keymap.set('n', '<leader>th', function() terminal.toggle('horizontal') end)

-- Undotree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, opts)

-- Git Fugitive
vim.keymap.set('n', '<leader>g', ':G ')
vim.keymap.set('n', '<leader>gg', ':G<CR>', opts)
vim.keymap.set('n', '<leader>gd', ':Gvdiffsplit<CR>', opts)

-- Git Signs
vim.keymap.set('n', '<leader>gt', ':Gitsigns toggle_signs<CR>', opts)
vim.keymap.set('n', '<leader>gl', ':Gitsigns toggle_linehl<CR>', opts)
vim.keymap.set('n', '<leader>gn', ':Gitsigns toggle_numhl<CR>', opts)
vim.keymap.set('n', '<leader>gb', ':Gitsigns blame_line<CR>', opts)
vim.keymap.set('n', '<leader>gs', ':Gitsigns stage_hunk<CR>', opts)
vim.keymap.set('n', '<leader>gu', ':Gitsigns reset_hunk<CR>', opts)
