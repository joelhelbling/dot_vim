" A brand-new .vimrc, written completely and interactively
" from scratch, by Joel Helbling.

set nocompatible

source ~/.vim/bundles.vim

let g:session_autosave = 1
let g:session_autoload = 1

set number                      " turn on line numbers
set lcs=tab:->,trail:•,nbsp:%   " set trailing (invisible) characters
set list
set cursorline
set visualbell

" Theme
syntax enable
set background=light
colorscheme solarized
syntax on
command DARK :set background=dark
command LIGHT :set background=light

set softtabstop=2               " number of spaces in soft tab
set shiftwidth=2                " number of spaces to shift <>
set tabstop=2                   " number of spaces to show for tab
set expandtab                   " use spaces instead of tabs
set autoindent                  " turn on autoindent
set backspace=indent,eol,start  " backspace over everything

set ignorecase                  " ignore case when searching (by default)
set history=1000                " store lots of command line history

filetype on                     " enable filetype detection
filetype indent on              " enable filetype-specific indenting
filetype plugin on              " enable filetype-specific plugins

" Configuring the GUI
if has("gui")
  set guioptions-=T             " turn toolbar off by default
  set guioptions-=m             " turn menu off by default
endif

if has("gui_mac") || has("gui_macvim")
  set guifont=Menlo:h18         " set font
  set linespace=4
  try
    set transparency=0          " setting transparency
  catch
  endtry
else
  let &t_Co=256

  " change cursor for insert mode (in iTerm2)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

set wildmenu                    " tab completion menu
set wildmode=list:longest,full

set mouse=a                     " use mousewheel in console mode

" Status line
set statusline=%Y:\ %F%m%=LINE:%l\/%L(%p%%)\ COL:%v\ CHR:0x\%02.2B
"set statusline=%F%m%r%h%w\ %{&ff}\ %Y\ [0x\%02.2B]\ %l/%L,%v\ %p%%
set laststatus=2                " make status line visible

let mapleader = ","

" Beautify HTML, XML
command Thtml :%!tidy -q -i -html
command Txml  :%!tidy -q -i -xml

" Toggle NERDTree on/off
map <leader>n :NERDTreeToggle<CR> " toggle project pane

" FuzzyFinder (https://github.com/vim-scripts/FuzzyFinder)
map <leader>b :FufBuffer<CR>      " pick a file from the buffers
map <leader>o :FufFile<CR>        " open a file
map <leader>f :FufLine<CR>        " find a line
map <leader>t :FufTag<CR>         " find a tag

" Source code navigator (http://majutsushi.github.com/tagbar/)
nmap <F8> :TagbarToggle<CR>

" vim-commentary (https://github.com/tpope/vim-commentary)
" activate with \\\, \\{motion} or \\u (uncomment)
autocmd FileType ruby set commentstring=#\ %s
autocmd FileType vim set commentstring=\"\ %s

" needed for vim-textobj-rubyblock
runtime macros/matchit.vim

" clear trailing whitespace from file
map <leader>s :%s/\s+$//g<CR>

" Auto-check spelling when editing markdown files:
autocmd BufNewFile,BufRead *.markdown setlocal spell spelllang=en_us

" automatically source vimrc if writing .vimrc or vimrc
autocmd! BufWritePost .vimrc source $MYVIMRC

