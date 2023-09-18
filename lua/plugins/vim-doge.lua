return {
    "kkoomen/vim-doge",
    build = ":call doge#install()",
    config = function ()
        vim.g.doge_mapping_comment_jump_forward = '<C-j>'
        vim.g.doge_mapping_comment_jump_backward = '<C-k>'
    end
}
