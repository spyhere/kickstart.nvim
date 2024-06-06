vim.opt.swapfile = false
vim.opt.backup = false

-- Save undo history
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.undofile = true

vim.g.have_nerd_font = true

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Move statuscolumn (git signs) to the right from line number
vim.opt.statuscolumn = '%=%{v:relnum?v:relnum:v:lnum} %s'

function ZenLineNumber()
  vim.cmd 'let &stc=""'
  vim.opt.cursorline = false
end

function RelativeNumber()
  vim.cmd 'set rnu'
  vim.cmd 'let &stc="%=%{v:relnum?v:relnum:v:lnum} %s"'
end

function AbsoluteNumber()
  vim.cmd 'set nornu'
  vim.cmd 'let &stc="%=%l %s"'
end

-- Don't wrap the lines when window is small
vim.opt.wrap = false

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 50

vim.opt.colorcolumn = '120'

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 100

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- The width of a TAB is set to 2.
vim.opt.tabstop = 2
-- Indents will have a width of 2
vim.opt.shiftwidth = 2
-- Sets the number of columns for a TAB
vim.opt.softtabstop = 2
-- Expand TABs to spaces
vim.opt.expandtab = true

vim.opt.termguicolors = true
