return {
    'nanozuki/tabby.nvim',
    config = function ()
        require('tabby.tabline').use_preset('active_wins_at_tail', {
          nerdfont = true, -- whether use nerdfont
          lualine_theme = 'onedark', -- lualine theme name
        })

        -- add table rename mapping
        vim.keymap.set('n', '<leader>tr', ':TabRename ', { desc = 'Tab rename' })
    end
}
