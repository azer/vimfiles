syntax enable
set number
set nowrap
set ai
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set nocompatible
set wildmenu
filetype plugin on
au BufRead,BufNewFile *.go set filetype=go


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the curors - when moving vertical..
set so=7
set wildmenu "Turn on WiLd menu
set ruler "Always show current position
set cmdheight=2 "The commandbar height
set hid "Change buffer - without saving
" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase "Ignore case when searching
set hlsearch "Highlight search things
set incsearch "Make search act like search in modern browsers
set magic "Set magic on, for regular expressions
set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax hl

" Set font according to system
set gfn=Monospace\ 10
set shell=/bin/bash

colorscheme candycode_azer
set nonu

set encoding=utf8
try
    lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types

set t_Co=256



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
" Always hide the statusline
set laststatus=2

" Format the statusline
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

set number

"" fix tr char
function! FixTR()
    exec ":%s/ý/i/ge"
    exec ":%s/ç/c/ge"
    exec ":%s/þ/s/ge"
    exec ":%s/ü/u/ge"
    exec ":%s/ö/o/ge"
    exec ":%s/ð/g/ge"
endfunction
