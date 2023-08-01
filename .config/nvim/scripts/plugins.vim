"     _       _   ______ _             
"    | |     | | |  ____(_) |            
"  __| | ___ | |_| |__   _| | ___  ___ 
" / _` |/ _ \| __|  __| | | |/ _ \/ __| 
"| (_| | (_) | |_| |    | | |  __/\__ \ Author : Max
" \__,_|\___/ \__|_|    |_|_|\___||___/ GitHub: github.com/maxbossing
"


"""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""

call plug#begin()
Plug 'itchyny/lightline.vim'					                	" Lightline Statusbar
Plug 'luochen1990/rainbow'						                    " Rainbow Parentheses
Plug 'airblade/vim-gitgutter' 					                	" Git highlighting
Plug 'preservim/nerdtree'						                    " NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'		           		" Higlighting NERDTree
Plug 'ryanoasis/vim-devicons'  					                	" Icons for NERDTree 
Plug 'dag/vim-fish'						                            " .fish file higlighting
Plug 'https://gitlab.com/gi1242/vim-emoji-ab'                       " Vim emojis
Plug 'preservim/tagbar'                                             " Class outline Viewer
Plug 'sheerun/vim-polyglot'                                         " Language Packs
Plug 'morhetz/gruvbox'                                              " Theme
Plug 'github/copilot.vim'                                           " Github Copilot
Plug 'davidhalter/jedi-vim'                                         " Python autocomplete
Plug 'zchee/deoplete-jedi'                                          " Python autocomplete
call plug#end()
