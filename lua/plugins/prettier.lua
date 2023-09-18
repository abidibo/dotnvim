return {
    'MunifTanjim/prettier.nvim',
    lazy = true,
    ft = {
        'css',
        'graphql',
        'html',
        'javascript',
        'javascriptreact',
        'json',
        'less',
        'markdown',
        'scss',
        'typescript',
        'typescriptreact',
        'yaml',
    },
    config = function ()
        local prettier = require("prettier")
        prettier.setup({
          bin = 'prettierd', -- or `'prettierd'` (v0.23.3+)
          filetypes = {
            "css",
            "graphql",
            "html",
            "javascript",
            "javascriptreact",
            "json",
            "less",
            "markdown",
            "scss",
            "typescript",
            "typescriptreact",
            "yaml",
          },
        })
    end
}
