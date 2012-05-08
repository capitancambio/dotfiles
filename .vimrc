call pathogen#infect()
filetype on
map B \be
abb trail trial
let mapleader = ","
" matlab  comments keeping indent
map <Leader>mc : s/^\(\s*\)/\1%/g<CR>
inoremap <Leader>fn <C-R>=expand("%:t:r")<CR>
" python
map <Leader>pc : s/^\(\s*\)/\1#/g<CR>
"google wiki
au BufEnter *.wiki set ft=googlecodewiki
au BufEnter *.wiki set spell


" START LATEX STUFF "
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on


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
