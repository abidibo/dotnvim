return {
    'echasnovski/mini.move',
    version = false,
    config = function()
        require('mini.move').setup({
            -- Module mappings. Use `''` (empty string) to disable one.
            mappings = {
                -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
                down = '<c-j>',
                up = '<c-k>',
            },

            -- Options which control moving behavior
            options = {
                -- Automatically reindent selection during linewise vertical move
                reindent_linewise = true,
            },
        })
    end
}
