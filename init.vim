call plug#begin("~/.config/nvim/plugged")
  " =============================================================
  " Plugin Section
  " =============================================================
  "
  " Plug 'embear/vim-localvimrc'
  Plug 'joshdick/onedark.vim'
  Plug 'MarcWeber/vim-addon-local-vimrc'

  " theme
  " Plug 'morhetz/gruvbox'
  Plug 'joshdick/onedark.vim'
  Plug 'mhinz/vim-startify'

  " sidebar nav
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'

  " Tasks
  Plug 'skywind3000/asynctasks.vim'
  Plug 'skywind3000/asyncrun.vim'

  " file searching
  " Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  " Plug 'junegunn/fzf.vim'
  Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
  " optional for icon support
  Plug 'kyazdani42/nvim-web-devicons'

  " HTTP request
  Plug 'aquach/vim-http-client'

  " motion
  Plug 'justinmk/vim-sneak'

  " code completion
  " install django-stubs package for Django!
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-tsserver', 'coc-tag', 'coc-syntax', 'coc-pairs', 'coc-css', 'coc-html', 'coc-json', 'coc-translator', 'coc-sh', 'coc-styled-components', 'coc-react-refactor', 'coc-ultisnips', 'coc-marketplace', 'coc-pyright', 'coc-eslint', 'coc-prettier', 'coc-highlight', 'coc-tasks']
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
  " Plug 'kyazdani42/nvim-web-devicons'
  " Plug 'romgrk/barbar.nvim'

  " paste
  " Plug 'vim-scripts/YankRing.vim'

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
  Plug 'majutsushi/tagbar'

  " polyglot
  Plug 'sheerun/vim-polyglot'

  " jsdoc
  Plug 'heavenshell/vim-jsdoc'

  " css
  Plug 'ap/vim-css-color'

  " python
  Plug 'mgedmin/python-imports.vim'

  " Install doq
  Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }

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
  Plug 'pelodelfuego/vim-swoop'

  " Debugger
  " Plug 'puremourning/vimspector'

call plug#end()

" =============================================================
" Config Section
" =============================================================

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" general
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set title

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

