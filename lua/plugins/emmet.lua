return {
    'mattn/emmet-vim',
    lazy = true,
    ft = {"html", "htmldjango", "javascript", "javascriptreact"},
    config = function ()
        -- vim.g.user_emmet_leader_key="<c-z>"
        -- imap <C-z> <plug>(emmet-expand-abbr)
        vim.keymap.set('i', '<C-z>', '<plug>(emmet-expand-abbr)', { noremap = true })
    end
}
