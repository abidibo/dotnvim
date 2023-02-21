call plug#begin("~/.config/nvim/plugged")
  " =============================================================
  " Plugin Section
  " =============================================================

  " Plug 'embear/vim-localvimrc'
  Plug 'MarcWeber/vim-addon-local-vimrc'

  " theme
  Plug 'morhetz/gruvbox'
  Plug 'joshdick/onedark.vim'
  Plug 'mhinz/vim-startify'

  " sidebar nav
  " Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'kyazdani42/nvim-tree.lua'

  " Tasks
  Plug 'preservim/vimux'
  Plug 'voldikss/vim-floaterm'
  Plug 'skywind3000/asynctasks.vim'
  Plug 'skywind3000/asyncrun.vim'

  " file searching
  " Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
  " optional for icon support
  Plug 'kyazdani42/nvim-web-devicons'

  " HTTP request
  Plug 'rest-nvim/rest.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  " motion
  Plug 'ggandor/leap.nvim'

  " repeat
  Plug 'tpope/vim-repeat'

  " cursor
  Plug 'RRethy/vim-illuminate'

  " code completion
  " install django-stubs package for Django!
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-tsserver', 'coc-tag', 'coc-syntax', 'coc-pairs', 'coc-css', 'coc-html', 'coc-json', 'coc-translator', 'coc-sh', 'coc-styled-components', 'coc-react-refactor', 'coc-ultisnips', 'coc-marketplace', 'coc-pyright', 'coc-eslint', 'coc-prettier', 'coc-highlight', 'coc-tasks', 'coc-jsref', 'coc-htmldjango']
  Plug 'SirVer/ultisnips'
  Plug 'mlaursen/vim-react-snippets'
  Plug 'honza/vim-snippets'
  Plug 'mattn/emmet-vim'

  " git
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/gv.vim'
  Plug 'kablamo/vim-git-log'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'sindrets/diffview.nvim'

  " tabs
  Plug 'webdevel/tabulous'
  Plug 'szw/vim-maximizer'
  Plug 'christoomey/vim-tmux-navigator'

  " clipboard
  Plug 'ibhagwan/nvim-neoclip.lua'
  Plug 'junegunn/vim-peekaboo'

  " undo
  Plug 'sjl/gundo.vim'

  " status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " multiple selection
  Plug 'terryma/vim-multiple-cursors'

  " indent line
  Plug 'Yggdroot/indentLine'

  " commentary
  Plug 'tpope/vim-commentary'

  " surroundings
  Plug 'tpope/vim-surround'

  " tagbar
  Plug 'preservim/tagbar'

  " polyglot
  Plug 'sheerun/vim-polyglot'

  " css
  Plug 'ap/vim-css-color'

  " python
  Plug 'mgedmin/python-imports.vim'

  " Doge
  Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

  " Markdown preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

  " GO
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

  " PlantUML
  Plug 'aklt/plantuml-syntax'
  Plug 'weirongxu/plantuml-previewer.vim'
  Plug 'tyru/open-browser.vim'

  " Fs
  Plug 'tpope/vim-eunuch'

  " Search replace
  " Plug 'pelodelfuego/vim-swoop'

  " Debugger
  Plug 'puremourning/vimspector'

  " Misc
  Plug 'MilesCranmer/gso'

call plug#end()

" =============================================================
" Config Section
" =============================================================

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" general
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set title

au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" set guifont=Roboto\ Mono\ Nerd\ Font\ Complete\ 11
set guifont=agave\ Nerd\ Font:h13
let g:neovide_transparency=0.8

" leader
let mapleader = ','

" enable mouse
set mouse=a

" Set to auto read when a file is changed from the outside
set autoread

" create missing dirs
nnoremap <leader>md :!mkdir -p %:p:h<cr>

" jk is escape
inoremap jk <esc>

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" TextEdit might fail if hidden is not set.
set hidden

