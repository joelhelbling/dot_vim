augroup bundles
  autocmd!

  filetype on                    " OS X hack. must be on before it can be turned off
  filetype off                   " required for vundle

  set rtp+=~/.vim/bundle/vundle/ " add vundle to runtime path
  call vundle#rc()               " invoke vundle

  " let Vundle manage vundle
    Bundle 'gmarik/vundle'

    Bundle 'L9'

  " finder
    Bundle 'FuzzyFinder'

    Bundle 'scrooloose/nerdtree'
    Bundle 'majutsushi/tagbar'
    Bundle 'godlygeek/tabular'
    Bundle 'majutsushi/tagbar'
    Bundle 'kchmck/vim-coffee-script'
    Bundle 'altercation/vim-colors-solarized'
    Bundle 'tpope/vim-commentary'
    Bundle 'tpope/vim-cucumber'
    Bundle 'tpope/vim-endwise'
    Bundle 'tpope/vim-fugitive'
    Bundle 'tpope/vim-haml'
    Bundle 'itspriddle/vim-jquery'
    Bundle 'tpope/vim-rails'
    Bundle 'vim-ruby/vim-ruby'
    Bundle 'nelstrom/vim-textobj-rubyblock'
    Bundle 'kana/vim-textobj-user'
    Bundle 'xolox/vim-session'

  filetype plugin indent on

augroup END
