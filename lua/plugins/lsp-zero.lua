return {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        config = function()
            require("neodev").setup({})
            local lsp_zero = require("lsp-zero")
            -- lsp_zero.extend_lspconfig()
            -- lsp_zero.preset("recommended")

            local cmp = require('cmp')
            local cmp_action = require('lsp-zero').cmp_action()
            -- local cmp_select = {behavior = cmp.SelectBehavior.Select}
            local cmp_mappings = lsp_zero.defaults.cmp_mappings({
                -- ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                -- ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                -- ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                ["<c-s>"] = cmp.mapping.complete(),
                ['<Tab>'] = cmp_action.luasnip_supertab(),
                ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
                ['<CR>'] = cmp.mapping.confirm({ select = false }),
                ['<C-j>'] = cmp_action.luasnip_jump_forward(),
                ['<C-k>'] = cmp_action.luasnip_jump_backward(),
                -- ["<c-space>"] = cmp.mapping {
                --     i = cmp.mapping.complete { reason = cmp.ContextReason.Auto }
                -- },
            })

            lsp_zero.on_attach(
                function(client, bufnr)
                    vim.keymap.set("n", "g?", function() vim.diagnostic.open_float() end,
                        { buffer = bufnr, remap = false, desc = 'View line diagnostics' })
                    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end,
                        { buffer = bufnr, remap = false, desc = 'Go to definition' })
                    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end,
                        { buffer = bufnr, remap = false, desc = 'Go to declaration' })
                    vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end,
                        { buffer = bufnr, remap = false, desc = 'Go to implementation' })
                    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end,
                        { buffer = bufnr, remap = false, desc = 'Show documentation' })
                    -- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, { buffer = bufnr, remap = false })
                    -- vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, { buffer = bufnr, remap = false })
                    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end,
                        { buffer = bufnr, remap = false })
                    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end,
                        { buffer = bufnr, remap = false })
                    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end,
                        { buffer = bufnr, remap = false, desc = 'Code actions' })
                    vim.keymap.set("n", "<leader>cn", function() vim.lsp.buf.rename() end,
                        { buffer = bufnr, remap = false, desc = 'Rename' })
                    -- vim.keymap.set("i", "<c-h>", function() vim.lsp.buf.signature_help() end, { buffer = bufnr, remap = false })
                    vim.keymap.set("n", "<leader>cf", function() vim.lsp.buf.format() end,
                        { buffer = bufnr, remap = false, desc = 'Code format' })
                end
            )

            vim.diagnostic.config({
                virtual_text = true
            })

            lsp_zero.set_sign_icons({
                error = '✘',
                warn = '▲',
                hint = '⚑',
                info = '»'
            })

            require('luasnip.loaders.from_vscode').lazy_load()

            cmp.setup({
                preselect = 'item',
                completion = {
                    completeopt = 'menu,menuone,noinsert',
                    -- autocomplete = false,
                },
                mapping = cmp_mappings,
                snippet = {
                    expand = function(args)
                        require 'luasnip'.lsp_expand(args.body)
                    end
                },
                sources = {
                    { name = 'nvim_lsp', keyword_length = 1 },
                    { name = 'luasnip',  keyword_length = 2, max_item_count = 5 },
                    {
                        name = 'buffer',
                        keyword_length = 2,
                        -- max_item_count = 5,
                        option = {
                            get_bufnrs = function()
                                return vim.api.nvim_list_bufs()
                            end
                        }
                    },
                    { name = 'path', keyword_length = 2 },
                }
            })

            -- DBUI utils
            vim.cmd [[
                autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
            ]]

            require('mason').setup({})
            require('mason-lspconfig').setup({
                ensure_installed = {},
                handlers = {
                    lsp_zero.default_setup,
                    lua_ls = function()
                        local lua_opts = lsp_zero.nvim_lua_ls()
                        require('lspconfig').lua_ls.setup(lua_opts)
                    end,
                    pyright = function()
                        require('lspconfig').pyright.setup({
                            settings = {
                                stubPath = vim.fn.stdpath("data") .. "/lazy/python-type-stubs",
                                python = {
                                    analysis = {
                                        autoSearchPaths = true,
                                        useLibraryCodeForTypes = true,
                                        diagnosticMode = 'openFilesOnly',
                                    },
                                },
                            }
                        })
                    end,
                }
            })
        end
    },
    --- Uncomment these if you want to manage LSP servers from neovim
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    -- LSP Support
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
        },
    },
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lua' },
        }
    },
    -- Snippets
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
    },
    {
        "microsoft/python-type-stubs",
        cond = false
    }
}
