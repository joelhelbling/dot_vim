augroup bundles
  autocmd!

  filetype on                        " OS X hack. must be on before it can be turned off
  filetype off                       " required for vundle

  set rtp+=~/.vim/bundle/Vundle.vim/ " add vundle to runtime path
  call vundle#begin()                " invoke vundle

  " let Vundle manage vundle
    Plugin 'gmarik/Vundle.vim'

    Plugin 'L9'

  " theme
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'lifepillar/vim-solarized8'
    Plugin 'blueshirts/darcula'
    Plugin 'bling/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'

  " languages support
    Plugin 'kchmck/vim-coffee-script'
    Plugin 'elixir-lang/vim-elixir'
    Plugin 'vim-ruby/vim-ruby'
    Plugin 'tpope/vim-bundler'
    Plugin 'tpope/vim-rails'
    Plugin 'tpope/vim-cucumber'
    Plugin 'tpope/vim-haml'
    Plugin 'liquid.vim'
    Plugin 'slim-template/vim-slim'
    Plugin 'groenewege/vim-less'
    Plugin 'itspriddle/vim-jquery'
    Plugin 'nono/vim-handlebars'
    Plugin 'wavded/vim-stylus'
    Plugin 'fatih/vim-go'
    Plugin 'leafo/moonscript-vim'
    Plugin 'chrisbra/Colorizer'
    Plugin 'ElmCast/elm-vim'

  " coding helpers
    Plugin 'tpope/vim-commentary'
    " comment whole blocks (combine with rubyblock!)

    Plugin 'tpope/vim-endwise'
    " -- auto-end blocks (even ruby!)

    Plugin 'vim-scripts/HTML-AutoCloseTag'
    " auto-close html tags

    " Plugin 'Townk/vim-autoclose'
    " Eclipse-style auto-close parens and the like

    Plugin 'tpope/vim-surround'
    Plugin 'godlygeek/tabular'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'kana/vim-textobj-user'
    Plugin 'nelstrom/vim-textobj-rubyblock'
           " usage: in visual mode,
           "   type `ar` for the whole block,
           "   and `ir` for the inner portion of the block
    Plugin 'thoughtbot/vim-rspec'
    Plugin 'editorconfig/editorconfig-vim'

  " code navigation
    Plugin 'scrooloose/nerdtree'
    Plugin 'majutsushi/tagbar'
    Plugin 'tpope/vim-fugitive'
    " Plugin 'xolox/vim-session'
    Plugin 'tpope/vim-obsession'
    " Plugin 'FuzzyFinder'
    Plugin 'kien/ctrlp.vim'
    Plugin 'rking/ag.vim'
    Plugin 'FelikZ/ctrlp-py-matcher'

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

  " code reference / help
  Plugin 'rizzatti/dash.vim'

  call vundle#end()
  filetype plugin indent on

augroup END
