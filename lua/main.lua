vim.g.mapleader = ','
vim.opt.mouse = 'a'
-- having longer updatetime (default is 4000 ms = 4 s) leads to noticeable delays and poor user experience.
vim.opt.updatetime = 300
-- sets how many lines of history VIM has to remember
vim.opt.history = 1000
-- persistent undo
vim.opt.undodir = '/home/abidibo/.vim/backups'
vim.opt.undofile = true
-- ignore case when searching
vim.opt.ignorecase = true
-- when searching try to be smart about cases 
vim.opt.smartcase = true
-- open new split panes to right and bottom
vim.opt.splitright = true
vim.opt.splitbelow = true
