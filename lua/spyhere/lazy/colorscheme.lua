local function setGitSignsNeutralBG()
  vim.cmd.hi 'Comment gui=none'

  vim.cmd.hi 'GitSignsAdd guibg=theme.ui.bg'
  vim.cmd.hi 'GitSignsChange guibg=theme.ui.bg'
  vim.cmd.hi 'GitSignsDelete guibg=theme.ui.bg'
  vim.cmd.hi 'GitSignsAdd guibg=theme.ui.bg'
  vim.cmd.hi 'GitSignsChange guibg=theme.ui.bg'
  --
  vim.cmd.hi 'LineNr guibg=theme.ui.bg'
  vim.cmd.hi 'SignColumn guibg=theme.ui.bg'

  -- Hide cursor line highlight
  vim.cmd.hi 'clear CursorLine'
end

local function setGitSignsJetBrainsColors()
  vim.cmd.hi 'GitSignsAdd guifg=SeaGreen'
  vim.cmd.hi 'GitSignsChange guifg=#8D9FE2'
  vim.cmd.hi 'GitSignsDelete guifg=#928B8F'
end

return { -- You can easily change to a different colorscheme.
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'rebelot/kanagawa.nvim',
  -- 'xiantang/darcula-dark.nvim',
  -- 'rose-pine/neovim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    vim.cmd.colorscheme 'kanagawa-dragon'
    -- vim.cmd.colorscheme 'darcula-dark'
    -- vim.cmd 'colorscheme rose-pine-main'

    -- Works better with kanagawa
    setGitSignsNeutralBG()
    -- setGitSignsJetBrainsColors()
  end,
}
