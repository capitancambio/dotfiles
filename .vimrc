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
"undo tree
Plug 'sjl/gundo.vim'
"unix commands from vim
Plug 'tpope/vim-eunuch'
"simple comment and uncomment utility
Plug 'scrooloose/nerdcommenter'
"tagbar file skeleton
Plug 'majutsushi/tagbar'

""power line
"Plug 'Lokaltog/powerline.git'
"airline
Plug 'bling/vim-airline'


"fuzzy file finder
Plug 'cloudhead/neovim-fuzzy'

""CamelCase motion
"Plug 'camelcasemotion'

"skip
Plug 'jayflo/vim-skip'

"Easy motion
"Plug 'Lokaltog/vim-easymotion'
Plug 'unblevable/quick-scope'

"git-gutter shows git changes on the left column
Plug  'airblade/vim-gitgutter'

"tmux navigatio
Plug 'christoomey/vim-tmux-navigator'

"Handling stuff using gist from vim
"Plug 'mattn/vim-webapi'
"Plug 'mattn/vim-gist'
"Go
"Plug 'jnwhiteh/vim-golang.git'
"Plug 'Blackrush/vim-gocode'
Plug 'fatih/vim-go'
"Python
Plug 'nvie/vim-flake8'
"Plug 'klen/rope-vim'
"Plug 'vim-scripts/Pydiction'
Plug 'vim-scripts/indentpython.vim'
"Plug 'tell-k/vim-autopep8'
Plug 'alfredodeza/pytest.vim'
Plug 'janko-m/vim-test'

Plug 'hashivim/vim-terraform'

if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif
"Plug 'davidhalter/vim-jedi'
"Supertab
"Plug 'ervandew/supertab'
"
"Integration with IPython
"Plug 'ivanov/vim-ipython'

Plug 'kien/rainbow_parentheses.vim'

"Plug 'Valloric/YouCompleteMe'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/neoinclude.vim'
  Plug 'Shougo/neco-syntax'
  Plug 'zchee/deoplete-jedi', { 'for': 'python'  }
  Plug 'zchee/deoplete-go', { 'do': 'make' }

else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#python_path = 'python3'

"Plug 'skywind3000/asyncrun.vim'

"Scala
"Plug 'derekwyatt/vim-scala'
" Formatters mostly for c++
Plug 'Chiel92/vim-autoformat'


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

"add camelcase functionality
"make sth to toggle this...
nnoremap <leader>w <Plug>CamelCaseMotion_w
nnoremap <leader>b <Plug>CamelCaseMotion_b
nnoremap <leader>e <Plug>CamelCaseMotion_e
"sunmap w
"sunmap b
"sunmap e

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
nnoremap <leader>g : Gstatus<CR>
"Utl
nnoremap <leader>o : Utl ol<CR>
"Maven
nmap <F5> :Mvn clean install<CR>
nmap <F6> :Mvn clean package<CR>
"go to vimrc
nnoremap <leader>. :e $MYVIMRC<CR>

"go to vimrc
nnoremap <leader>e :Errors<CR>

"go to next error
nnoremap <leader>l :lnext<CR>
"check spelling and grammar from after the deadline
vnoremap <leader>a :call Atd()<CR>
"make a file writable
nnoremap <leader>w :set modifiable<CR>: set buftype=<CR>

"vim to use the global python instead of the virtuanenv
"let g:python_host_prog='/usr/bin/python3'

let g:tagbar_autofocus=1
let g:tagbar_autoclose=1
"Ultisnippets
let g:UltiSnipsSnippetsDir="~/dotfiles/_vim/ultisnippets/"
let g:UltiSnipsSnippetDirectories=["UltiSnips","ultisnippets"]
let g:UltiSnipsJumpForwardTrigger= "<up>"
let g:UltiSnipsJumpBackwardTrigger="<down>"
"Neocomplete
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Recommended key-mappings.
" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
  "return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  "" For no inserting <CR> key.
  ""return pumvisible() ? "\<C-y>" : "\<CR>"
"endfunction

function! ExpandSnippetOrJumpForwardOrReturnTab()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<TAB>"
    endif
endfunction

function! s:ExpandSnippetOrReturnEmptyString()
    if pumvisible()
        let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<C-y>\<CR>"
    endif
    else
        return "\<CR>"
endfunction

inoremap <expr><TAB>
    \ pumvisible() ? "\<C-n>" :
    \ "<C-R>=ExpandSnippetOrJumpForwardOrReturnTab()<CR>"
