return {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
     dependencies = { 'nvim-lua/plenary.nvim' },
     config = function ()
        local builtin = require('telescope.builtin')

        vim.api.nvim_set_keymap('n', '<space>f', "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<space>b', "<cmd>Telescope buffers<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<space>l', "<cmd>Telescope current_buffer_fuzzy_find<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<space>t', "<cmd>Telescope asynctasks all<CR>", { noremap = true, silent = true })

        vim.api.nvim_set_keymap('n', '<space>cr', "<cmd>Telescope lsp_references<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<space>cs', "<cmd>Telescope lsp_document_symbols<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<space>cws', "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<space>cd', "<cmd>Telescope diagnostics<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<space>ct', "<cmd>Telescope treesitter<CR>", { noremap = true, silent = true })


        vim.keymap.set('n', '<space>/', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.api.nvim_set_keymap('n', '<space>,', "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<space>*', "<cmd>Telescope grep_string<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<space>r', "<cmd>Telescope resume<CR>", { noremap = true, silent = true })

        local previewers = require('telescope.previewers')
        local conf = require('telescope.config')
        local E = {}

        local delta = previewers.new_termopen_previewer {
          get_command = function(entry)
            return { 'git', '-c', 'core.pager=delta', '-c', 'delta.side-by-side=false', 'diff', entry.value .. '^!', '--', entry.current_file }
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


        vim.api.nvim_set_keymap('n', '<space>gf', "<cmd>Telescope git_files<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<space>gb', "<cmd>Telescope git_branches<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<space>gt', "<cmd>Telescope git_stash<CR>", { noremap = true, silent = true })
        -- vim.api.nvim_set_keymap('n', '<space>gs', "<cmd>Telescope git_status<CR>", { noremap = true, silent = true })

        vim.keymap.set('n', '<space>gac', function()
            E.my_git_commits()
        end)

        vim.keymap.set('n', '<space>gc', function()
            E.my_git_bcommits()
        end)

        vim.keymap.set('n', '<space>gs', function()
            E.my_git_status()
        end)

        return E
     end
}
