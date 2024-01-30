return {
  'navarasu/onedark.nvim',
  priority = 1000,
  config = function()
    require('onedark').setup {
      style = 'deep',
      transparent = true,
      ending_tildes = true,
      code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
      },
      lualine = {
        transparent = true
      },
      diagnostics = {
        darker = true,
        undercurl = true,
        background = true
      },
    }
    vim.cmd [[colorscheme onedark]]
  end
}