" snoremap <TAB> {{{1
" jump to next placeholder otherwise do nothing
"snoremap <buffer> <silent> <TAB>
    "\ <ESC>:call UltiSnips#JumpForwards()<CR>

"noremap <expr> <S-TAB>
    "\ pumvisible() ? "\<C-p>" :
    "\ "<C-R>=UltiSnips#JumpBackwards()<CR>"

"snoremap <buffer> <silent> <S-TAB>
    "\ <ESC>:call UltiSnips#JumpBackwards()<CR>

inoremap <silent> <CR> <C-r>=<SID>ExpandSnippetOrReturnEmptyString()<CR>


" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
        let g:neocomplete#sources#omni#input_patterns = {}
endif

"let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
"let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
"let g:SuperTabContextDiscoverDiscovery =
"\ ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

let g:SuperTabDefaultCompletionType = "context"
let g:EasyMotion_leader_key='<Space>'
set wildignore=*.class,*.dat,*/public/*,*/ansible/*

"abbs!
abb trail trial
abb inteface interface

" to save always when the focus is lost
au FocusLost * silent! wa

let g:EclimCompletionMethod = 'omnifunc'
augroup filetype_java
        au!
        ""eclim maps
        au FileType java nnoremap <buffer> <Leader>m :JavaImport<CR>
        au FileType java nnoremap <buffer> <Leader>i :JavaImportOrganize<CR>
        au FileType java nnoremap <buffer> <Leader>G :JavaGet<CR>
        au FileType java nnoremap <buffer> <Leader>S :JavaSet<CR>
        au FileType java nnoremap <buffer> <Leader>GS :JavaGetSet<CR>
        au FileType java nnoremap <buffer> <Leader>co :JavaCorrect<CR>
        au FileType java nnoremap <buffer> <Leader>j :MJUnit<CR>
        au FileType java nnoremap <buffer> <Leader>jr :JUnitResult<CR>
        au FileType java nnoremap <buffer> <Leader>jc :JUnitCreate<CR>
        au FileType java nnoremap <buffer> <Leader>jd :JavaDocComment<CR>
        "au BufWritePre *.java JavaFormat
augroup END
let g:EclimPythonValidate=0
augroup filetype_go
        au!
        au FileType go nnoremap <buffer> <Leader>rt :call RunGotest()<CR>
        au FileType go nnoremap <buffer> <Leader>r :call RunGo()<CR>
        "au BufWritePre *.go Fmt
augroup END
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap gd <Plug>(go-def)
let g:go_fmt_command = "goimports"

let g:syntastic_go_checkers = ['govet', 'go']
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"

let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.



let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"let g:go_auto_type_info = 1


"dbext configuration
let g:dbext_default_profile_ldb_paper= 'type=SQLITE:dbname=/home/javi/Dropbox/uni/src/python/results/ldb_sets/sets.db'
let dbext_default_SQLITE_bin = 'sqlite3'

let wiki_daisy = {}
let wiki_daisy.path = '~/Dropbox/wiki/daisy'
nnoremap <leader>wd :execute "normal <leader>ww"<cr>
let wiki_phd= {}
let wiki_phd.path = '~/Dropbox/wiki/phd'
nnoremap <leader>wp :execute "normal 2<leader>ww"<cr>

let g:vimwiki_list = [wiki_daisy, wiki_phd]
"airplane conf
let g:airline_powerline_fonts = 1
"minibufexpl conflict with fugitive
let g:miniBufExplorerMoreThanOne=2
let g:miniBufExplMapCTabSwitchBufs = 1
"google wiki
au BufEnter *.wiki set ft=googlecodewiki
au BufEnter *.wiki set spell

"python-mode
"pep8 is picky as hell
"let g:pymode_lint_checker = 'pyflakes,mccabe'
"syntastic is cool enough
"let g:pymode_lint = 0
"rope vim (inside pymode)
let g:pymode_rope_autoimport_modules = []
let g:ropevim_autoimport_modules = ["os","logging","unittest"]

"beauty_matlab conf
let g:beauty_matlab_greek=1

"let g:syntastic_mode_map ={'mode': 'active',
"\ 'active_filetypes': ['ruby', 'php'],
"\ 'passive_filetypes': ['text'] }
"let g:EclimCValidate=0
"let g:ycm_register_as_syntastic_checker = 0 
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_check_on_open=1
let g:syntastic_auto_loc_list=1

let g:syntastic_loc_list_height=5
"cool chars for errors
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

let g:ale_sign_error = '😡'
let g:ale_sign_warning = '😤'

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_python_mypy_options = '--ignore-missing-imports'


"use ag
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
"let g:syntastic_debug=1
let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wpedantic"
"let g:syntastic_cpp_checkers = ["gcc"]
"echom g:syntastic_cpp_checkers[0]
"let g:syntastic_cpp_gcc_exec= "make"
let g:ycm_global_ycm_extra_conf="~/.ycm_extra_conf.py"
"matlab conceal
au BufEnter *.m set conceallevel=2
au BufEnter *.m set concealcursor=
"to colapse classes
au BufEnter *.m set foldlevel=3

" START LATEX STUFF "
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.


au BufEnter *.tex set spell

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

let g:Tex_ViewRule_dvi='evince'
let g:Tex_ViewRule_pdf='evince'

let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='pdf'
" END LATEX STUFF "
"
"

"Local vimrc
let g:localvimrc_ask=0

if !exists(':JUnitCreate')
        command! JUnitCreate call CreateJUnit()
endif

if !exists(':MJUnit')
        command! MJUnit call RunJUnit()
endif
""My functions
fun! CreateJUnit()
        let testFile=substitute(expand('%:p'),'\/src\/main','\/src\/test','')
        let testFile=substitute(testFile,'\.java','Test.java','')
        silent! exec ":!mkdir -p ". fnamemodify(testFile,':p:h:')
        exec ":e ".testFile
endf
"matlab ctags tricks
let g:tagbar_type_matlab= {
                        \ 'ctagstype' : 'MatLab',
                        \ 'kinds' : [
                        \'c:classes',
                        \'f:fields',
                        \'m:methods',
                        \'F:functions',
                        \ ]
                        \ }

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

fun! RunJUnit()

        let testFile=expand('%:t:r')
        echom ":Mvn clean test -Dtest= ".testFile
        exec ":Mvn! clean test -Dtest=".testFile
endf

fun! RunGotest()
        cd %:h
        exec ":!go test -v -covermode atomic"
        cd-
endf

fun! RunGo()
        cd %:h
        exec ":!go run main.go"
        cd-
endf

fun! GTest()
        exec ":make! | GTestRun"
endf

fun! GTestUnder()
        exec ":make! | GTestRunUnderCursor"
endf
fun! Atd()
        exec ":'<,'>w !detex | atdtool -"
endf

let @f= '^[/\d^Mi_^[l4x$i_^[p'  

"Ultisnips and ycm
"function! g:UltiSnips_Complete()
        "call UltiSnips#ExpandSnippet()
        "if g:ulti_expand_res == 0
                "if pumvisible()
                        "return "\<C-n>"
                "else
                        "call UltiSnips#JumpForwards()
                        "if g:ulti_jump_forwards_res == 0
                                "return "\<TAB>"
                        "endif
                "endif
        "endif
        "return ""
"endfunction

" au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<NOP>"
let g:UltiSnipsListSnippets="<c-e>"
" this mapping Enter key to <C-y> to chose the current highlight item 
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Handlebars as html
au BufNewFile,BufRead *.handlebars set filetype=html

"let g:autopep8_aggressive=1
let g:autopep8_disable_show_diff=1
augroup filetype_python
        au!
        au FileType python nnoremap <buffer> <Leader>af :Pytest file verbose<CR>
        au FileType python nnoremap <buffer> <Leader>ac :Pytest class verbose<CR>
        au FileType python nnoremap <buffer> <Leader>am :Pytest method verbose<CR>

        au FileType python nnoremap <buffer> <Leader>at :Pytest function verbose<CR>

        au BufNewFile,BufRead 
                                \ set tabstop=4
                                \ set softtabstop=4
                                \ set shiftwidth=4
                                \ set textwidth=79
                                \ set expandtab
                                \ set autoindent
                                \ set fileformat=unix
        "au BufWritePost *.py :Autopep8 
        "au BufWritePost *.py :SyntasticReset

                
        au FileType python nnoremap <buffer> <Leader>r :!python % <CR>
        "au FileType python setlocal formatprg=autopep8\ -
        "au BufWritePre *.py Autoformat
augroup END

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
        "project_base_dir = os.environ['VIRTUAL_ENV']
        "activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
        "execfile(activate_this, dict(__file__=activate_this))
"EOF
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
