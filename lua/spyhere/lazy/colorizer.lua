return {
  'catgoose/nvim-colorizer.lua',
  event = 'BufReadPre',
  opts = {
    filetypes = { '*' },
    user_default_options = {
      RGB = true, -- #RGB hex codes
      RRGGBB = true, -- #RRGGBB hex codes
      names = false, -- "blue", "green", etc. (set to true if you want)
      tailwind = true, -- Enable tailwind color parsing!
      css = true, -- Enable CSS features
    },
  },
}
