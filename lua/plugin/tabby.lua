require('tabby.tabline').use_preset('active_wins_at_tail', {
  nerdfont = false, -- whether use nerdfont
  lualine_theme = 'onedark', -- lualine theme name
})

-- add table rename mapping
vim.keymap.set('n', '\\trn', ':TabRename ')
