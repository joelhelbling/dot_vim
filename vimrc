" A brand-new .vimrc, written completely and interatively
" from scratch, by Joel Helbling.

set nocompatible

call pathogen#infect()

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
command godark :set background=dark
command golight :set background=light

set softtabstop=2               " number of spaces in soft tab
set shiftwidth=2                " number of spaces to shift <>
set tabstop=2                   " number of spaces to show for tab
set expandtab                   " use spaces instead of tabs
set autoindent                  " turn on autoindent
set backspace=indent,eol,start  " backspace over everything

set ignorecase                  " ignore case when searching (by default)
set history=1000                " store lots of command line history

" Configuring the GUI
if has("gui_mac") || has("gui_macvim")
  set guifont=Consolas:h16      " set font
  set guioptions-=T             " turn toolbar off by default
  set guioptions-=m             " turn menu off by default
  try
    set transparency=0          " setting transparency
  catch
  endtry
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

" TODO

