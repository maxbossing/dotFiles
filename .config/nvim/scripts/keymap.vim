"     _       _   ______ _             
"    | |     | | |  ____(_) |            
"  __| | ___ | |_| |__   _| | ___  ___ 
" / _` |/ _ \| __|  __| | | |/ _ \/ __| 
"| (_| | (_) | |_| |    | | |  __/\__ \ Author : Max
" \__,_|\___/ \__|_|    |_|_|\___||___/ GitHub: github.com/maxbossing
"

"""""""""""""""""""""""""""""""""""
" => Keymapping
"""""""""""""""""""""""""""""""""""

let mapleader = " "                     " Map Leader key to Space
map <Leader>tt :vnew term://fish<CR>    " Map Space-tt to new Terminal split
nmap <F8> :TagbarToggle<CR>             " Map F8 to Tagbar
nmap <C-n> :NERDTreeToggle:<CR>
""""""""""""""""""""""""""""""""""""
" => Mouse Support
""""""""""""""""""""""""""""""""""""

set mouse=nicr
set mouse=a

""""""""""""""""""""""""""""""""""""
" => Split control
""""""""""""""""""""""""""""""""""""

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
