set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/vundle/gocode
set rtp+=~/dotfiles/_vim/
set rtp+=~/dotfiles/_vim/after/
set rtp+=~/dotfiles/_vim/syntax/
set rtp+=~/dotfiles/_vim/plugins/
"other syntax plugin files etc from dotfiles
call vundle#begin()

" let Vundle manage Vundle
" required!
Bundle 'VundleVim/Vundle.vim'
"Nicer view of the fs
Bundle 'scrooloose/nerdtree'
"Universal syntax checker
Bundle 'scrooloose/syntastic'
" Beautify tables
Bundle "godlygeek/tabular"
" UltiSnips
Bundle 'SirVer/ultisnips'
"" and the default snippets
Bundle 'honza/vim-snippets'
"surround utilities
Bundle "tpope/vim-surround"
"amazing latex plugin
Bundle "git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex"
"shows the open buffers in a minibuffer
Bundle 'fholgado/minibufexpl.vim'
"git bindings
Bundle 'tpope/vim-fugitive'
"rebasing for fugitive
Plugin 'gregsexton/gitv'
"undo tree
Bundle 'sjl/gundo.vim'
"unix commands from vim
Bundle 'tpope/vim-eunuch'
"simple comment and uncomment utility
Bundle 'scrooloose/nerdcommenter'
"Matlab
Bundle 'vim-scripts/MatlabFilesEdition'
"Time management

"tagbar file skeleton
Bundle 'majutsushi/tagbar'

""power line
"Bundle 'Lokaltog/powerline.git'
"airline
Bundle 'bling/vim-airline'


"fuzzy file finder
Bundle 'kien/ctrlp.vim.git'

""CamelCase motion
"Bundle 'camelcasemotion'

"skip
Bundle 'jayflo/vim-skip'

"Easy motion
"Bundle 'Lokaltog/vim-easymotion'

"git-gutter shows git changes on the left column
Bundle 'airblade/vim-gitgutter'

"tmux navigatio
Plugin 'christoomey/vim-tmux-navigator'

"Handling stuff using gist from vim
"Bundle 'mattn/vim-webapi'
"Bundle 'mattn/vim-gist'
"Go
"Bundle 'jnwhiteh/vim-golang.git'
"Bundle 'Blackrush/vim-gocode'
Bundle 'fatih/vim-go'
"Python
Plugin 'nvie/vim-flake8'
"Plugin 'klen/rope-vim'
"Plugin 'vim-scripts/Pydiction'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tell-k/vim-autopep8'
Plugin 'alfredodeza/pytest.vim'
Plugin 'janko-m/vim-test'
Plugin 'neomake/neomake'
"Bundle 'davidhalter/vim-jedi'
"Supertab
"Bundle 'ervandew/supertab'
"
"Integration with IPython
"Plugin 'ivanov/vim-ipython'

Plugin 'kien/rainbow_parentheses.vim'

"Bundle 'Valloric/YouCompleteMe'
Plugin 'Shougo/neocomplete.vim'

"Plugin 'skywind3000/asyncrun.vim'

"Scala
"Bundle 'derekwyatt/vim-scala'
" Formatters mostly for c++
Plugin 'Chiel92/vim-autoformat'


""Vinegar
Bundle 'dhruvasagar/vim-vinegar'

"Gists
"Bundle 'mattn/webapi-vim'
"Bundle 'mattn/gist-vim'
"Docker
Plugin 'ekalinin/Dockerfile.vim'

"C++
Plugin 'vim-scripts/a.vim'
Plugin 'alepez/vim-gtest'
"Swift 
Plugin 'keith/swift.vim'

"Arduino
Plugin 'jplaut/vim-arduino-ino'

Bundle 'vim-scripts/Arduino-syntax-file'

Plugin 'roxma/vim-paste-easy'
call vundle#end()


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
nnoremap <up> <C-a>
nnoremap <down> <C-x>
inoremap <up> <C-a>
inoremap <down> <C-x>
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
nnoremap <leader>t :CtrlP<cr>
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

let g:tagbar_autofocus=1
let g:tagbar_autoclose=1
"Ultisnippets
let g:UltiSnipsSnippetsDir="~/dotfiles/_vim/ultisnippets/"
let g:UltiSnipsSnippetDirectories=["UltiSnips","ultisnippets"]
"Neocomplete
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3


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
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
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
        au FileType go nnoremap <buffer> <Leader>r :call RunGo()<CR>
        "au BufWritePre *.go Fmt
augroup END
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap gd <Plug>(go-def)
"augroup filetype_matlab
"au!
""Execte temp file in the matlab window in screen
"au FileType matlab nnoremap <buffer> <leader>a :!screen -S matlab -p 0 -X stuff 'temp<CR>
"augroup END
"Notes
let g:notes_directories = ['~/Dropbox/notes']
let g:go_fmt_command="goimports"      
"Wiki

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
"use ag
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
"let g:syntastic_debug=1
"let g:syntastic_cpp_compiler = "g++"
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
        au FileType python nnoremap <buffer> <Leader>af :Pytest file<CR>
        au FileType python nnoremap <buffer> <Leader>ac :Pytest class<CR>
        au FileType python nnoremap <buffer> <Leader>am :Pytest method<CR>

        au FileType python nnoremap <buffer> <Leader>at :Pytest function verbose<CR>

        au FileType python nnoremap <buffer> <Leader>avf :Pytest file verbose<CR>
        au FileType python nnoremap <buffer> <Leader>avc :Pytest class verbose<CR>
        au FileType python nnoremap <buffer> <Leader>avm :Pytest method verbose<CR>

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
        au FileType python setlocal formatprg=autopep8\ -
        au BufWritePre *.py Autoformat
augroup END

"python with virtualenv support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
        project_base_dir = os.environ['VIRTUAL_ENV']
        activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
        execfile(activate_this, dict(__file__=activate_this))
EOF
" autoformat c family
let g:formatters_cpp = ['clangformat']
let g:formatdef_clangformat = '"clang-format"'
au BufWritePre *.cc,*.h :Autoformat
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
