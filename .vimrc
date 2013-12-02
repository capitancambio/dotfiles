set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/vundle/gocode
set rtp+=~/dotfiles/_vim/
set rtp+=~/dotfiles/_vim/after/
set rtp+=~/dotfiles/_vim/syntax/
set rtp+=~/dotfiles/_vim/plugins/
"other syntax plugin files etc from dotfiles
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
"Nicer view of the fs
Bundle 'scrooloose/nerdtree'
"Universal syntax checker
Bundle 'scrooloose/syntastic'
" Beautify tables
Bundle "godlygeek/tabular"
" UltiSnips
Bundle 'SirVer/ultisnips'
"surround utilities
Bundle "tpope/vim-surround"
"amazing latex plugin
Bundle "git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex"
"shows the open buffers in a minibuffer
Bundle 'fholgado/minibufexpl.vim'
"git bindings
Bundle 'tpope/vim-fugitive'
"undo tree
Bundle 'sjl/gundo.vim'
"unix commands from vim
Bundle 'tpope/vim-eunuch'
"simple comment and uncomment utility
Bundle 'scrooloose/nerdcommenter'
"Matlab
Bundle 'vim-scripts/MatlabFilesEdition'
"Time management
Bundle 'vim-scripts/vimwiki'
Bundle 'xolox/vim-notes'
Bundle 'xolox/vim-misc'


"tagbar file skeleton
Bundle 'majutsushi/tagbar'

""power line
"Bundle 'Lokaltog/powerline.git'
"airline
Bundle 'bling/vim-airline'


"fuzzy file finder
Bundle 'kien/ctrlp.vim.git'

"CamelCase motion
Bundle 'camelcasemotion'

"Easy motion
Bundle 'Lokaltog/vim-easymotion'

"git-gutter shows git changes on the left column
Bundle 'airblade/vim-gitgutter'

"maven
Bundle 'mikelue/vim-maven-plugin'

"Handling stuff using gist from vim
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
"Go
Bundle 'jnwhiteh/vim-golang.git'
Bundle 'Blackrush/vim-gocode'
"Python
"Bundle 'klen/python-mode.git'
Bundle 'davidhalter/jedi-vim'
"Supertab
Bundle 'ervandew/supertab'

filetype plugin indent on " required!
"let g:tagbar_ctags_bin = 'ctags --options=/home/javi/.vim/bundle/MatlabFilesEdition/.ctags'
filetype on
filetype plugin on
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
set foldmethod=syntax
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

" 1 tab == 4 spaces
"set shiftwidth=4
"set tabstop=4

" Linebreak on 500 characters

set ai "Auto indent
set si "Smart indent


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
inoremap jk <esc>:w<CR>
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

nnoremap <leader>x :execute "silent !tmux select-pane -t 0;tmux send-keys -t 0:0 'temp' Enter;tmux select-pane -t 1"<CR>:redraw! <CR>
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
"check spelling and grammar from after the deadline
vnoremap <leader>a :call Atd()<CR>

let g:tagbar_autofocus=1
let g:tagbar_autoclose=1
"Ultisnippets
let g:UltiSnipsSnippetsDir="~/dotfiles/_vim/ultisnippets/"
let g:UltiSnipsSnippetDirectories=["UltiSnips","ultisnippets"]

let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery =
                        \ ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

let g:EasyMotion_leader_key='<Space>'
set wildignore=*.class,*.dat

"abbs!
abb trail trial

" to save always when the focus is lost
au FocusLost * silent! wa

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
        "au BufWritePre *.java JavaFormat
augroup END
let g:EclimPythonValidate=0
augroup filetype_go
        au!
        au FileType go nnoremap <buffer> <Leader>rt :call RunGotest()<CR>
        au BufWritePre *.go Fmt
augroup END
"augroup filetype_matlab
"au!
""Execte temp file in the matlab window in screen
"au FileType matlab nnoremap <buffer> <leader>a :!screen -S matlab -p 0 -X stuff 'temp<CR>
"augroup END
"Notes
let g:notes_directories = ['~/Dropbox/notes']
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
" syntastic
"let g:syntastic_mode_map = { 'mode': 'active','active_filetypes': ['python']  }
"set statusline=%t\ %#warningmsg#%{SyntasticStatuslineFlag()}%*\ %r%m\ [%l/%L]%=%Y
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
let g:pymode_lint = 0
"rope vim (inside pymode)
let g:pymode_rope_autoimport_modules = ["os","shutil","logging","unittest"]

"beauty_matlab conf
let g:beauty_matlab_greek=1

let g:syntastic_mode_map ={'mode': 'active',
                                   \ 'active_filetypes': ['ruby', 'php'],
                                   \ 'passive_filetypes': ['java'] }
let g:syntastic_check_on_open=1
let g:syntastic_auto_loc_list=1

let g:syntastic_loc_list_height=5
"cool chars for errors
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

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

fun! Atd()
        exec ":'<,'>w !detex | atdtool -"
endf
