-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  open_on_setup = true,
  open_on_setup_file = true,
  open_on_tab = true,
})
vim.cmd([[
autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   NvimTreeToggle
]])
vim.cmd([[
autocmd VimEnter *
            \   if !argc()
            \ |   wincmd w
]])
vim.keymap.set('n', '<C-f>', ':NvimTreeToggle<CR>')

