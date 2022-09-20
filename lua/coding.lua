-- set relative numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- use spaces instead of tabs
vim.opt.expandtab = true

-- be smart when using tabs
vim.opt.smarttab = true

-- set tab: 1 tab == 4 spaces
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- linebreak on 500 characters
vim.opt.lbr = true
vim.opt.tw = 500

-- indentation
vim.bo.autoindent = true
vim.bo.smartindent = true
