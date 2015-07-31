augroup bundles
  autocmd!

  filetype on                    " OS X hack. must be on before it can be turned off
  filetype off                   " required for vundle

  set rtp+=~/.vim/bundle/vundle/ " add vundle to runtime path
  call vundle#rc()               " invoke vundle

  " let Vundle manage vundle
    Bundle 'gmarik/vundle'

    Bundle 'L9'

  " theme
    Bundle 'altercation/vim-colors-solarized'
    Bundle 'bling/vim-airline'

  " languages support
    Bundle 'kchmck/vim-coffee-script'
    Bundle 'elixir-lang/vim-elixir'
    Bundle 'vim-ruby/vim-ruby'
    Bundle 'tpope/vim-bundler'
    Bundle 'tpope/vim-rails'
    Bundle 'tpope/vim-cucumber'
    Bundle 'tpope/vim-haml'
    Bundle 'slim-template/vim-slim'
    Bundle 'groenewege/vim-less'
    Bundle 'itspriddle/vim-jquery'
    Bundle 'nono/vim-handlebars'
    Bundle 'wavded/vim-stylus'
    Bundle 'fatih/vim-go'

  " coding helpers
    Bundle 'tpope/vim-commentary'
    " comment whole blocks (combine with rubyblock!)

    Bundle 'tpope/vim-endwise'
    " auto-end blocks (even ruby!)

    Bundle 'vim-scripts/HTML-AutoCloseTag'
    " auto-close html tags

    " Bundle 'Townk/vim-autoclose'
    " Eclipse-style auto-close parens and the like

    Bundle 'tpope/vim-surround'
    Bundle 'godlygeek/tabular'
    Bundle 'airblade/vim-gitgutter'
    Bundle 'kana/vim-textobj-user'
    Bundle 'nelstrom/vim-textobj-rubyblock'
           " usage: in visual mode,
           "   type `ar` for the whole block,
           "   and `ir` for the inner portion of the block
    Bundle 'thoughtbot/vim-rspec'

  " code navigation
    Bundle 'scrooloose/nerdtree'
    Bundle 'majutsushi/tagbar'
    Bundle 'tpope/vim-fugitive'
    " Bundle 'xolox/vim-session'
    Bundle 'tpope/vim-obsession'
    " Bundle 'FuzzyFinder'
    Bundle 'kien/ctrlp.vim'
    Bundle 'rking/ag.vim'
    Bundle 'FelikZ/ctrlp-py-matcher'

    " suggestions (from DealerMatch)
    " 'Localtog/vim-easymotion'
    " 'scroolosse/syntastic'
    " 'kien/ctrlp.vim'
    " 'ervandew/supertab'
    " 'briancollins/vim-jst'
    " 'nelstrom/vim-visual-star-search'
    " 'tomasr/molakai'
    " 'vim-javascript'
    " 'jgdavey/vim-blockle'
    " 'ngmy/vim-rubocop'
    "  ---> see also: `let vimrubocop_config='config/rubocop/rubocop.yml'`

  filetype plugin indent on

augroup END
