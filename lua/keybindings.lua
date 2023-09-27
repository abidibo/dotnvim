-- makedir
vim.keymap.set('n', '<Leader>sd', ':!mkdir -p %:p:h<CR>', { desc='Create directories'})
-- esc
vim.keymap.set('i', 'jk', '<ESC>')
-- move buffer in new tab
vim.keymap.set('n', '<c-t>', '<c-W><S-t>', { noremap = true })
-- tabs
vim.keymap.set('n', '<Leader>tn', ':tabnew<CR>')
-- buffers
vim.keymap.set('n', '<Leader>bh', ':vsplit<CR>', { desc='Split buffer horizzontally'} )
-- save
vim.keymap.set('n', '<Leader>vs', ':w<CR>', { desc='Save buffer' } )
