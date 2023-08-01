"     _       _   ______ _             
"    | |     | | |  ____(_) |            
"  __| | ___ | |_| |__   _| | ___  ___ 
" / _` |/ _ \| __|  __| | | |/ _ \/ __| 
"| (_| | (_) | |_| |    | | |  __/\__ \ Author : Max
" \__,_|\___/ \__|_|    |_|_|\___||___/ GitHub: github.com/maxbossing
"

"""""""""""""""""""""""""""""""""""
" => General Vim Settings
"""""""""""""""""""""""""""""""""""

set number                          "line-
set ruler                           "-numbering
set noswapfile						" No swap
set nobackup 						" No backup
set hidden	                        " needed to keep multiple buffers open
set splitbelow splitright           " force splits to opne below and right

"""""""""""""""""""""""""""""""""""
" => Text, Tab. indent related
"""""""""""""""""""""""""""""""""""

set expandtab                   	" Use spaces instead of tabs.
set smarttab                    	" Be smart using tabs ;)
set shiftwidth=4                	"One tab == four spaces.
set tabstop=4                   	" One tab == four spaces.
set completefunc=emoji#complete     "add emoji completition

"""""""""""""""""""""""""""""""""""
" => Colorsheme
"""""""""""""""""""""""""""""""""""

set termguicolors
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_contrast_light='hard'
hi LspCxxHlGroupMemberVariable guifg=#83a598
colorscheme gruvbox

let g:deoplete#enable_at_startup = 1
