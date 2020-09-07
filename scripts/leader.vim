let mapleader = " "

" [[ a ]]
" thoughtbot/vim-rspec
" map <leader>a :call RunAllSpecs()<CR>

" [[ b ]]
" quickly jump back to a recently edited file
map <leader>b :CtrlPMRU<CR>
let g:ctrlp_mruf_last_entered = 1

" [[ c ]]

" [[ d ]]
" redraw the screen (helpful in tmux)
map <leader>d :redraw!<CR>

" [[ e ]]
" [[ f ]]
map <leader>f :CtrlPMixed<CR>

" [[ g ]]
" Ag
map <leader>g :Ag<space>

" [[ h ]]
" [[ i ]]
" [[ j ]]
" [[ k ]]

" [[ l ]]
" thoughtbot/vim-rspec
" map <Leader>l :call RunLastSpec()<CR>

" [[ m ]]

" [[ n ]]
" scrooloose/nerdtree
"map <leader>n :NERDTreeToggle<CR> " toggle project pane
" toggle project pane with workaround for deleted NT buffer
nmap <silent> <Leader>n :call g:WorkaroundNERDTreeToggle()<CR>

" [[ o ]]
" [[ p ]]
" [[ q ]]
map <leader>q :qa<cr>
" [[ r ]]

" [[ s ]]
" clear trailing whitespace from file
"map <Leader>s :call RunNearestSpec()<CR>
map <leader>s :%s/\s\s*$//g<CR>

" [[ t ]]
" thoughtbot/vim-rspec
" map <Leader>t :call RunCurrentSpecFile()<CR>
map <leader>t :tab

" [[ u ]]
" [[ v ]]

" [[ w ]]
map <leader>w :w<cr>

" [[ x ]]
" [[ y ]]
" [[ z ]]

" [[ , ]]

" .......supporting functions......
function! g:WorkaroundNERDTreeToggle()
  try | NERDTreeToggle | catch | silent! NERDTree | endtry
endfunction
