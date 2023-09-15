-- require('lualine').setup({
--   options = {
--     -- theme = 'onedark',
--     theme = 'auto',
--   },
--   sections = {
--     lualine_b = {
--       'branch', 'diff',
--       {
--         'diagnostics',
--         -- Table of diagnostic sources, available sources are:
--         --   'nvim_lsp', 'nvim_diagnostic', 'nvim_workspace_diagnostic', 'coc', 'ale', 'vim_lsp'.
--         -- or a function that returns a table as such:
--         --   { error=error_cnt, warn=warn_cnt, info=info_cnt, hint=hint_cnt }
--         -- sources = { 'nvim_diagnostic', 'coc' },

--         -- Displays diagnostics for the defined severity types
--         sections = { 'error', 'warn', 'info', 'hint' },

--         diagnostics_color = {
--           -- Same values as the general color option can be used here.
--           error = 'DiagnosticError', -- Changes diagnostics' error color.
--           warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
--           info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
--           hint  = 'DiagnosticHint',  -- Changes diagnostics' hint color.
--         },
--         symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
--         colored = true,           -- Displays diagnostics status in color if set to true.
--         update_in_insert = false, -- Update diagnostics in insert mode.
--         always_visible = false,   -- Show diagnostics even if there are none.
--       }
--     }
--   }
-- })
--
-- Eviline config for lualine
-- Author: shadmansaleh
-- Credit: glepnir
local lualine = require('lualine')

-- Color table for highlights
-- stylua: ignore
local colors = {
  bg       = '#202328',
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67',
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    component_separators = '',
    section_separators = '',
    theme = {
      -- We are going to use lualine_c an lualine_x as left and
      -- right section. Both are highlighted by c theme .  So we
      -- are just setting default looks o statusline
      normal = { c = { fg = colors.fg, bg = colors.bg } },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
    },
    theme = 'tokyonight',
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
  extensions = { 'nvim-tree', 'fugitive', 'quickfix' },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x at right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  'branch',
  icon = '',
  color = { fg = colors.violet, gui = 'bold' },
}

ins_left {
  -- filesize component
  'filesize',
  cond = conditions.buffer_not_empty,
}

ins_left {
  'filename',
  cond = conditions.buffer_not_empty,
  color = { fg = colors.magenta, gui = 'bold' },
}

ins_left { 'location' }

ins_left { 'progress', color = { fg = colors.fg, gui = 'bold' } }

ins_left {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
  },
}

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left {
  function()
    return '%='
  end,
}

ins_left {
  -- Lsp server name .
  function()
    local msg = 'No Active Lsp'
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    local client_names = ''
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      -- if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
      client_names = client_names .. ' / ' .. client.name
      -- end
    end
    if client_names ~= '' then
      return string.sub(client_names, 4) -- remove the first " / "
    end
    return msg
  end,
  icon = 'LSP:',
  color = { fg = '#ffffff' },
}

-- Add components to right sections

ins_right {
  -- filesize component
  'filetype',
  -- fmt = string.upper, -- I'm not sure why it's upper case either ;)
  cond = conditions.buffer_not_empty,
  color = { fg = colors.green, gui = 'bold' },
}

ins_right {
  'o:encoding', -- option component same as &encoding in viml
  -- fmt = string.upper, -- I'm not sure why it's upper case either ;)
  cond = conditions.hide_in_width,
  color = { fg = colors.green, gui = 'bold' },
}

ins_right {
  'diff',
  -- Is it me or the symbol for modified us really weird
  symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
}

-- Now don't forget to initialize lualine
lualine.setup(config)
