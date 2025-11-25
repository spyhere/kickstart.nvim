function CompareWithClipboard()
  -- Yank visual selection into register x
  vim.cmd 'silent normal! gv"xy'

  -- Open a new tab to isolate the comparison
  vim.cmd 'tabnew'

  -- Paste clipboard (register 0) directly into the default buffer
  AbsoluteNumber()
  vim.cmd 'put 0'
  vim.cmd 'setlocal buftype=nofile bufhidden=wipe noswapfile'
  vim.cmd 'diffthis'

  -- Move to left window and open second split for selection (register x)
  AbsoluteNumber()
  vim.cmd 'wincmd p'
  vim.cmd 'vnew'
  vim.cmd 'put x'
  vim.cmd 'setlocal buftype=nofile bufhidden=wipe noswapfile'
  vim.cmd 'diffthis'
end

function ZenLineNumber()
  vim.cmd 'set nonu nornu | let &stc=""'
  vim.opt.cursorline = false
end

function RelativeNumber()
  vim.cmd 'set nu rnu | let &stc="%=%{v:relnum?v:relnum:v:lnum} %s"'
  vim.opt.cursorline = true
end

function AbsoluteNumber()
  vim.cmd 'set nu nornu | let &stc="%=%l %s"'
  vim.opt.cursorline = true
end
