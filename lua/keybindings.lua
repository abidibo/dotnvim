-- source config
vim.keymap.set('n', '<Leader>src', ':so $MYVIMRC<CR>')
-- makedir
vim.keymap.set('n', '<Leader>md', ':!mkdir -p %:p:h<CR>')
-- esc
vim.keymap.set('i', 'jk', '<ESC>')
