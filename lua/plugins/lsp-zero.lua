return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    config = function ()
        local lsp_zero = require("lsp-zero")
        lsp_zero.extend_lspconfig()
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
          ['<CR>'] = cmp.mapping.confirm({select = false}),
        })

        lsp_zero.set_preferences({
            suggest_lsp_servers = false,
            sign_icons = {
                error = 'E',
                warn = 'W',
                hint = 'H',
                info = 'I'
            }
        })

        lsp_zero.on_attach(function(client, bufnr)
          local opts = {buffer = bufnr, remap = false}
          -- vim.keymap.set("n", "gd", "<c-w>v<cmd>vim.lsp.buf.definition()<cr>", opts)
          vim.keymap.set("n", "gd", function() 
            vim.cmd("vsplit")
            vim.lsp.buf.definition() 
          end, opts)
          vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
          vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
          vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
          -- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
          -- vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
          vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
          vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
          vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
          vim.keymap.set("n", "<leader>gr", function() vim.lsp.buf.references() end, opts)
          vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
          vim.keymap.set("i", "<leader>h", function() vim.lsp.buf.signature_help() end, opts)
          vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, opts)
        end)

        -- lsp_zero.setup()

        vim.diagnostic.config({
            virtual_text = true
        })

        require('lspconfig').ruff_lsp.setup {
          on_attach = on_attach,
          init_options = {
            settings = {
              -- Any extra CLI arguments for `ruff` go here.
              args = {},
            }
          }
        }

        cmp.setup({
          preselect = 'item',
          completion = {
            completeopt = 'menu,menuone,noinsert'
          },
          mapping = cmp_mappings,
          sources = {
            {name = 'nvim_lsp', keyword_length = 1 },
            {name = 'luasnip', keyword_length = 2, max_item_count = 5},
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
            {name = 'path', keyword_length = 2},
          }
        })
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
            }
        })
    end
  },
  --- Uncomment these if you want to manage LSP servers from neovim
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  -- LSP Support
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      {'hrsh7th/cmp-nvim-lsp'},
    },
  },
  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-buffer'},
		{'hrsh7th/cmp-path'},
		{'saadparwaiz1/cmp_luasnip'},
		{'hrsh7th/cmp-nvim-lua'},
		-- Snippets
		{'L3MON4D3/LuaSnip'},
		{'rafamadriz/friendly-snippets'},
    }
  }
}