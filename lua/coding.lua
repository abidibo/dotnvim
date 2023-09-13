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

vim.cmd [[
    autocmd FileType python nnoremap <leader>b Oimport pdb; pdb.set_trace() # BREAKPOINT<esc>
    autocmd FileType javascript nnoremap <leader>b Odebugger // eslint-disable-line<esc>
    autocmd FileType javascript nnoremap <leader>pt oimport PropTypes from 'prop-types'<esc>
    autocmd FileType javascript nnoremap <leader>edl A // eslint-disable-line<esc>
    autocmd FileType javascript nnoremap <leader>log oconsole.log('') // eslint-disable-line<esc>bbbbbbbla
    autocmd FileType html,htmldjango imap <leader>.v {<esc>a{<space><space><esc>ha
    autocmd FileType html,htmldjango imap <leader>.t {%<space><space>%}<esc>hhi
    autocmd FileType html,htmldjango imap <leader>.d {#<space><space>#}<esc>hhi
]]
