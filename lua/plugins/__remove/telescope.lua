return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').load_extension('luasnip')
        local builtin = require('telescope.builtin')

        vim.api.nvim_set_keymap('n', '<leader>ff', "<cmd>Telescope find_files<CR>",
            { noremap = true, silent = true, desc = 'Files' })
        vim.api.nvim_set_keymap('n', '<leader>fb', "<cmd>Telescope buffers<CR>",
            { noremap = true, silent = true, desc = 'Buffers' })
        vim.api.nvim_set_keymap('n', '<leader>fl', "<cmd>Telescope current_buffer_fuzzy_find<CR>",
            { noremap = true, silent = true, desc = 'Lines' })
        vim.api.nvim_set_keymap('n', '<leader>ft', "<cmd>Telescope asynctasks all<CR>",
            { noremap = true, silent = true, desc = 'Tasks' })
        vim.api.nvim_set_keymap('n', '<leader>fs', "<cmd>Telescope luasnip<CR>",
            { noremap = true, silent = true, desc = 'Snippets' })
        vim.api.nvim_set_keymap('n', '<leader>f,', "<cmd>Telescope live_grep<CR>",
            { noremap = true, silent = true, desc = 'Live grep' })
        vim.api.nvim_set_keymap('n', '<leader>f*', "<cmd>Telescope grep_string<CR>",
            { noremap = true, silent = true, desc = 'Grep under cursor' })

        vim.api.nvim_set_keymap('n', '<leader>cr', "<cmd>Telescope lsp_references<CR>", { noremap = true, silent = true, desc='LSP references' })
        vim.api.nvim_set_keymap('n', '<leader>cs', "<cmd>Telescope lsp_document_symbols<CR>",
            { noremap = true, silent = true, desc="LSP symbols" })
        vim.api.nvim_set_keymap('n', '<leader>cws', "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>",
            { noremap = true, silent = true, desc="LSP workspace symbols" })
        vim.api.nvim_set_keymap('n', '<leader>cd', "<cmd>Telescope diagnostics<CR>", { noremap = true, silent = true, desc="Diagnostics" })
        vim.api.nvim_set_keymap('n', '<leader>ct', "<cmd>Telescope treesitter<CR>", { noremap = true, silent = true, desc="Treesitter" })


        vim.keymap.set('n', '<leader>f/', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, { desc = 'Telescope grep' })
        vim.api.nvim_set_keymap('n', '<leader>fr', "<cmd>Telescope resume<CR>", { noremap = true, silent = true, desc="Resume" })

        local previewers = require('telescope.previewers')
        local conf = require('telescope.config')
        local E = {}

        local delta = previewers.new_termopen_previewer {
            get_command = function(entry)
                return { 'git', '-c', 'core.pager=delta', '-c', 'delta.side-by-side=false', 'diff', entry.value .. '^!',
                    '--', entry.current_file }
            end
        }

        local delta_status = previewers.new_termopen_previewer {
            get_command = function(entry)
                -- return { 'echo', vim.inspect(entry) }
                return { 'git', '-c', 'core.pager=delta', '-c', 'delta.side-by-side=false', 'diff', entry.path }
            end
        }

        E.my_git_bcommits = function(opts)
            opts = opts or {}
            opts.previewer = {
                delta,
                previewers.git_commit_message.new(opts),
                previewers.git_commit_diff_as_was.new(opts),
            }

            builtin.git_bcommits(opts)
        end

        E.my_git_commits = function(opts)
            opts = opts or {}
            opts.previewer = delta

            builtin.git_commits(opts)
        end

        E.my_git_status = function(opts)
            opts = opts or {}
            opts.previewer = delta_status

            builtin.git_status(opts)
        end


        vim.api.nvim_set_keymap('n', '<leader>fgf', "<cmd>Telescope git_files<CR>",
            { noremap = true, silent = true, desc = "Git files" })
        vim.api.nvim_set_keymap('n', '<leader>fgb', "<cmd>Telescope git_branches<CR>",
            { noremap = true, silent = true, desc = "Git branches" })
        vim.api.nvim_set_keymap('n', '<leader>fgt', "<cmd>Telescope git_stash<CR>",
            { noremap = true, silent = true, desc = "Git stash" })

        vim.keymap.set('n', '<leader>fgac', function()
            E.my_git_commits()
        end, { desc = 'Git all commits' })

        vim.keymap.set('n', '<leader>fgc', function()
            E.my_git_bcommits()
        end, { desc = 'Git buffer commits' })

        vim.keymap.set('n', '<leader>fgs', function()
            E.my_git_status()
        end, { desc = 'Git status' })

        return E
    end
}
