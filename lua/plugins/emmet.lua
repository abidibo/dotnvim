return {
    'mattn/emmet-vim',
    lazy = true,
    ft = {"html", "htmldjango", "javascript", "javascriptreact"},
    config = function ()
        vim.g.user_emmet_leader_key="<c-z>"
    end
}
