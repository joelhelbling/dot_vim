" A brand-new .vimrc, written completely and interactively
" from scratch, by Joel Helbling.

set nocompatible

" Automatically create .backup directory, writable by the group.
if filewritable('.') && ! filewritable('.vim-backup')
  silent execute '!umask 002; mkdir .vim-backup'
endif

let s:default_path = escape(&path, '\ ') " store default value of 'path'

" Always add the current file's directory to the path and tags list if not
" already there. Add it to the beginning to speed up searches.
autocmd BufRead *
  \ let s:tempPath=escape(escape(expand("%:p:h"), ' '), '\ ') |
  \ exec "set path-=".s:tempPath |
  \ exec "set path-=".s:default_path |
  \ exec "set path^=".s:tempPath |
  \ exec "set path^=".s:default_path

set backupdir=./.vim-backup,~/.vim/backup
set directory=./.vim-backup,~/.vim/tmp

source ~/.vim/bundles.vim

let g:session_autosave = 1
let g:session_autoload = 1

set number                                     " turn on line numbers
set listchars=tab:▸\ ,trail:¬,nbsp:%           " invisible chars: non-breaking space
command! GO :set listchars=trail:•,nbsp:%
set list
set cursorline
set visualbell

" Theme
syntax enable
" colorscheme solarized
" colorscheme solarized8_light_high
colorscheme basic-light
if ! has("gui_running")
  set background=dark             " Why these hijinx?
  set background=light            " Somehow get more colors from Darcula this way.
endif
syntax on
" command! DARK :set background=dark
" command! LIGHT :set background=light
command! DARK :colorscheme solarized8_dark_high
command! LIGHT :colorscheme solarized8_light_high
let g:colorizer_auto_filetype='css,html,less,sass,scss,styl'

set softtabstop=2               " number of spaces in soft tab
set shiftwidth=2                " number of spaces to shift <>
set tabstop=2                   " number of spaces to show for tab
set expandtab                   " use spaces instead of tabs
set autoindent                  " turn on autoindent
set backspace=indent,eol,start  " backspace over everything

set incsearch                   " search incrementally (as you type)
set hlsearch                    " highlight search term
set ignorecase                  " ignore case when searching (by default)
set history=1000                " store lots of command line history
set autoread                    " automatically load files changed outside vim

filetype on                     " enable filetype detection
filetype indent on              " enable filetype-specific indenting
filetype plugin on              " enable filetype-specific plugins

" Configuring the GUI
if has("gui_running")
  set guioptions-=T             " turn toolbar off by default
  set guioptions-=m             " turn menu off by default
else
  let &t_Co=256

  " change cursor for insert mode (in iTerm2)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

if has("gui_mac") || has("gui_macvim")

  " Set font for Mac OSX
  " set guifont=Anonymous\ Pro\ for\ Powerline:h14
  " set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14
  set guifont=Droid\ Sans\ Mono\ Dotted\ for\ Powerline:h16
  " set guifont=Droid\ Sans\ Mono\ Slashed\ for\ Powerline:h14
  " set guifont=Fira\ Mono\ for\ Powerline:h14
  " set guifont=Fira\ Mono\ Medium\ for\ Powerline:h14
  " set guifont=Inconsolata\ for\ Powerline:h18
  " set guifont=Inconsolata-dz\ for\ Powerline:h14
  " set guifont=Liberation\ Mono\ for\ Powerline:h14
  " set guifont=Meslo\ LG\ L\ DZ\ for\ Powerline:h14
  " set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline:h14
  " set guifont=Meslo\ LG\ S\ DZ\ for\ Powerline:h14
  " set guifont=monofur\ for\ Powerline:h18
  " set guifont=Roboto\ Mono\ for\ Powerline:h14
  " set guifont=Roboto\ Mono\ Light\ for\ Powerline:h14
  " set guifont=Roboto\ Mono\ Medium\ for\ Powerline:h14
  " set guifont=Roboto\ Mono\ Thin\ for\ Powerline:h14
  " set guifont=Source\ Code\ Pro\ for\ Powerline:h18
  " set guifont=Ubuntu\ Mono\ Derivative\ for\ Powerline:h18

elseif has("gui") " means it's gvim
  " Set font for Ubuntu
  set guifont=Cousine\ for\ Powerline\ 14
endif

if has("gui")
  set linespace=1
  try
    set transparency=0          " setting transparency
  catch
  endtry
endif

set wildmenu                    " tab completion menu
set wildmode=list:longest,full

set mouse=a                     " use mousewheel in console mode

