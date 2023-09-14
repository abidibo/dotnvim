require('neoclip').setup({
    continuous_sync = true
})

vim.api.nvim_set_keymap("n", "<space>y", ":Telescope neoclip<CR>", { noremap = true })
require('telescope').load_extension('neoclip')

local function insert_mode_clipboard(func)
  return "<Cmd>:Telescope neoclip<CR>"
end
vim.api.nvim_set_keymap("i", "<leader><leader>y", insert_mode_clipboard(), { noremap = true } )
