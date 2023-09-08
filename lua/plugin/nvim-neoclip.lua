require('neoclip').setup({
    continuous_sync = true
})

vim.api.nvim_set_keymap("n", "<space>y", ":lua require('neoclip.fzf')()<CR>", { noremap = true })

local function insert_mode_clipboard(func)
  return "<Cmd>lua require('neoclip.fzf')()<CR>"
end
vim.api.nvim_set_keymap("i", "<leader><leader>y", insert_mode_clipboard(), { noremap = true } )
