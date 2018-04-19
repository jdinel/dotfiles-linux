" Disable swap files
set noswapfile
" Disable compatible mode (Debian tends to enable it globally)
set nocompatible
" Turn on filetype detection & auto-indenting
filetype plugin indent on
" Force 256 colors for the terminal
set t_Co=256
" Enable syntax highlighting
syntax enable
" Force background to dark, fix for solarized-dark
set background=dark
" Set the prefered color scheme
colorscheme solarized
" Enable line numbering
set number
" Always display the status line
set laststatus=2
" Do not highlight searches
set nohlsearch
" Enable incremental searches
set incsearch
" Case-insensitive searches
set ignorecase
" Enable the Ruler (bottom right status)
set ruler
" Enable automatic identing
set autoindent
set smartindent
" Make tab characters appear as 4 spaces
set tabstop=4
" When expandtab is set, hitting Tab in insert mode will produce the appropriate number of spaces.
set expandtab
" Reindent operators will shift by 4 spaces, also affects automatic indentation
set shiftwidth=4
" Hitting TAB will insert the number of spaces defined in tabstop
set softtabstop=0
" Use a multiple of shiftwidth when indenting with '<' and '>'
set shiftround
" Insert tabs (spaces) on the start of line as defined in shiftwidth
set smarttab
" Do not wrap long lines
set nowrap
" F2 key triggers disabling of identation when pasting
set pastetoggle=<F2>
" Fix for some terminal emulators
hi Normal guibg=NONE ctermbg=NONE
" Disable mouse integration when running in "gui" mode
set viminfo=
if !has("gui_running")
  set mouse=
endif
" Little hack to make editing ansible playbooks easier
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