" Window management
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J> " change focus to window below
nnoremap <C-K> <C-W><C-K> " change focus to window above
nnoremap <C-L> <C-W><C-L> " change focus to window to right
nnoremap <C-H> <C-W><C-H> " change focus to window to left
nnoremap <C-_> <C-W>_     " maximize current window height
" nnoremap <C-|> <C-W>|     " maximize current window width

" Status line
hi User1 ctermfg=red ctermbg=236 guifg=#eea040 guibg=#222222
hi User2 ctermfg=darkred ctermbg=236 guifg=#dd3333 guibg=#222222
hi User3 ctermfg=magenta ctermbg=236 guifg=#ff66ff guibg=#222222
hi User4 ctermfg=darkgreen ctermbg=236 guifg=#a0ee40 guibg=#222222
hi User5 ctermfg=darkyellow ctermbg=236 guifg=#eeee40 guibg=#222222

set statusline=
set statusline+=%4*\ %f%* " path
set statusline+=%2*%m%*   " modified flag
set statusline+=%3*\ %y%* " buffer syntax

set laststatus=2          " make status line visible

let mapleader = ","

" Beautify HTML, XML
command! Thtml :%!tidy -q -i -html
command! Txml  :%!tidy -q -i -xml
command! Tjson :%!jq -M --indent 2 .

" clear trailing whitespace from file
map <leader>s :%s/\s\s*$//g<CR>

" Auto-check spelling when editing markdown files:
autocmd BufNewFile,BufRead *.markdown setlocal spell spelllang=en_us

" redraw the screen (helpful in tmux)
map <leader>d :redraw!<CR>

" automatically source vimrc if writing .vimrc or vimrc
if has("autocmd")
  autocmd! BufWritePost .vimrc source $MYVIMRC
endif

" PLUGIN CONFIG --------------------------------------------------

" scrooloose/nerdtree
"map <leader>n :NERDTreeToggle<CR> " toggle project pane
nmap <silent> <Leader>n :call g:WorkaroundNERDTreeToggle()<CR> " toggle project pane with workaround for deleted NT buffer

function! g:WorkaroundNERDTreeToggle()
  try | NERDTreeToggle | catch | silent! NERDTree | endtry
endfunction

" majutsushi/tagbar
nmap <F8> :TagbarToggle<CR>

" tpope/vim-commentary
" activate with \\\, \\{motion} or \\u (uncomment)
if has('autocmd')
  " autocmd FileType ruby set commentstring=#\ %s
  " autocmd FileType javascript set commentstring=//\ %s
  " autocmd FileType vim set commentstring=\"\ %s
  autocmd FileType moon set commentstring=--\ %s
  autocmd FileType lua set commentstring=--\ %s

  autocmd FileType moon set listchars=tab:¬,trail:¬,nbsp:%
  autocmd FileType lua set listchars=tab:¬,trail:¬,nbsp:%
  autocmd FileType moon setlocal noexpandtab
  autocmd FileType lua setlocal noexpandtab
endif

" nelstrom/vim-textobj-rubyblock
runtime macros/matchit.vim

" thoughtbot/vim-rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
"map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces

" mxw/vim-jsx
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']

" pangloss/vim-javascript
let g:javascript_plugin_jsdoc = 1

" scroolosse/syntastic
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["html"] }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" TsuQuyomi settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

" tpope/obsession
augroup sourcesession
  autocmd!
  autocmd VimEnter * nested
  \ if !argc() && empty(v:this_session) && filereadable('./.vim-backup/Session.vim') |
  \   source .vim-backup/Session.vim |
  \ endif |
  \ Obsess ./.vim-backup/Session.vim |
  \
augroup END

" ctrlp
map <Ctrl>p :CtrlPMixed
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" Ag
map <leader>f :Ag<space>

" for Tmux
command! RD :redraw!
map <leader>r :redraw!<CR>

" quickly jump back to a recently edited file
map <leader>, :CtrlPMRU<CR>
let g:ctrlp_mruf_last_entered = 1

" recognize .md as markdown
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.mdown set filetype=markdown

" tab navigation
nnoremap th  :tabfirst<CR>
nnoremap tn  :tabnext<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tp  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap te  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

if filereadable('./.private/vimrc')
  source ./.private/vimrc
endif

" Elm configurations
let g:elm_format_autosave = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:elm_syntastic_show_warnings = 1

let g:ycm_semantic_triggers = {
  \ 'elm' : ['.'],
  \}

" JUST FOR FRIENDS -----------------------------------------------

" for Kramer
"command! KJON :inoremap kj <Esc>
"command! KJOFF :iunmap kj

" for Dustin
"cabbr W w