set guifont=Roboto\ Mono\ Nerd\ Font\ Complete\ 11

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
set number

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
" Sneak
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sneak#label = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PEP8
" autocmd FileType python setlocal colorcolumn=80
" debug
autocmd FileType python nnoremap <leader>b Oimport pdb; pdb.set_trace() # BREAKPOINT<esc>
autocmd FileType javascript nnoremap <leader>b Odebugger // eslint-disable-line<esc>
autocmd FileType javascript nnoremap <leader>pt oimport PropTypes from 'prop-types'<esc>
autocmd FileType javascript nnoremap <leader>dl A // eslint-disable-line<esc>
autocmd FileType javascript nnoremap <leader>log oconsole.log('') // eslint-disable-line<esc>bbbbbbbla
" django template
autocmd FileType html,htmldjango imap <leader>.v {<esc>a{<space><space><esc>ha
autocmd FileType html,htmldjango imap <leader>.t {%<space><space>%}<esc>hhi
autocmd FileType html,htmldjango imap <leader>.d {#<space><space>#}<esc>hhi

nmap <silent> <C-_> <Plug>(pydocstring)
let g:pydocstring_doq_path='/home/abidibo/.local/bin/doq'
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
colorscheme onedark


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-f> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   NERDTree
            \ |   wincmd w

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""let g:fzf_launcher='gnome-terminal --disable-factory -x bash -ic %s'
""let g:fzf_height='40%'
"let $FZF_DEFAULT_COMMAND = 'ag --ignore "node_modules" --ignore ".virtualenv" -l -g ""'
"" let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
"map <space>f :Files<CR>
"map <space>b :Buffers<CR>
"map <space>g :GitFiles<CR>
"map <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"map <space>c :Commits<CR>
"map <space>t :AsyncTaskFzf<CR>
"map <space>/ :Ag<space>
"imap <c-l> <plug>(fzf-complete-line)
"imap <C-x><C-f> <plug>(fzf-complete-file-ag)
"let g:fzf_action = {
"  \ 'ctrl-t': 'tab split',
"  \ 'ctrl-s': 'split',
"  \ 'ctrl-v': 'vsplit'
"  \}

nnoremap <space>f <cmd>lua require('fzf-lua').files()<CR>
nnoremap <space>b <cmd>lua require('fzf-lua').buffers()<CR>
nnoremap <space>c <cmd>lua require('fzf-lua').lsp_definitions()<CR>
nnoremap <space>l <cmd>lua require('fzf-lua').git_bcommits()<CR>
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent><nowait> <space>t  :<C-u>CocList tasks<cr>
nnoremap <space>/ <cmd>lua require('fzf-lua').live_grep()<CR>
nnoremap <space>* <cmd>lua require('fzf-lua').grep_cword()<CR>
noremap <space>v <cmd>lua require('fzf-lua').grep_visual()<CR>
noremap <space>gc <cmd>lua require('fzf-lua').git_commits()<CR>
noremap <space>gb <cmd>lua require('fzf-lua').git_branches()<CR>
noremap <space>gs <cmd>lua require('fzf-lua').git_stash()<CR>
imap <c-l> <plug>(fzf-complete-line)

map <c-t> <c-W><S-t>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight CocMenuSel ctermfg=DarkRed  guifg=#330000
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

hi CocSearch ctermfg=12 guifg=#18A3FF
hi CocMenuSel ctermbg=109 guibg=#13354A

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
nmap <Leader>t <Plug>(coc-translator-p)
vmap <Leader>t <Plug>(coc-translator-pv)
" replace
nmap <Leader>tr <Plug>(coc-translator-r)
vmap <Leader>tr <Plug>(coc-translator-rv)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YankRing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <space>y :YRShow<CR>
let g:yankring_clipboard_monitor=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fugitive git bindings
nnoremap \ga :Git add %:p<CR><CR>
nnoremap \gs :Git<CR>
nnoremap \gc :Git commit -v -q<CR>
nnoremap \gcf :Gcommit %<CR>
nnoremap \gt :Gcommit -v -q %:p<CR>
nnoremap \gd :Gdiff<CR>
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
nnoremap <F5> :GundoToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => jsdoc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jsdoc_lehre_path = '/home/abidibo/.nvm/versions/node/v12.11.0/bin/lehre'
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1
let g:jsdoc_enable_es6=1

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
" => Vimspector
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:vimspector_enable_mappings='HUMAN'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tabulous
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap \trn :TabulousRename<space>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim maximizer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>m :MaximizerToggle!<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Asynctasks
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:asyncrun_open = 6

function! s:fzf_sink(what)
	let p1 = stridx(a:what, '<')
	if p1 >= 0
		let name = strpart(a:what, 0, p1)
		let name = substitute(name, '^\s*\(.\{-}\)\s*$', '\1', '')
		if name != ''
			exec "AsyncTask ". fnameescape(name)
		endif
	endif
endfunction

function! s:fzf_task()
	let rows = asynctasks#source(&columns * 48 / 100)
	let source = []
	for row in rows
		let name = row[0]
		let source += [name . '  ' . row[1] . '  : ' . row[2]]
	endfor
	let opts = { 'source': source, 'sink': function('s:fzf_sink'),
				\ 'options': '+m --nth 1 --inline-info --tac' }
	if exists('g:fzf_layout')
		for key in keys(g:fzf_layout)
			let opts[key] = deepcopy(g:fzf_layout[key])
		endfor
	endif
	call fzf#run(opts)
endfunction

command! -nargs=0 AsyncTaskFzf call s:fzf_task()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim swoop
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>l :call Swoop()<CR>
vmap <Leader>l :call SwoopSelection()<CR>

nmap <Leader>ml :call SwoopMulti()<CR>
vmap <Leader>ml :call SwoopMultiSelection()<CR>

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
\' ⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⢀⡾⠛⠛⠻⣏⠀⠀⠀⠀⢸⣇⠀⠀⢿⣿⡛⠁⠀⣾⡿⠀⣠⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠙⠀⠀⠀⠀⠀⠀⠀',
\'⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⠁⠀⠀⠀⢹⣆⠀⠀⠀⢸⣿⡄⠀⠈⣿⡇⠀⢠⣿⠇⢰⡏⠀⠀⠀⠀⠀⣰⠇⠀⠀⠉⠉⠛⢿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\'⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⣷⠶⠶⠶⠶⠶⠿⣷⣤⣀⣸⣿⣷⠀⠀⠘⣷⠀⠘⠋⢀⣿⠁⣠⣶⠖⠚⢿⡿⠛⠛⠛⠛⠛⠛⠛⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\'⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠙⠃⠀⠉⠛⢿⡆⠀⠀⠸⣆⠀⣠⣾⠏⠸⠋⠁⠀⢀⡾⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\'⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⠀⠀⠀⠙⠛⠛⠛⠀⠀⠀⠀⠀⠚⠁⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\'⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠏⠀⠀⠀',
\'⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠁⠀⠀⠀⠀⠀⠀⠀    Hi abidibo!⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠏⠀⠀⠀',
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

let g:startify_lists = [
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

nnoremap <leader>s :Startify<CR>
