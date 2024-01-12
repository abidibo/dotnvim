-- makedir
vim.keymap.set('n', '<Leader>sd', ':!mkdir -p %:p:h<CR>', { desc='Create directories'})
-- esc
vim.keymap.set('i', 'jk', '<ESC>')
-- move buffer in new tab
vim.keymap.set('n', '<c-t>', '<c-W><S-t>', { noremap = true })
-- tabs
vim.keymap.set('n', '<Leader>tn', ':tabnew<CR>')
vim.keymap.set('n', '<Leader>tc', ':tabclose<CR>')
vim.keymap.set('n', '<Leader>to', ':tabonly<CR>')
-- buffers
vim.keymap.set('n', '<Leader>bh', ':vsplit<CR>', { desc='Split buffer horizzontally'} )
-- save
vim.keymap.set('n', '<Leader>vss', ':w<CR>', { desc='Save buffer' } )
vim.keymap.set('n', '<Leader>vsq', ':wq<CR>', { desc='Save buffer' } )
vim.keymap.set('n', '<Leader>vqq', ':q<CR>', { desc='Close buffer' } )
vim.keymap.set('n', '<Leader>vqa', ':qa<CR>', { desc='Close all buffers' } )
-- surroundings
vim.keymap.set('n', ',cs', 'ci`', { desc='Change inside backtick' } )
-- yank and paste
vim.keymap.set('n', 'Y', '"+y', { desc='Yank to clipboard' } )
vim.keymap.set('v', 'Y', '"+y', { desc='Yank to clipboard' } )
vim.keymap.set('n', 'P', '"+p', { desc='Paste from clipboard' } )
vim.keymap.set('v', 'P', '"+p', { desc='Paste from clipboard' } )
-- quickfix
vim.keymap.set('n', '<Leader>qc', ':cclose<CR>', { desc='Close quickfix'} )
vim.keymap.set('n', '<Leader>qo', ':copen<CR>', { desc='Open quickfix'} )
