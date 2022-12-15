require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'nord',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
