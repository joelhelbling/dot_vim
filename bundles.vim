augroup bundles
  autocmd!

  filetype on                        " OS X hack. must be on before it can be turned off
  filetype off                       " required for vundle

  set rtp+=~/.vim/bundle/Vundle.vim/ " add vundle to runtime path
  call vundle#begin()                " invoke vundle

  " let Vundle manage vundle
    Plugin 'VundleVim/Vundle.vim'

    Plugin 'L9'

  " themes
    " Plugin 'altercation/vim-colors-solarized'
    " Plugin 'lifepillar/vim-solarized8'
    Plugin 'blueshirts/darcula'
    Plugin 'endel/vim-github-colorscheme'
    Plugin 'dracula/vim'
    " Plugin 'tomasr/molokai'
    " Plugin 'zcodes/vim-colors-basic'

  " coding helpers
    Plugin 'neoclide/coc.nvim', { 'branch': 'release' }
    " Plugin 'vim-syntastic/syntastic'
    " -- https://github.com/vim-syntastic/syntastic
    Plugin 'tpope/vim-commentary'
    " -- comment whole blocks (combine with rubyblock!)
    "    https://github.com/tpope/vim-commentary
    Plugin 'dense-analysis/ale'

  " languages support

    " JavaScript
    if filereadable("./package.json")
      Plugin 'vim-javascript'
      Plugin 'Quramy/vim-js-pretty-template'
      " Plugin 'mxw/vim-jsx'
      " TypeScript
      " Plugin 'leafgarland/typescript-vim'
      " Plugin 'Quramy/tsuquyomi'
      " Plugin 'burnettk/vim-angular'
      " Plugin 'Shougo/vimproc.vim'
    endif

  " CoffeeScript
    " Plugin 'kchmck/vim-coffee-script'

    " Ruby / Rails
    if filereadable("./Gemfile")
      Plugin 'vim-ruby/vim-ruby'
      Plugin 'tpope/vim-bundler'
      Plugin 'ngmy/vim-rubocop'
      Plugin 'jgdavey/vim-blockle'
      " -- This plugin allows rapid toggling between the two different styles of
      "    ruby blocks, namely do/end and brackets {}. To use, simply move the
      "    cursor to the beginning or end of a block, and type <Leader>b. As a
      "    mnemonic, remember 'b' for 'block'.
      Plugin 'nelstrom/vim-textobj-rubyblock'
      " -- usage: in visual mode,
      "           - type `ar` for the whole block,
      "           - and `ir` for the inner portion of the block
      "    Depends on kana/vim-textobj-user
      " Plugin 'thoughtbot/vim-rspec'
      " Plugin 'tpope/vim-cucumber'
      " Plugin 'tpope/vim-haml'
      " Plugin 'liquid.vim'
      " Plugin 'slim-template/vim-slim'
      " Plugin 'groenewege/vim-less'
      " Plugin 'wavded/vim-stylus'
      " Plugin 'nono/vim-handlebars'
      Plugin 'tpope/vim-rails'
    endif

    " Elixir
    Plugin 'elixir-lang/vim-elixir'

    " Elm-lang
    Plugin 'ElmCast/elm-vim'

    " Go-lang
    " Plugin 'fatih/vim-go'

    " MoonScript
    " Plugin 'leafo/moonscript-vim'

    " Crystal-lang
    Plugin 'rhysd/vim-crystal'
    Plugin 'isaacsloan/vim-slang'

    " HTML / CSS
    Plugin 'chrisbra/Colorizer'
    " -- for CSS, colorizes color names and codes
    Plugin 'alvan/vim-closetag'
    " -- auto-close html tags
    "    https://github.com/alvan/vim-closetag


    Plugin 'tpope/vim-endwise'
    " -- auto-end blocks (even ruby!)
    "    This is a simple plugin that helps to end certain structures
    "    automatically. In Ruby, this means adding end after if, do,
    "    def and several other keywords. In Vimscript, this amounts to
    "    appropriately adding endfunction, endif, etc. There's also
    "    Bourne shell, Z shell, VB (don't ask), C/C++ preprocessor,
    "    Lua, Elixir, Haskell, Objective-C, Matlab, Crystal, Make,
    "    Verilog and Jinja templates support.

    " Vim Enhancements
    Plugin 'tpope/vim-surround'
    Plugin 'godlygeek/tabular'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'kana/vim-textobj-user' " https://github.com/kana/vim-textobj-user
    Plugin 'editorconfig/editorconfig-vim'
    Plugin 'tpope/vim-fugitive'

  " code navigation
    Plugin 'scrooloose/nerdtree'
    Plugin 'majutsushi/tagbar'
    Plugin 'tpope/vim-obsession'
    Plugin 'kien/ctrlp.vim'
    Plugin 'rking/ag.vim'
    Plugin 'FelikZ/ctrlp-py-matcher'

  call vundle#end()
  filetype plugin indent on

augroup END
