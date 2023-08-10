"     _       _   ______ _             
"    | |     | | |  ____(_) |            
"  __| | ___ | |_| |__   _| | ___  ___ 
" / _` |/ _ \| __|  __| | | |/ _ \/ __| 
"| (_| | (_) | |_| |    | | |  __/\__ \ Author : Max
" \__,_|\___/ \__|_|    |_|_|\___||___/ GitHub: github.com/maxbossing
"

"=== KEYMAP ===
" Map Leader to space
let mapleader = " "


"=== MOUSE ===
set mouse=nicr
set mouse=a


"=== PLUGINS ===
" Installation
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'luochen1990/rainbow'                    " Raibow parenthesis
Plug 'airblade/vim-gitgutter'                 " Git integration
Plug 'dag/vim-fish'                           " Fish highlighting
Plug 'https://gitlab.com/gi1242/vim-emoji-ab' " Emojis
Plug 'sheerun/vim-polyglot'                   " Language Packs
Plug 'morhetz/gruvbox'                        " Theme
Plug 'vimwiki/vimwiki'                        " Vimwiki
Plug 'tpope/vim-surround'                     " surrounding
call plug#end()

" Activate rainbow parenthesis
let g:rainbow_active = 1


"=== SETTINGS ===
" Line numbering
set ruler
set number

" No swap/backup
set noswapfile
set nobackup

" Use Spaces instead of Tabs
set expandtab

" Smart Tabs
set smarttab

" One tab == four spaces
set shiftwidth=4
set tabstop=4

" Emoji completion
set completefunc=emoji#complete

" Needed for vimwiki
set nocompatible
filetype plugin on
syntax on

"=== COLORSCHEME ===
set termguicolors
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_contrast_light='hard'
hi LspCxxHlGroupMemberVariable guifg=#83a598
colorscheme gruvbox

"=== LIGHTLINE CONFIG ===
" Always show statusline
set laststatus=2

" prevents non-normal modes from showing below lightline
set noshowmode


"=== VIMWIKI CONFIG ===
" Headers should be bold and colorful
hi VimwikiHeader1 gui=bold guifg=#A6BE26
hi VimwikiHeader2 gui=bold guifg=#f49ac2
hi VimwikiHeader3 gui=bold guifg=#f21840
hi VimwikiHeader4 gui=bold guifg=#F97a40
hi VimwikiHeader5 gui=bold guifg=#088da5
hi VimwikiHeader6 gui=bold guifg=#ee5555
