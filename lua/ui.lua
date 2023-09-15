-- colorscheme
vim.cmd[[colorscheme tokyonight]]
require('onedark').setup {
    style = 'darker'
}
-- require('onedark').load()
-- require("no-clown-fiesta").setup({
--   transparent = false,
--   styles = {
--     -- You can set any of the style values specified for `:h nvim_set_hl`
--     type = { italic = false },
--     lsp = { underline = true },
--   },
-- })
-- vim.cmd[[colorscheme no-clown-fiesta]]
-- vim.cmd("colorscheme kanagawa")
-- font
vim.opt.guifont = 'agave Nerd Font:h12'
-- display tabs and trailing spaces visually
vim.opt.listchars = 'tab:| ,lead:·,trail:·,eol:$'
-- highlight cursor line
vim.opt.cursorline = true
-- set 7 lines to the cursor - when moving vertically using j/k
vim.opt.so = 7
