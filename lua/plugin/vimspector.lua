vim.g.vimspector_base_dir = '/home/abidibo/.config/nvim/plugged/vimspector'
vim.g.vimspector_enable_mappings = 'HUMAN'

vim.api.nvim_set_keymap("n", "<F5>", "<Plug>VimspectorContinue", { noremap = true })
vim.api.nvim_set_keymap("n", "<F3>", "<Plug>VimspectorStop", { noremap = true })
vim.api.nvim_set_keymap("n", "<F9>", "<Plug>VimspectorToggleBreakpoint", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader><F8>", "<Plug>VimspectorRunToCursor", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>so", "<Plug>VimspectorStepOver", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>si", "<Plug>VimspectorStepInto", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>su", "<Plug>VimspectorStepOut", { noremap = true })
