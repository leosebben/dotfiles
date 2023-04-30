-- General settings
vim.opt.encoding = 'utf-8'                      -- Set default encoding to UTF-8
vim.opt.fileencoding = 'utf-8'                  -- Set file encoding to UTF-8
vim.opt.termguicolors = true                    -- Use GUI colors in terminal

-- Indentation settings
vim.opt.expandtab = true                        -- Use spaces instead of tabs
vim.opt.shiftwidth = 2                          -- Set indentation width
vim.opt.tabstop = 2                             -- Set tab width
vim.opt.smartindent = true                      -- Enable smart indentation
vim.opt.wrap = false                            -- Disable wrap lines

-- Line numbering settings
vim.opt.number = true                           -- Show line numbers
vim.opt.relativenumber = true                   -- Show relative line numbers
vim.opt.signcolumn = 'yes'

-- Searching settings
vim.opt.ignorecase = true                       -- Make searches case-insensitive
vim.opt.smartcase = true                        -- Enable case-sensitive search if search contains uppercase characters
vim.opt.hlsearch = false                        -- Highlight search results
vim.opt.incsearch = true                        -- Show search matches as you type

-- Split/window settings
vim.opt.splitbelow = true                       -- Open horizontal splits below current window
vim.opt.splitright = true                       -- Open vertical splits to the right of current window

-- Scrolling settings
vim.opt.scrolloff = 8                           -- Keep a margin of 8 lines when scrolling vertically
vim.opt.sidescrolloff = 8                       -- Keep a margin of 8 columns when scrolling horizontally
