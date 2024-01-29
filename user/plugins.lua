-- lvim.builtin.indentlines.options.show_end_of_line = true
-- lvim.builtin.indentlines.options.space_char_blankline = ' '

lvim.plugins = {
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      transparent = true
    },
  }
}
