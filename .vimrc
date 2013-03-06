set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
"other syntax plugin files etc from dotfiles
call vundle#rc()
set rtp+=~/dotfiles/_vim/
set rtp+=~/dotfiles/_vim/bundle/snipmate-snippets/

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'garbas/vim-snipmate'
"snipmate deps
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle "tomtom/tlib_vim"
Bundle "snipmate-snippets"
Bundle "godlygeek/tabular"
Bundle "tpope/vim-surround"
Bundle "git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex"
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'sontek/rope-vim'
Bundle 'tpope/vim-fugitive.git'
Bundle 'sjl/gundo.vim'
Bundle 'vim-scripts/SwapIt'
"Matlab
Bundle 'vim-scripts/MatlabFilesEdition'
"Time management 
Bundle 'vim-scripts/vimwiki'
Bundle 'vim-scripts/utl.vim'
Bundle 'xolox/vim-notes'
Bundle 'mattn/webapi-vim'
"Bundle 'mattn/googletasks-vim'
"tagbar
Bundle 'majutsushi/tagbar'
filetype plugin indent on     " required!
"let g:tagbar_ctags_bin = 'ctags --options=/home/javi/.vim/bundle/MatlabFilesEdition/.ctags'
filetype on
filetype plugin on
colorscheme 256_jungle
"syntax on
syntax on
set backspace=2
"Various sets
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
" bucket list: just use  hkjl to move
"
nnoremap <up> <C-a>
nnoremap <down> <C-x>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <C-a> 
inoremap <down> <C-x>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"moving around windows 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"my own private escape
inoremap jk <Esc>

let mapleader = ","
noremap \ ,

"gundo
"
noremap <Leader>u : GundoToggle<CR>
"Tagbar
noremap <Leader>tb : TagbarToggle<CR>
let g:tagbar_autofocus=1
let g:tagbar_autoclose=1

"Other maps
inoremap <Leader>fn <C-R>=expand("%:t:r")<CR>
noremap <leader>s : source %<CR>
"splits
nnoremap vs : vs<CR>
nnoremap sp : sp<CR>
"jump to buff
nnoremap <leader><leader> :<c-u>exe "b ".v:count<cr>
"save
nnoremap <leader>w :w<cr>

abb trail trial
"comment autocommand
augroup filetype_matlab
	au!
	au FileType matlab nnoremap <buffer> <Leader>C : s/^\(\s*\)/\1%/g<CR>
	au FileType matlab nnoremap <buffer> <Leader>uc : s/^%//g<CR>
	au FileType matlab nnoremap <buffer> <Leader>x :exec '!screen -S matlab -p 0 -X stuff ''temp'' ' 

augroup END
augroup filetype_python
	au!
	au FileType python nnoremap <buffer> <Leader>C : s/^\(\s*\)/\1#/g<CR>
	au FileType python nnoremap <buffer> <Leader>uc : s/^#//g<CR>
augroup END
augroup filetype_java
	au!
	au FileType java nnoremap <buffer> <Leader>C :s/^\(\s*\)/\1\/\//g<CR>
	au FileType java vnoremap <buffer> <Leader>C :s/^\(\s*\)/\1\/\//g<CR>
	au FileType java  nnoremap <buffer> <Leader>uc : s/^\/\///g<CR>
	""eclim maps
	au FileType java nnoremap <buffer> <Leader>m :JavaImportMissing <CR>
	au FileType java nnoremap <buffer> <Leader>ci :JavaImportClean<CR>
	au FileType java nnoremap <buffer> <Leader>G :JavaSet<CR>
	au FileType java nnoremap <buffer> <Leader>GS :JavaSetGet<CR>
	au FileType java nnoremap <buffer> <Leader>co :JavaCorrect<CR>
	au FileType java nnoremap <buffer> <Leader>j :Java<CR>
augroup END
"fugitive
nnoremap <leader>gs : Gstatus<CR>
nnoremap <leader>gc : Gcommit<CR>
"Utl
nnoremap <leader>o : Utl ol<CR>
"Notes
let g:notes_directory = '~/Dropbox/notes'
"Wiki

let wiki_daisy = {}
let wiki_daisy.path = '~/Dropbox/wiki/daisy'
nnoremap <leader>wd :execute "normal <leader>ww"<cr>
let wiki_phd= {}
let wiki_phd.path = '~/Dropbox/wiki/phd'
nnoremap <leader>wp :execute "normal 2<leader>ww"<cr>

let g:vimwiki_list = [wiki_daisy, wiki_phd]
" syntastic
"let g:syntastic_mode_map = { 'mode': 'active','active_filetypes': ['python']  }
set statusline=%t\ %#warningmsg#%{SyntasticStatuslineFlag()}%*\ %r%m\ [%l/%L]%=%Y

"minibufexpl conflict with fugitive
let g:miniBufExplorerMoreThanOne=2
let g:miniBufExplMapCTabSwitchBufs = 1
"google wiki
au BufEnter *.wiki set ft=googlecodewiki
au BufEnter *.wiki set spell
" rope 
let ropevim_enable_autoimport=1
let g:ropevim_autoimport_modules = ["unittest", "numpy","logging","threading"]

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
"Maven
nmap <F5> :Mvn clean install<CR>
nmap <F6> :Mvn clean package<CR>

