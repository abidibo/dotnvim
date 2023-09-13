vim.g.coc_global_extensions = {'coc-tsserver', 'coc-tag', 'coc-syntax', 'coc-pairs', 'coc-css', 'coc-html', 'coc-json', 'coc-translator', 'coc-sh', 'coc-styled-components', 'coc-react-refactor', 'coc-ultisnips', 'coc-marketplace', 'coc-pyright', 'coc-eslint', 'coc-prettier', 'coc-highlight', 'coc-tasks', 'coc-jsref', 'coc-htmldjango'}

vim.api.nvim_set_keymap('n', '<space>s',
    ":CocList -I symbols<CR>",
    { noremap = true, silent = true, nowait = true })

vim.api.nvim_set_keymap('n', '<space>t',
    ":CocList tasks<CR>",
    { noremap = true, silent = true, nowait = true })

vim.api.nvim_set_keymap("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})
vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", {silent = true})
vim.api.nvim_set_keymap("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
vim.api.nvim_set_keymap("n", "gi", "<Plug>(coc-implementation)", {silent = true})
vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-references)", {silent = true})

vim.api.nvim_set_keymap("x", "<leader>a", "<Plug>(coc-codeaction-selected)", {})
vim.api.nvim_set_keymap("n", "<leader>a", "<Plug>(coc-codeaction-selected)", {})
vim.api.nvim_set_keymap("n", "<leader>a*", "<Plug>(coc-codeaction-cursor)", {})
vim.api.nvim_set_keymap("n", "ga", "<Plug>(coc-codeaction-line)", {silent=true})

-- vim.api.nvim_set_keymap("i", "<TAB>", "pumvisible() ? '<C-n>' : '<TAB>'", {noremap = true, silent = true, expr = true})
-- vim.api.nvim_set_keymap("i", "<S-TAB>", "pumvisible() ? '<C-p>' : '<C-h>'", {noremap = true, expr = true})
vim.api.nvim_set_keymap("i", "<CR>", "coc#pum#visible() ? coc#_select_confirm() : '<C-G>u<CR><C-R>=coc#on_enter()<CR>'", {silent = true, expr = true, noremap = true})

vim.g.UltiSnipsExpandTrigger="<nop>" -- disable tab for ultisnips
vim.cmd([[
    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" : "\<Tab>"
]])

vim.cmd([[
  command! -nargs=0 Format :call CocAction('format')
  map <leader>f  :Format<cr>

  command! -nargs=? Fold :call     CocAction('fold', <f-args>)

  command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

  command! -nargs=0 Prettier :CocCommand prettier.formatFile

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

  nnoremap <silent> K :call <SID>show_documentation()<CR>
]])
