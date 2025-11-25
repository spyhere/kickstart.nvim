-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd('TermOpen', {
  desc = 'Disable spell and line numbers in terminal',
  pattern = 'term://*',
  callback = function()
    vim.cmd 'setlocal nospell | setfiletype terminal'
    vim.cmd 'lua ZenLineNumber()'
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  -- Add new languages below to clear 'l' register for them as well
  pattern = { 'c' },
  desc = 'Clear l register for other files',
  callback = function()
    vim.fn.setreg('l', '')
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('JSLogMacro', { clear = true }),
  desc = 'Snippet to quickly log variables in js',
  pattern = { 'javascript', 'typescript' },
  callback = function()
    vim.fn.setreg('l', "$v_cconsole.log('pa: ', pA);")
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('PythonLogMacro', { clear = true }),
  desc = 'Snippet to quickly log variables in python',
  pattern = { 'python' },
  callback = function()
    vim.fn.setreg('l', '$v_cprint(f"pa: {pa}")')
  end,
})
