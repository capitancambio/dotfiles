set nocompatible               " be iMproved
filetype off                   " required!

"set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=~/.vim/bundle/vundle/gocode
set rtp+=~/dotfiles/_vim/
set rtp+=~/dotfiles/_vim/after/
set rtp+=~/dotfiles/_vim/syntax/
set rtp+=~/dotfiles/_vim/plugins/
"other syntax plugin files etc from dotfiles
"call vundle#begin()
call plug#begin('~/.local/share/nvim/plugged')

" let Vundle manage Vundle
" required!
"Plug 'VundleVim/Vundle.vim'
"Nicer view of the fs
Plug 'scrooloose/nerdtree'
"Async linters
Plug 'w0rp/ale'
" Beautify tables
Plug 'godlygeek/tabular'
" UltiSnips
Plug 'SirVer/ultisnips'
"" and the default snippets
Plug 'honza/vim-snippets'
"surround utilities
Plug 'tpope/vim-surround'
"substitute preserving case
Plug 'tpope/vim-abolish'
"shows the open buffers in a minibuffer
Plug 'fholgado/minibufexpl.vim'
"git bindings
Plug 'tpope/vim-fugitive'
"rebasing for fugitive
Plug 'gregsexton/gitv'
"Open file in github
Plug 'k0kubun/vim-open-github'
"undo tree
Plug 'sjl/gundo.vim'
"unix commands from vim
Plug 'tpope/vim-eunuch'
"simple comment and uncomment utility
Plug 'scrooloose/nerdcommenter'
"tagbar file skeleton
Plug 'majutsushi/tagbar'

"airline
Plug 'bling/vim-airline'


"fuzzy file finder
Plug 'cloudhead/neovim-fuzzy'


"skip
Plug 'jayflo/vim-skip'

"Easy motion
Plug 'unblevable/quick-scope'

"git-gutter shows git changes on the left column
Plug  'airblade/vim-gitgutter'

"tmux navigatio
Plug 'christoomey/vim-tmux-navigator'

Plug 'fatih/vim-go'

"Sorting imports
Plug 'stsewd/isort.nvim', { 'do': ':UpdateRemotePlugins' }


Plug 'vim-scripts/indentpython.vim'

Plug 'jeetsukumaran/vim-pythonsense'

Plug 'vim-test/vim-test'

Plug 'hashivim/vim-terraform'

Plug 'preservim/vimux'

Plug 'embear/vim-localvimrc'

"Better spelling
Plug 'kamykn/spelunker.vim'
Plug 'kamykn/popup-menu.nvim'

"Todo
Plug 'aserebryakov/vim-todo-lists'


if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

Plug 'kien/rainbow_parentheses.vim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/neoinclude.vim'
  Plug 'Shougo/neco-syntax'
  Plug 'zchee/deoplete-jedi', { 'for': 'python'  }
  " Plug 'zchee/deoplete-go', { 'do': 'make' }
  Plug 'fszymanski/deoplete-emoji'

else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#python_path = 'python3'

""Vinegar
Plug 'dhruvasagar/vim-vinegar'

"Gists
"Plug 'mattn/webapi-vim'
"Plug 'mattn/gist-vim'
"Docker
Plug 'ekalinin/Dockerfile.vim'

Plug 'roxma/vim-paste-easy'

Plug 'Quramy/tsuquyomi'

Plug 'ryanoasis/vim-devicons'

" more separators for i and a
Plug 'wellle/targets.vim'


Plug 'c9s/helper.vim'
Plug 'c9s/treemenu.vim'
Plug 'c9s/vikube.vim'

call plug#end()


filetype plugin indent on " required!
"let g:tagbar_ctags_bin = 'ctags --options=/home/javi/.vim/bundle/MatlabFilesEdition/.ctags'
filetype on
"filetype plugin on
"syntax on
syntax enable
colorscheme 256_jungle

set runtimepath+=$GOROOT/misc/vim
"Various sets
set backspace=2
set nocompatible
set autoindent
set ruler
set showcmd
"relative line number
set relativenumber
"persistent undos
set undofile
if isdirectory($HOME . '/.vim/undo') == 0
        :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
endif
set undodir=~/.vim/undo
set showmatch
set foldmethod=indent
set foldlevel=10
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set hlsearch
set suffixesadd+=.m
set suffixesadd+=.rb
set suffixesadd+=.py
set suffixesadd+=.java

"try to get tabs fine when using python

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

