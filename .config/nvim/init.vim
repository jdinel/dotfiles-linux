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
" Make tab characters appear as 4 spaces and indents as well
set tabstop=4
set shiftwidth=4
set softtabstop=0
set noexpandtab
set shiftround
set expandtab
set smarttab
" Do not wrap long lines
set nowrap
" F2 key triggers disabling of identation when pasting
set pastetoggle=<F2>
" F3 key triggers line numbering
map <F3> :set invnumber<CR>
" Fix for some terminal emulators
hi Normal guibg=NONE ctermbg=NONE
" Disable mouse integration when running in "gui" mode
set viminfo=
if !has("gui_running")
  set mouse=
endif
" Little hack to make editing ansible playbooks easier
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
