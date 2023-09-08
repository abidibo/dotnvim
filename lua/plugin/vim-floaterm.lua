vim.api.nvim_set_keymap("n", "<leader>tf", ":FloatermNew ranger<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>tg", ":FloatermNew lazygit<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>tm", ":FloatermNew ncmpcpp<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>tt", ":FloatermNew btm<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>ts", ":FloatermNew spt<CR>", {})

vim.g.floaterm_autoinsert = 1
vim.g.floaterm_autoclose = 1
vim.g.floaterm_width = 0.8
vim.g.floaterm_height = 0.8
