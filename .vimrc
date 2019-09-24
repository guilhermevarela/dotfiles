set nocompatible              " be iMproved, required
filetype off                  " required
" For those using the fish shell
" set shell=/bin/bash

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Derivative of powerline but lighter
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" NERDTree allows project navigation
Plugin 'scrooloose/nerdtree'

" PYTHON plugins
" jedi-vim provides code completion for vim
Plugin 'davidhalter/jedi-vim'

" ALE: Asynchronous Lint Engine
" Provides code linting for python
Plugin 'w0rp/ale'

" IDE for python
" python-mode: https://github.com/python-mode/python-mode
" Plugin 'python-mode/python-mode'

" vim-poliglot: offers syntax highlighting 
" https://github.com/sheerun/vim-polyglot
Plugin 'sheerun/vim-polyglot'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set number
set ruler
syntax on
set background=dark
colorscheme elflord
let g:python_highlight_all = 1


"ALE settings
"Provides autofixing for python
let b:ale_linters = ['flake8']
let b:ale_fixers = [
\   'remove_trailing_lines',
\   'isort',
\   'ale#fixers#generic_python#BreakUpLongLines',
\   'yapf',
\]

nnoremap <buffer> <silent> <LocalLeader>= :ALEFix<CR>
"let g:ale_fix_on_save = 1

"ctags path
set tags=$HOME/.tags/tags,tags;$HOME
