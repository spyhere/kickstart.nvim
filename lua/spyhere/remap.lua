vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Move code in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Leave cursor untouched when performing J
vim.keymap.set('n', 'J', 'mzJ`z')

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Always stay in the middle during search
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Keep yanked items in the register when replacing with Visual mode
vim.keymap.set('x', '<leader>p', '"_dP')

-- Yank into OS register
vim.keymap.set('n', '<leader>y', '"*y')
vim.keymap.set('v', '<leader>y', '"*y')
-- Y mapped to y$
vim.keymap.set('n', '<leader>Y', '"*Y')

-- Delete to void register
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')

-- Quit vertical editing
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Tmux - create new session
vim.keymap.set('n', '<C-f', '<cmd>silent !tmux neww tmux-sessionizer<CR>')

-- Format with LSP
vim.keymap.set('n', '<leader>f', function()
  vim.lsp.buf.format()
end)

-- Quickfix list(buffer) navigation
vim.keymap.set('n', '<leader>j', '<cmd>cnext<CR>', { desc = 'Next item from quickfix list' })
vim.keymap.set('n', '<leader>k', '<cmd>cprev<CR>', { desc = 'Previous item from quickfix list' })

-- Explorer
vim.keymap.set('n', '<leader>pv', '<cmd>Ex<CR>', { desc = 'Open Explorer without typing :Ex' })

-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Neotree Git
vim.keymap.set('n', '<leader>gs', '<cmd>Neotree float git_status<CR>', { desc = 'Open [G]it [S]tatus' })