" Give more space for displaying messages.
" set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" higlight cursor line
set cursorline

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Always show current position
set ruler

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Sets how many lines of history VIM has to remember
set history=700

" persistent undo
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set numbers
set relativenumber number

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

autocmd FileType html,htmldjango imap <leader>.c </<C-X><C-O><tab><C-F>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <leader>src :so $MYVIMRC<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua require'leap'.set_default_keymaps()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PEP8
" autocmd FileType python setlocal colorcolumn=80
" debug
autocmd FileType python nnoremap <leader>b Oimport pdb; pdb.set_trace() # BREAKPOINT<esc>
autocmd FileType javascript nnoremap <leader>b Odebugger // eslint-disable-line<esc>
autocmd FileType javascript nnoremap <leader>pt oimport PropTypes from 'prop-types'<esc>
autocmd FileType javascript nnoremap <leader>edl A // eslint-disable-line<esc>
autocmd FileType javascript nnoremap <leader>log oconsole.log('') // eslint-disable-line<esc>bbbbbbbla
" django template
autocmd FileType html,htmldjango imap <leader>.v {<esc>a{<space><space><esc>ha
autocmd FileType html,htmldjango imap <leader>.t {%<space><space>%}<esc>hhi
autocmd FileType html,htmldjango imap <leader>.d {#<space><space>#}<esc>hhi

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
" tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <leader><c-t> :call OpenTerminal()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd vimenter * ++nested colorscheme gruvbox
syntax on
colorscheme gruvbox
let g:gruvbox_italic=1
" colorscheme onedark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:airline_powerline_fonts = 1 " causes problems with custom terminal cell spacing

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim-tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" lua require'nvim-tree'.setup {
"             \ open_on_setup = true,
"             \ open_on_setup_file = true,
"             \ filters = { custom = { ".pyc$" } },
"             \ diagnostics = { enable = true, show_on_dirs = true }
"       \ }

lua require'nvim-tree'.setup {
            \ filters = { custom = { ".pyc$" } },
            \ git = { enable = false },
            \ diagnostics = { enable = true, show_on_dirs = true }
      \ }

function! s:find_file_no_focus()
  lua require "nvim-tree".find_file()
  wincmd p
endfunction

map <C-f> :NvimTreeToggle<CR>
nnoremap <silent> <C-m> :call <SID>find_file_no_focus()<CR>

" autocmd VimEnter *
"             \   if !argc()
"             \ |   Startify
"             \ |   NvimTreeToggle
" autocmd VimEnter *
"             \   if !argc()
"             \ |   wincmd w

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf | Telescope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

lua require'telescope'.setup{
    \ pickers = {
        \ current_buffer_fuzzy_find = { sorting_strategy = 'ascending' }
    \ }
\ }

nnoremap <space>f <cmd>Telescope find_files<cr>
nnoremap <space>, <cmd>Telescope live_grep<cr>
nnoremap <space>h <cmd>Telescope help_tags<cr>
nnoremap <space>gf <cmd>Telescope git_files<cr>
nnoremap <space>* <cmd>Telescope grep_string<cr>
nnoremap <space>vb <cmd>Telescope buffers<cr>
noremap <space>vc <cmd>Telescope commands<cr>
noremap <space>vs <cmd>Telescope search_history<cr>
noremap <space>vq <cmd>Telescope quickfix<cr>
noremap <space>m <cmd>Telescope marks<cr>
" noremap <space>y <cmd>Telescope registers<cr>
noremap <space>y <cmd>Telescope neoclip a<cr>
noremap <space>vs <cmd>Telescope spell_suggest<cr>
noremap <space>b <cmd>Telescope current_buffer_fuzzy_find<cr>
" noremap <space>bt <cmd>Telescope current_buffer_tags<cr>
noremap <space>r <cmd>Telescope resume<cr>
noremap <space>gc <cmd>Telescope git_commits<cr>
noremap <space>gx <cmd>Telescope git_bcommits<cr>
noremap <space>gb <cmd>Telescope git_branches<cr>
noremap <space>gs <cmd>Telescope git_status<cr>
noremap <space>gt <cmd>Telescope git_stash<cr>
" noremap <space>ft <cmd>Telescope treesitter<cr> " slows down finder
noremap <space>va <cmd>Telescope builtin<cr>
nnoremap <silent><nowait> <space>t  :<C-u>CocList tasks<cr>

" nnoremap <space>ll <cmd>lua require('fzf-lua').lines()<CR>
" nnoremap <space>lb <cmd>lua require('fzf-lua').blines()<CR>
" nnoremap <space>c <cmd>lua require('fzf-lua').git_bcommits()<CR>
" nnoremap <space>/ <cmd>lua require('fzf-lua').grep()<CR>
" noremap <space>v <cmd>lua require('fzf-lua').grep_visual()<CR>
" noremap <space>r <cmd>lua require('fzf-lua').grep_last()<CR>
" noremap <space>gc <cmd>lua require('fzf-lua').git_commits()<CR>
" noremap <space>gb <cmd>lua require('fzf-lua').git_branches()<CR>
" noremap <space>gs <cmd>lua require('fzf-lua').git_status()<CR>
" noremap <space>gh <cmd>lua require('fzf-lua').git_stash()<CR>
" nnoremap <space>va <cmd>lua require('fzf-lua').builtin()<CR>
" nnoremap <space>y <cmd>lua require('neoclip.fzf')()<CR>
" inoremap <C-space>y <cmd>lua require('neoclip.fzf')()<CR>

" move buffer in new tab
map <c-t> <c-W><S-t>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight CocMenuSel ctermfg=DarkRed  guifg=#330000
au FileType python let b:coc_root_patterns = ['.git', '.env', 'venv', '.venv', 'setup.cfg', 'setup.py', 'pyrightconfig.json', '.vimrc']

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
" remap for complete to use tab and <cr>
inoremap <silent><expr> <TAB>
    \ coc#pum#visible() ? coc#pum#next(1):
    \ <SID>check_back_space() ? "\<Tab>" :
    \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `,j` and `,k` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <Leader>j <Plug>(coc-diagnostic-next-error)
nmap <silent> <Leader>k <Plug>(coc-diagnostic-prev-error)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a* <Plug>(coc-codeaction-cursor)
nmap <silent> ga <Plug>(coc-codeaction-line)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
map <leader>f  :Format<cr>

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>x  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Translations
nmap <Leader>tt <Plug>(coc-translator-p)
vmap <Leader>tt <Plug>(coc-translator-pv)
" replace
nmap <Leader>tr <Plug>(coc-translator-r)
vmap <Leader>tr <Plug>(coc-translator-rv)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fugitive git bindings
nnoremap \ga :Git add %<CR>
nnoremap \gs :Git<CR>
nnoremap \gc :Git commit -v -q<CR>
nnoremap \gcf :Gcommit %<CR>
nnoremap \gt :Gcommit -v -q %:p<CR>
nnoremap \ge :Gedit<CR>
nnoremap \gr :Gread<CR>
nnoremap \gw :Gwrite<CR><CR>
nnoremap \glog :0Gclog<CR>
nnoremap \ggrep :Ggrep<Space>
nnoremap \gm :Gmove<Space>
nnoremap \gb :Git branch<Space>
nnoremap \go :Git checkout<Space>
nnoremap \gp :Git push<CR>
nnoremap \gl :Git pull<CR>
" Fugitive Conflict Resolution
nnoremap \gd :Gvdiffsplit!<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gundo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gundo_prefer_python3 = 1
nnoremap <F2> :GundoToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>8 :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Doge
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:doge_mapping_comment_jump_forward='<C-j>'
let g:doge_mapping_comment_jump_backward='<C-k>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Utilsnip
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<nop>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GO
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set list lcs=tab:\¦\ 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Emmet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_leader_key='<C-Z>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tabulous
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap \trn :TabulousRename<space>
let tabulousLabelNameOptions = ''

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim maximizer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>m :MaximizerToggle!<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Asynctasks
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:asyncrun_open = 6

" function! s:fzf_sink(what)
" 	let p1 = stridx(a:what, '<')
" 	if p1 >= 0
" 		let name = strpart(a:what, 0, p1)
" 		let name = substitute(name, '^\s*\(.\{-}\)\s*$', '\1', '')
" 		if name != ''
" 			exec "AsyncTask ". fnameescape(name)
" 		endif
" 	endif
" endfunction

" function! s:fzf_task()
" 	let rows = asynctasks#source(&columns * 48 / 100)
" 	let source = []
" 	for row in rows
" 		let name = row[0]
" 		let source += [name . '  ' . row[1] . '  : ' . row[2]]
" 	endfor
" 	let opts = { 'source': source, 'sink': function('s:fzf_sink'),
" 				\ 'options': '+m --nth 1 --inline-info --tac' }
" 	if exists('g:fzf_layout')
" 		for key in keys(g:fzf_layout)
" 			let opts[key] = deepcopy(g:fzf_layout[key])
" 		endfor
" 	endif
" 	call fzf#run(opts)
" endfunction

" command! -nargs=0 AsyncTaskFzf call s:fzf_task()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim swoop
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nmap <Leader>l :call Swoop()<CR>
" vmap <Leader>l :call SwoopSelection()<CR>

" nmap <Leader>ml :call SwoopMulti()<CR>
" vmap <Leader>ml :call SwoopMultiSelection()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Rest nvim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <leader>rr <Plug>RestNvim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Floaterm
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <leader>rr <Plug>RestNvim
nmap <leader>tf :FloatermNew ranger<CR>
nmap <leader>tg :FloatermNew lazygit<CR>
nmap <leader>tm :FloatermNew ncmpcpp<CR>
nmap <leader>tt :FloatermNew btm<CR>
nmap <leader>ts :FloatermNew spt<CR>

" let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
" let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clipboard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua require'neoclip'.setup{
            \ continuous_sync = true,
      \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimspector
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimspector_base_dir='/home/abidibo/.config/nvim/plugged/vimspector'
let g:vimspector_enable_mappings = 'HUMAN'
nnoremap <F5> <Plug>VimspectorContinue
nnoremap <F3> <Plug>VimspectorStop
nnoremap <F9> <Plug>VimspectorToggleBreakpoint
nnoremap <leader><F8> <Plug>VimspectorRunToCursor
nnoremap <leader>so <Plug>VimspectorStepOver
nnoremap <leader>si <Plug>VimspectorStepInto
nnoremap <leader>su <Plug>VimspectorStepOut

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Startify
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_custom_header_ = [
    \'             _nnnn_                      ',
    \'            dGGGGMMb     ,"""""""""""""".',
    \'           @p~qp~~qMb    | Hi abidibo!  |',
    \'           M|@||@) M|   _;..............''',
    \'           @,----.JM| -''',
    \'          JS^\__/  qKL',
    \'         dZP        qKRb',
    \'        dZP          qKKb',
    \'       fZP            SMMb',
    \'       HZM            MMMM',
    \'       FqM            MMMM',
    \'     __| ".        |\dS"qML',
    \'     |    `.       | `'' \Zq',
    \'    _)      \.___.,|     .''',
    \'    \____   )MMMMMM|   .''',
    \'         `-''       `--'' hjm',
    \]

let g:startify_custom_header = [
\' ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⠶⠶⠶⠶⠤⠤⠤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\' ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠔⠊⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠷⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\' ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⢶⣾⠋⢉⣉⣉⣛⣛⣍⣽⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\' ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⠴⠋⢀⡔⠉⠀⠀⣀⣠⣤⣤⣵⣼⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\' ⠀⠀⢀⠶⠒⠋⣹⠟⢉⣀⠤⠖⠛⠉⠀⢀⣠⠴⠚⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢶⣦⡀⠀⠀⠀⠉⠁⠀⠀⠀⠉⠙⠻⣶⣄⠀',
\' ⠀⡴⠿⠒⠒⡾⠀⢠⠾⠁⠀⣀⡀⠀⣴⡋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠈⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣇',
\' ⠀⠀⢠⠞⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⣀⣠⣤⠤⠤⠤⠤⠤⠤⠤⠔⠚⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣾⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡿⠁',
\' ⠀⣰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣶⣿⣧⣾⣤⣀⣀⣀⣰⡄⠀⢀⣀⣶⣤⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡟⠁⠀',
\' ⠐⠋⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⣀⣴⠟⠋⠀⠀⠀',
\' ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⠟⠋⠉⠉⠛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣀⣼⠿⠋⠁⠀⠀⠀⠀⠀',
\'⠀  ⠀⠀⠀⠀⠀⠀⠀⣾⡿⠁⠀⠀⠀⠀⠀⠀⠈⠋⠙⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⣠⣤⣶⡟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\'⠀⠀⠀  ⠀⠀⣀⣴⠾⣏⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\' ⠀⠀⠀⣠⠴⠋⠁⠀⠀⣿⣿⣦⣀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⡿⢿⣆⠀⠀⠀⠀⠀⠀⠀⠀',
\'  ⠀⡼⠃⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣶⣤⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣴⣾⠟⠉⣿⣿⣿⣿⣿⣿⣿⡿⠿⣿⣧⠀⠻⠀⠀⠀⠀⠀⠀⠀⠀',
\' ⠀⠜⠁⠀⠀⠀⠀⠀⢸⡏⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣿⣶⣿⣿⣿⣿⣿⣿⣿⣏⡁⠉⠋⢁⣠⡾⠿⠛⣿⣿⡇⢹⣿⣿⣶⣌⠙⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\'⠀  ⠀⠀⠀⠀⠀⠀⢸⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠛⠻⢿⣯⡉⠉⠉⣅⣰⣶⠂⢠⣿⡟⢀⣾⣿⣆⠀⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\'⠀⠀⠀  ⠀⠀⠀⠀⠀⠁⠀⠻⠈⢿⣿⣿⣿⣏⠉⠉⠉⠉⠉⠉⢹⣿⣇⠀⠀⠀⠀⠀⠈⠀⠐⠋⠓⠀⠀⣼⣋⣴⡇⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\'⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⣧⡉⠀⠀⠀⠀⠀⠀⠘⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⠋⠛⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\'⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣄⠀⠀⠀⠀⠀⠀⠙⠛⠃⠀⠀⠀⠀⠀⠀⠀⠀⢀⠜⠉⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\'⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠸⠿⣷⣄⠀⠀⠐⠒⠒⠒⠒⠒⠒⠒⠒⠀⠀⠀⣠⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⢹⠘⣷⣤⡀⠀⠀⠘⠛⠛⠂⠀⠀⠀⣠⡾⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⢸⠀⠘⣿⣿⣷⣦⣄⡀⠀⠀⣀⣴⣿⣿⠰⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\' ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⠀⣀⡘⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⢻⡀⠀⢀⣀⣀⣠⣤⣤⣄⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\'⠀  ⠀⠀⠀⠀⠀⠀⢀⡾⠋⠉⠁⠀⠀⠈⠉⠉⢹⠇⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠘⢿⡛⠉⠉⠁⠀⠀⠀⠀⠀⠉⠙⢿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀',
\'⠀⠀⠀  ⠀⠀⠀⢠⣾⠀⠀⠀⠀⣀⣤⣴⣶⠾⠏⠀⠀⢣⠀⠀⢻⣿⣿⣿⡿⠋⢹⣿⠇⠀⠀⠀⠀⠙⢆⣀⣤⣤⣄⣀⡀⠀⠀⠀⠀⠙⢷⡄⠀⠀⠀⠀⠀⠀⠀',
\' ---------------------------------------------------------- ',
\'⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀ ⠀⠀⠀⠀⠀⠀⠀    Hi abidibo!⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀          ⠀⠀',
\]


let g:startify_custom_header__ = [
\'   ⣿⣿⣿⣿⡿⠛⠛⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠛⠛⢿⣿⣿⣿⣿',
\'   ⣿⣿⣿⣿⠁⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠛⠛⠛⠛⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠈⣿⣿⣿⣿',
\'   ⣿⠋⠉⠁⠀⠀⠀⠀⢴⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠈⠉⠻⣿',
\'   ⣿⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⠟⠁⣰⡆⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⡈⠻⣿⣿⣿⣿⡿⠏⠀⠀⠀⠀⠀⠀⠀⠀⣿',
\'   ⣿⣦⣄⣀⣤⣶⣄⠀⠀⠀⠀⠙⢿⡿⠃⠀⡾⠃⣰⠟⢠⡟⠀⠀⠀⠀⠀⠀⠀⠀⢿⡄⠈⢿⡀⠈⢿⡿⠋⠀⠀⠀⠀⣠⣶⣄⣀⣀⣴⣿',
\'   ⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⢀⣿⣷⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣾⣷⣶⣾⣿⡄⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿',
\'   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿',
\'   ⣿⣿⣿⣿⣿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⣿⣿⣿⣿⣿',
\'   ⣿⣿⣿⣿⣿⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣼⣿⣿⣿⣿',
\'   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⣀⣴⣶⣶⣄⠀⠀⠀⠀⠀⠀⣠⣴⣶⣦⣄⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
\'   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⢰⣿⣿⣿⣿⣿⣷⡄⠀⠀⢀⣾⣿⣿⣿⣿⣿⣇⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
\'   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⢸⣿⣿⣿⣿⣿⣿⠇⠀⠀⠘⣿⣿⣿⣿⣿⣿⡿⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
\'   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣀⠀⠻⠿⣿⣿⠿⠋⠀⠀⠀⠀⠘⠿⢿⣿⡿⠿⠃⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
\'   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣀⠀⠀⠀⠀⠀⠐⢿⣿⠇⠀⠀⠀⠀⠀⣀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
\'   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⡿⠛⠲⠦⣤⣤⣤⣀⣀⣤⣤⣤⠴⠖⠛⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
\'   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⢸⢧⣀⠀⢰⡇⠀⠈⠉⡏⠉⠀⢸⠀⠀⢀⣼⡇⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
\'   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⣟⠀⠈⠉⣾⠳⠶⠤⣤⣧⠤⠴⢾⡗⠉⠉⠀⢇⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
\'   ⣿⣿⣿⣿⣿⡿⠋⠉⠙⠻⠛⠁⠀⠀⠀⢀⡏⠑⢶⣤⡟⠀⠀⠀⠀⡇⠀⠀⠀⣷⣠⡴⠖⢻⠀⠀⠀⠀⠈⠻⠟⠋⠉⠙⢿⣿⣿⣿⣿⣿',
\'   ⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣷⠀⠀⠀⠈⠉⠛⠛⠛⠛⠛⠛⠋⠉⠀⠀⠀⣾⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿',
\'   ⣿⣿⣿⣿⣿⣧⣀⣀⠀⠀⠀⠀⠐⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⠀⠀⠀⠀⢀⣀⣠⣾⣿⣿⣿⣿⣿',
\'   ⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣼⣿⣿⣿⣿⣇⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿',
\'   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣤⣤⣴⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣤⣤⣤⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣦⣤⣤⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    \]


let g:startify_files_number = 3
let g:startify_lists = [
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': function('s:gitModified'),  'header': ['   Git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   Git untracked']},
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

let g:startify_bookmarks = [
    \ $HOME . "/.config/nvim/init.vim", $HOME . "/.bashrc",
    \ $HOME . "/Applications/Bin/nvim-docs.sh", $HOME . "/.tmux.conf"
    \ ]
