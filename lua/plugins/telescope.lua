return {
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
      },
    },
    config = function()
      local telescope = require('telescope')
      local actions = require('telescope.actions')
      telescope.load_extension('fzf')
      telescope.setup({})

      local keymap = vim.keymap

      keymap.set("n", "<leader>ff", ":Telescope find_files<cr>", { noremap = true, silent = true, desc = { "find files" } })
      keymap.set("n", "<leader>fr", ":Telescope oldfiles<cr>", { noremap = true, silent = true, desc = { "recent files" } })
      keymap.set("n", "<leader>fg", ":Telescope live_grep<cr>", { noremap = true, silent = true, desc = { "find string" } })
      keymap.set("n", "<leader>fc", ":Telescope grep_string<cr>",
        { noremap = true, silent = true, desc = { "find string under cursosr" } })
      keymap.set("n", "<leader>fb", ":Telescope buffers<cr>", { noremap = true, silent = true, desc = "show buffers" })
      keymap.set("n", "<leader>fh", ":Telescope help_tags<cr>", { noremap = true, silent = true, desc = "" })
      keymap.set("n", "<leader>fn", ":enew<cr>", { noremap = true, silent = true, desc = "new file" })
    end
    --   telescope.load_extension("fzf_native")
    --set keymaps
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
