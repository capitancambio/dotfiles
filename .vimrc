set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

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

Bundle 'kien/rainbow_parentheses.vim'
filetype plugin indent on     " required!

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
" bucket list: just use  hkjl to move
"
nnoremap <up> <C-a>
nnoremap <down> <C-x>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"moving around windows 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l



abb trail trial
let mapleader = ","
" matlab  comments keeping indent
map <Leader>mc : s/^\(\s*\)/\1%/g<CR>
map B \be
inoremap <Leader>fn <C-R>=expand("%:t:r")<CR>
" python
map <Leader>pc : s/^\(\s*\)/\1#/g<CR>


" syntastic
let g:syntastic_mode_map = { 'mode': 'active','active_filetypes': ['python']  }
set statusline=%t\ %#warningmsg#%{SyntasticStatuslineFlag()}%*\ %r%m\ [%l/%L]%=%Y
"google wiki
au BufEnter *.wiki set ft=googlecodewiki
au BufEnter *.wiki set spell
" rope 
let ropevim_enable_autoimport=1
let g:ropevim_autoimport_modules = ["unittest", "numpy","logging","threading"]
""Rainbow parenthesis conf
let g:rbpt_colorpairs = [
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'RoyalBlue3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['red',         'firebrick3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ]
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

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

