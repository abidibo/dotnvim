return {
    'echasnovski/mini.animate',
    enabled = false,
    version = false,
    config = function()
        require('mini.animate').setup({
            -- Cursor path
            cursor = {
                -- Whether to enable this animation
                enable = false,
            }
        })
    end
}
