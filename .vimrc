"""""""""""""""""""""""""""
" vim-plug plugin manager "
"""""""""""""""""""""""""""

call plug#begin()
filetype indent off   " Disable file-type-specific indentation
"syntax off            " Disable syntax highlighting

" List plugins here:
" Plug 'tpope/vim-sensible'
Plug 'qpkorr/vim-renamer' " rename files at once.
Plug 'ap/vim-css-color' " color background of color codes.
"Plug 'yorickpeterse/happy_hacking.vim' " scheme.
call plug#end()

""""""""
" DOCS "
""""""""

" arabic.txt
" change.txt
" insert.txt
" options.txt
" quickref.txt

"""""""""""
" CONFIGS "
"""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" used to keep the loading of `defaults.vim` even when `vimrc` exists
" unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" autocmd.txt doc
"''''''''''''''''
" :autocmd BufRead,BufNewFile *.txt setlocal syntax=conf "enable syntax highlighting for text/* files.


" :set linebreak	" see: :help linebreak
" :set wrap			" see: :help wrap
:set relativenumber
:set number
" :set whichwrap=b,s,<,>,[,]
" :set incsearch
" :set hlsearch " highlight while searching.
:set tabstop=8
:set encoding=utf-8
" :set arabicshape
" :set arabic
:set nocompatible
:set formatoptions=t,c,q,r
" :set termguicolors
" :syntax on
:filetype on
:colorscheme habamax
:set bg=dark
" :set virtualedit=onemore " careful here, see: :help ve
" :set noinsertmode " wether to set 'insert mode' as default when vim opens.
" :set {autowriteall|autowrite} " see help.
