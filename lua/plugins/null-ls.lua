return {
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.djlint.with({
                    filetypes = { "html", "htmldjango" },
                }),
                null_ls.builtins.diagnostics.djlint.with({
                    filetypes = { "html", "htmldjango" },
                }),
                null_ls.builtins.formatting.isort,
                null_ls.builtins.formatting.black.with({
                    filetypes = { "python", "python.django" },
                }),
                -- null_ls.builtins.diagnostics.ruff.with({
                --     filetypes = { "python", "python.django" },
                -- }),
                null_ls.builtins.formatting.prettier.with({
                    filetypes = {
                        "javascript",
                        "javascriptreact",
                        "typescript",
                        "typescriptreact",
                        "css",
                        "scss",
                        "html",
                        "json",
                        "yaml",
                        "markdown",
                        "graphql",
                        "md",
                        "txt",
                    },
                }),
            },
            on_attach = function(client, bufnr)
                if client.name == "djlint" then
                    client.server_capabilities.documentFormattingProvider = false -- 0.8 and later
                end
                if client.name == "ruff" then
                    client.server_capabilities.publishDiagnostics = false -- 0.8 and later
                end
                if client.supports_method("textDocument/formatting") then
                    vim.keymap.set("n", "<Leader>cf", function()
                        vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
                    end, { buffer = bufnr, desc = "[lsp] format" })

                    -- format on save
                    -- vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
                    -- vim.api.nvim_create_autocmd(event, {
                    --   buffer = bufnr,
                    --   group = group,
                    --   callback = function()
                    --     vim.lsp.buf.format({ bufnr = bufnr, async = async })
                    --   end,
                    --   desc = "[lsp] format on save",
                    -- })
                end

                if client.supports_method("textDocument/rangeFormatting") then
                    vim.keymap.set("x", "<Leader>cf", function()
                        vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
                    end, { buffer = bufnr, desc = "[lsp] format" })
                end
            end,
        })
    end
}
