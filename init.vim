call plug#begin("~/.config/nvim/plugged")
  " =============================================================
  " Plugin Section
  " =============================================================
  "
  " local vimrc
  Plug 'MarcWeber/vim-addon-local-vimrc'

  " theme
  " Plug 'morhetz/gruvbox'
  Plug 'joshdick/onedark.vim'

  " sidebar nav
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'

  " file searching
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  " code completion
  " install django-stubs package for Django!
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-eslint', 'coc-snippets', 'coc-tag', 'coc-pyright', 'coc-marketplace', 'coc-translator', 'coc-sh', 'coc-react-refactor', 'coc-styled-components', 'coc-prettier', 'coc-pairs']
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

  " git
  Plug 'tpope/vim-fugitive'
  Plug 'gregsexton/gitv'
  Plug 'kablamo/vim-git-log'
  " this slows down Gcommit, keeping it for now
  Plug 'jaxbot/github-issues.vim'

  " typescript stuff
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'

  " paste
  Plug 'vim-scripts/YankRing.vim'

  " undo
  Plug 'sjl/gundo.vim'

  " status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " multiple selection
  Plug 'terryma/vim-multiple-cursors'

  " pairs
  " Plug 'jiangmiao/auto-pairs'

  " commentary
  Plug 'tpope/vim-commentary'

  " surroundings
  Plug 'tpope/vim-surround'

  " Debug
  " python: https://github.com/gotcha/vimpdb
  " Plug 'joonty/vdebug'

  " tagbar
  Plug 'majutsushi/tagbar'

  " scratchpad
  " Plug 'metakirby5/codi.vim'

  " slimux
  " Plug 'epeli/slimux'

  " gutentags
  " Plug 'ludovicchabant/vim-gutentags'

  " jsdoc
  Plug 'heavenshell/vim-jsdoc'

  " js syntax
  " Plug 'pangloss/vim-javascript', {'for': 'javascript,javascript.jsx'}

  " syntax and snippets
  " Plug 'isRuslan/vim-es6' 

  Plug 'ap/vim-css-color'

call plug#end()

" =============================================================
" Config Section
" =============================================================

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" general
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PEP8
autocmd FileType python setlocal colorcolumn=80
" debug
noremap <leader>b Oimport pdb; pdb.set_trace() # BREAKPOINT<esc>
" django template
autocmd FileType html,htmldjango imap <leader>.v {{<space>}}<esc>hhi
autocmd FileType html,htmldjango imap <leader>.t {%<space><space>%}<esc>hhi
autocmd FileType html,htmldjango imap <leader>.d {#<space><space>#}<esc>hhi

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-t> :call OpenTerminal()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" navigation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:fzf_launcher='gnome-terminal --disable-factory -x bash -ic %s'
"let g:fzf_height='40%'
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
map <space>f :Files<CR>
map <space>b :Buffers<CR>
map <space>g :GitFiles<CR>
map <space>c :Commits<CR>
map <space>t :Tags<CR>
map <space>/ :Ag<space>
imap <c-x><c-l> <plug>(fzf-complete-line)
imap <C-x><C-f> <plug>(fzf-complete-file-ag)
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

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
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

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
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
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
nnoremap \gs :Gstatus<CR>
nnoremap \gc :Git commit -v -q<CR>
nnoremap \gcf :Gcommit %<CR>
nnoremap \gt :Gcommit -v -q %:p<CR>
nnoremap \gd :Gdiff<CR>
nnoremap \ge :Gedit<CR>
nnoremap \gr :Gread<CR>
nnoremap \gw :Gwrite<CR><CR>
nnoremap \gl :silent! Glog<CR>:bot copen<CR>
nnoremap \gp :Ggrep<Space>
nnoremap \gm :Gmove<Space>
nnoremap \gb :Git branch<Space>
nnoremap \go :Git checkout<Space>
nnoremap \gps :Git push<CR>
nnoremap \gpl :Git pull<CR>
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
