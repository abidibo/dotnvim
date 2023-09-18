return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function () 
      local configs = require("nvim-treesitter.configs")
      configs.setup({
          ensure_installed = { 'go', 'lua', 'python', 'rust', 'typescript', 'regex', 'bash', 'markdown', 'markdown_inline', 'javascript', 'sql' },

          highlight = { enable = true },
          indent = { enable = true },
          incremental_selection = {
            enable = true,
            keymaps = {
              init_selection = '<c-space>',
              node_incremental = '<c-space>',
              scope_incremental = '<c-s>',
              node_decremental = '<c-backspace>',
            },
          },
          textobjects = {
            select = {
              enable = true,
              lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
              keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ['aa'] = '@parameter.outer',
                ['ia'] = '@parameter.inner',
                ['af'] = '@function.outer',
                ['if'] = '@function.inner',
                ['ac'] = '@class.outer',
                ['ic'] = '@class.inner',
                ['ai'] = '@conditional.outer',
                ['ii'] = '@conditional.inner',
                ['al'] = '@loop.outer',
                ['il'] = '@loop.inner',
                ['ab'] = '@block.outer',
                ['ib'] = '@block.inner',
              },
            },
            move = {
              enable = true,
              set_jumps = true, -- whether to set jumps in the jumplist
              goto_next_start = {
                ['[f'] = '@function.outer',
                ['[c'] = '@class.outer',
              },
              goto_next_end = {
                [']f'] = '@function.outer',
                [']c'] = '@class.outer',
              },
              goto_previous_start = {
                ['[<s-f>'] = '@function.outer',
                ['[<s-c>'] = '@class.outer',
              },
              goto_previous_end = {
                [']<s-f>'] = '@function.outer',
                [']<s-c>'] = '@class.outer',
              },
            },
            swap = {
              enable = true,
              swap_next = {
                ['<leader>a'] = '@parameter.inner',
              },
              swap_previous = {
                ['<leader>A'] = '@parameter.inner',
              },
            },
          },
        })

        -- Repeat movement with ; and ,
        -- ensure ; goes forward and , goes backward
        vim.keymap.set({ "n", "x", "o" }, "<c-n>", ":TSTextobjectRepeatLastMove<CR>")
        vim.keymap.set({ "n", "x", "o" }, "<c-p>", ":TSTextobjectRepeatLastMovePrevious<CR>")
    end
 }
