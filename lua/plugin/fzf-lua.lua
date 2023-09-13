vim.api.nvim_set_keymap('n', '<space>f',
    "<cmd>lua require('fzf-lua').files()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>b',
    "<cmd>lua require('fzf-lua').buffers()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>ll',
    "<cmd>lua require('fzf-lua').lines()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>lb',
    "<cmd>lua require('fzf-lua').blines()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>c',
    "<cmd>lua require('fzf-lua').bcommits()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>,',
    "<cmd>lua require('fzf-lua').live_grep()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>/',
    "<cmd>lua require('fzf-lua').grep()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>*',
    "<cmd>lua require('fzf-lua').grep_cword()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>v',
    "<cmd>lua require('fzf-lua').grep_visual()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>r',
    "<cmd>lua require('fzf-lua').grep_last()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>gc',
    "<cmd>lua require('fzf-lua').git_commits()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>gb',
    "<cmd>lua require('fzf-lua').git_branches()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>gs',
    "<cmd>lua require('fzf-lua').git_status()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>vc',
    "<cmd>lua require('fzf-lua').commands()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>vm',
    "<cmd>lua require('fzf-lua').marks()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>va',
    "<cmd>lua require('fzf-lua').builtin()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>gr',
    "<Plug>(coc-references)",
    { noremap = true, silent = true })