set tabstop=4
" 1 tab == 4 spaces
set shiftwidth=4

" Linebreak on 500 characters

set ai "Auto indent
set si "Smart indent

"ruby highlight goes slooooow if this is not set
set re=1


let mapleader = ","
"
nnoremap j gj
nnoremap k gk

"moving around windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"my own private escape
inoremap jk <esc>: w<CR>
let mapleader = ","
noremap \ ,

"gundo
noremap <Leader>u : GundoToggle<CR>

nnoremap <tab> za


"Tagbar
nnoremap <Leader>v : TagbarToggle<CR>
"Other maps
inoremap <Leader>fn <C-R>=expand("%:t:r")<CR>
nnoremap <leader>s : source %<CR>
"splits
nnoremap vs : vs<CR>
nnoremap sp : sp<CR>
"jump to buff
nnoremap <leader><leader> :<c-u>exe "b ".v:count<cr>

"ctrP to ,t
nnoremap <leader>t :FuzzyOpen<cr>
"fugitive
nnoremap <leader>g : Git<CR>
"Utl
nnoremap <leader>o : Utl ol<CR>

"go to vimrc
nnoremap <leader>. :e $MYVIMRC<CR>

"go to next error
nnoremap <leader>m :lnext<CR>
"make a file writable
nnoremap <leader>w :set modifiable<CR>: set buftype=<CR>

"fix
nnoremap <leader>f :ALEFix<CR> :w <CR>



"vim to use the global python instead of the virtuanenv
"let g:python_host_prog='/usr/bin/python3'

let g:tagbar_autofocus=1
let g:tagbar_autoclose=1
"Ultisnippets
let g:UltiSnipsSnippetsDir="~/dotfiles/_vim/ultisnippets/"
let g:UltiSnipsSnippetDirectories=["UltiSnips","ultisnippets"]
let g:UltiSnipsJumpForwardTrigger= "<right>"
let g:UltiSnipsJumpBackwardTrigger="<left>"

"Neocomplete
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0


"function! ExpandSnippetOrJumpForwardOrReturnTab()
    "let snippet = UltiSnips#ExpandSnippetOrJump()
    "if g:ulti_expand_or_jump_res > 0
        "return snippet
    "else
        "return "\<TAB>"
    "endif
"endfunction

"function! s:ExpandSnippetOrReturnEmptyString()
    "if pumvisible()
        "let snippet = UltiSnips#ExpandSnippetOrJump()
    "if g:ulti_expand_or_jump_res > 0
        "return snippet
    "else
        "return "\<C-y>\<CR>"
    "endif
    "else
        "return "\<CR>"
"endfunction

"inoremap <expr><TAB>
    "\ pumvisible() ? "\<C-n>" :
    "\ "<C-R>=ExpandSnippetOrJumpForwardOrReturnTab()<CR>"
    "

" snoremap <TAB> {{{1
" jump to next placeholder otherwise do nothing
"snoremap <buffer> <silent> <TAB>
    "\ <ESC>:call UltiSnips#JumpForwards()<CR>

"noremap <expr> <S-TAB>
    "\ pumvisible() ? "\<C-p>" :
    "\ "<C-R>=UltiSnips#JumpBackwards()<CR>"

"snoremap <buffer> <silent> <S-TAB>
    "\ <ESC>:call UltiSnips#JumpBackwards()<CR>

"inoremap <silent> <CR> <C-r>=<SID>ExpandSnippetOrReturnEmptyString()<CR>

"abbs!
abb trail trial
abb inteface interface

" to save always when the focus is lost
au FocusLost * silent! wa

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%100v', 100)

augroup filetype_go
        au!
        au FileType go nnoremap <buffer> <Leader>af :TestFile -strategy=vimux<CR>
        au FileType go nnoremap <buffer> <Leader>an :TestNearest -strategy=vimux<CR>
        au FileType go nnoremap <buffer> <Leader>rt :call RunGotest()<CR>
        au FileType go nnoremap <buffer> <Leader>r :call RunGo()<CR>
        "au BufWritePre *.go Fmt
augroup END

au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap gd <Plug>(go-def)

let g:go_fmt_command = "goimports"
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1



let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_auto_sameids = 1
"let g:go_auto_type_info = 1


"airplane conf
let g:airline_powerline_fonts = 1
"minibufexpl conflict with fugitive
let g:miniBufExplorerMoreThanOne=2
let g:miniBufExplMapCTabSwitchBufs = 1


