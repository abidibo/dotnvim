# Neovim Configuration

This is my current neovim configuration. It's targeted to python (django), javascript (react) development and bash scripting.

Let's see all the plugins divided into categories.

## Theme

**joshdick/onedark.vim**

A nice dark theme.

**vim-airline/vim-airline**    
**vim-airline/vim-airline-themes**

Status bar style

## Additional configuration

**MarcWeber/vim-addon-local-vimrc**

Load local `vimrc`. Useful if you need per project vim configuration (i.e. tab spaces).

## File Browser / Explorer

**scrooloose/nerdtree**

Tree explorer.

**Xuyuanp/nerdtree-git-plugin**

Display git status flags in the tree explorer.

**ryanoasis/vim-devicons**

Show file/dirs icons in the tree explorer.

**junegunn/fzf**    
**junegunn/fzf.vim**

Super fast fuzzy file search right inside vim, awesome.

**majutsushi/tagbar**

Tagbar

## Code Completion and friends

**neoclide/coc.nvim**

LSP stuff, vim like VSCode. The following extensions are installed:

- coc-emmet (generate html from selector strings)
- coc-css
- coc-html
- coc-json
- coc-tsserver
- coc-eslint
- coc-snippets
- coc-tag
- coc-pyright (python, instead of jedi)
- coc-marketplace (see all coc available extensions and install them in a second)
- coc-translator (translate word under cursor using google translate
- coc-sh
- coc-react-refactor
- coc-styled-components'
- coc-prettier
- coc-pairs

**SirVer/ultisnips**    
**honza/vim-snippets**

Useful snippets

## Git Integration

**tpope/vim-fugitive**

No words needed.

**gregsexton/gitv**

Gitk for vim

**kablamo/vim-git-log**

Git log

**jaxbot/github-issues.vim**

View github issues and previews them in commit messages.
In my case this plugin slows down a bit the fugitive Gcommit command.

## History

**vim-scripts/YankRing.vim**

Paste history

**sjl/gundo.vim**

Changes history

## Javascript & Typescript

**leafgarland/typescript-vim**    
**peitalin/vim-jsx-typescript**

**heavenshell/vim-jsdoc**

Javascript doc strings

**pangloss/vim-javascript**

Javascript syntax

## Miscellaneus

**terryma/vim-multiple-cursors**

Multiple cursors. Awesome.

**tpope/vim-commentary**

Comment out code lines

**tpope/vim-surround**

Change surroundings

**ap/vim-css-color**

Display css colors

## Mappings & Commands

### Miscellaneus

| Mapping | Category | Decription |
|---------|----------|------------|
| ctrl-n  | Terminal   | Opens a terminal |
| ctrl-f  | Tree explorer   | Toggle NERDTree explorer |
| space-f  | fzf   | Open fzf listing all files. ctrl-t to open in new tab, ctrl-v to open in new vertical split, strl-s to open in a new horizontal split. |
| space-b  | fzf   | Open fzf listing all open buffers |
| space-g  | fzf   | Open fzf listing all git tracked files |
| space-c  | fzf   | Open fzf listing all commits |
| space-t  | fzf   | Open fzf listing all tags |
| space-/  | fzf   | Open fzf Ag mode: grep against all files |
| ctrl-x ctrl-l  | fzf   | Autocomplete line |
| ctrl-x ctrl-f  | fzf   | Autocomplete file path |
| :Fold | coc | Folds current buffer |
| space-e | coc | Shows coc extensions |
| space-o | coc | Shows buffer outline |
| space-s | coc | Shows symbols |
| ,t | translator | Translate selection |
| ,tr | translator | Replace word under cursor with selection translation |
| space-y | history | Open yank history |
| F5 | history | Open undo history |
| F8 | navigation | Open tag bar |


### Autocomplete & Formatting & Refactoring

| Mapping | Category | Decription |
|---------|----------|------------|
| ctrl-space | coc | refresh coc suggestions |
| [g | diagnostic | Move to prev diagnostic point |
| ]g | diagnostic | Move to next diagnostic point |
| space-a | diagnostic | Shows diagnostic list |
| gd | code navigation | Go to definition |
| gy | code navigation | Go to type definition |
| gr | code navigation | See references |
| K | documentation | Show documentation |
| ,rn | refactoring | Rename symbol |
| ,a | actions | Perform action on selection |
| ,ac | actions | Perform action on current buffer |
| ctrl-s | selection | Range selection |
| ,qf | formatting | Fix current line |
| ,f | formatting | Formats current buffer |
| :OR | formatting | Sorts imports |
| space-c | refactoring & actions | Shows coc commands |

### Git

| Mapping | Decription |
|---------|------------|
| \gs      | Git status. Then **-** char to stage unstage, **cc** to commit. |
| \ga | Git add %:p |
| \gc | Git commit -v -q |
| \gcf | Gcommit % |
| \gt | Gcommit -v -q %:p |
| \gd | Gdiff |
| \ge | Gedit |
| \gr | Gread |
| \gw | Gwrite |
| \gl | Interactive git log. ctrl-o to go back. |
| \gp | Ggrep "insert" |
| \gm | Gmove "insert" |
| \gb | Git branch "insert" |
| \go | Git checkout "insert" |
| \gps | Git push |
| \gpl | Git pull |
| \gd | Split git diff in three panes, then gdh to accept left split changes, gdl to accept right split changes. |

### Python & Django

| Mapping | Category | Decription |
|---------|----------|------------|
| ,b      | Python   | Inserts a pdb breakpoint one line above |
| ,.v     | Django template | Inserts a variable |
| ,.t     | Django template | Inserts a tag |
| ,.d     | Django template | Inserts an inline comment |

### Frontend

| Mapping | Category | Decription |
|---------|----------|------------|
| :Prettier | coc | Runs prettier fixers on current buffer |
