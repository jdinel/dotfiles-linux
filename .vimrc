set noswapfile
set dir=$HOME/.vim/.swp/
set nocompatible
filetype plugin indent on
set t_Co=256
syntax enable
set background=dark
colorscheme solarized
set number
set laststatus=2
filetype indent on
set nohlsearch
set incsearch
set ignorecase
set ruler
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smarttab
set nowrap
set pastetoggle=<F2>
hi Normal ctermbg=NONE
set viminfo=
if !has("gui_running")
  set mouse=
endif