let g:ale_sign_error = '😡'
let g:ale_sign_warning = '😤'

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 0
let g:ale_linters = {
\   'python': ['flake8', 'mypy'],
\   'go': ['bingo', 'gobuild', 'gofmt', 'golint', 'gometalinter', 'gopls', 'gosimple',
\   'gotype', 'govet', 'golangserver', 'staticcheck'] }

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black', 'isort'],
\   'yaml': ['prettier'],
\   'javascript': ['prettier'],
\   'go': ['gofmt', 'goimports'],
\   'sql': ['pgformatter'],
\}

let g:ale_python_black_options = "-l 99"
let g:ale_python_mypy_options = '--ignore-missing-imports'

nmap <silent> <C-s> <Plug>(ale_previous_wrap)
nmap <silent> <C-d> <Plug>(ale_next_wrap)



"use ag
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'


"Local vimrc
let g:localvimrc_ask=0

" gotags
let g:tagbar_type_go = {
                        \ 'ctagstype' : 'go',
                        \ 'kinds'     : [
                        \ 'p:package',
                        \ 'i:imports:1',
                        \ 'c:constants',
                        \ 'v:variables',
                        \ 't:types',
                        \ 'n:interfaces',
                        \ 'w:fields',
                        \ 'e:embedded',
                        \ 'm:methods',
                        \ 'r:constructor',
                        \ 'f:functions'
                        \ ],
                        \ 'sro' : '.',
                        \ 'kind2scope' : {
                        \ 't' : 'ctype',
                        \ 'n' : 'ntype'
                        \ },
                        \ 'scope2kind' : {
                        \ 'ctype' : 't',
                        \ 'ntype' : 'n'
                        \ },
                        \ 'ctagsbin'  : 'gotags',
                        \ 'ctagsargs' : '-sort -silent'
                        \ }


augroup filetype_python
        au!
        au FileType python nnoremap <buffer> <Leader>af :TestFile -strategy=vimux<CR>
        au FileType python nnoremap <buffer> <Leader>an :TestNearest -strategy=vimux<CR>

        au BufNewFile,BufRead
                                \ set tabstop=4
                                \ set softtabstop=4
                                \ set shiftwidth=4
                                \ set textwidth=99
                                \ set expandtab
                                \ set autoindent
                                \ set fileformat=unix


        au FileType python nnoremap <buffer> <Leader>r :!python % <CR>
augroup END


""" Testing python
let test#python#runner = 'pytest'
let test#python#pytest#executable = 'pipenv run pytest'
let test#strategy = "vimux"


" autoformat c family
let g:formatters_cpp = ['clangformat']
let g:formatdef_clangformat = '"clang-format"'
"au BufWritePre *.cc,*.h :Autoformat
let g:gtest#highlight_failing_tests = 1
augroup filetype_cpp
        au!
        au FileType cpp nnoremap <buffer> <Leader>r :call GTest()<CR>
        au FileType cpp nnoremap <buffer> <Leader>ru :call GTestUnder() <CR>
        "au BufWritePre *.go Fmt
augroup END

au BufRead,BufNewFile *.ino set filetype=arduino
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

""" Terraform
let g:terraform_fmt_on_save=1


"""emojis
call deoplete#custom#source('emoji', 'filetypes', ['rst','gitcommit','markdown','python','sh','go'])
call deoplete#custom#source('emoji', 'converters', ['converter_emoji'])

""" rg
" Use rg for the :grep program (as it's faster than ag)
"   * use "-t html" to only search one filetype
"   * use "-w" to match on word boundaries
if executable('rg')
    set grepprg=rg\ --vimgrep
    set grepformat=%f:%l:%c:%m
endif

" Search codebase for word under cursor (v useful)
nnoremap gw :grep <cword> . <CR>

" Import
nnoremap <leader>i mx"9yiwggoimport <esc>"9p'x

"" snoop and desnoop
nnoremap <leader>d :call Snoop()<cr>
nnoremap <leader>dd :call Desnoop()<cr>

function! Snoop()
    """ add mark to come back
    normal mx
    """ Go to start of function and add the decorator
    normal [mO@snoop

    """ Go to the start and import snoop
    normal ggO
    call append(line('.'), 'import snoop')
    """ go back to the mark
    normal 'x
    """ Write to apply autoformat
    normal w
endfunction

function! Desnoop()
    normal mx
    execute "g/snoop/d"
    normal 'x
    normal w
endfunction
