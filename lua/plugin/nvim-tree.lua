-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  filters = { custom = { ".pyc$" } },
  git = { enable = false },
  diagnostics = { enable = true, show_on_dirs = true },
  open_on_tab = true,
})

vim.keymap.set('n', '<C-m>', ':NvimTreeFindFile<CR><c-w>l')

local function open_nvim_tree()
    -- always open the tree
    require("nvim-tree.api").tree.open()
end
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
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
vim.keymap.set('n', '<C-f>', ':NvimTreeToggle<CR>')

