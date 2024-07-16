" switch between h and c
au BufEnter,BufNew *.c nnoremap <silent> <leader>ch :e %<.h<CR>
au BufEnter,BufNew *.h nnoremap <silent> <leader>ch :e %<.c<CR>

au BufEnter,BufNew *.c nnoremap <silent> <leader>cvh :leftabove vs %<.h<CR>
au BufEnter,BufNew *.h nnoremap <silent> <leader>cvh :rightbelow vs %<.c<CR>

au BufEnter,BufNew *.c nnoremap <silent> <leader>csh :leftabove split %<.h<CR>
au BufEnter,BufNew *.h nnoremap <silent> <leader>csh :rightbelow split %<.c<CR>
