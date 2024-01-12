return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    vim.keymap.set('n', '<Leader>cT', ':TodoTelescope<CR>')
  }
}
