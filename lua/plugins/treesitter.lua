return 
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
    config = function()
      ensure_installed = {"lua","javascript","php","rust","sql","toml","typescript","java","python"}
      local config = require('nvim-treesitter.configs')
      config.setup({
        auto_install = true,
        hightlight = {enable = true},
        indent = {enable = true}
      })
    end
  }
