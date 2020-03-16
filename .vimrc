syntax enable " Turn on syntax highlighting
set ruler

set hidden " Leave hidden buffers open
set history=100 "by default Vim saves your last 8 commands.  We can handle more
set number " Display line numbers
set mouse=a " Enable mouse in all modes

set tabstop=2
set shiftwidth=2   " Indents will have a width of 4.
set expandtab       " Expand TABs to spaces.
set smarttab

set spelllang=en

set ignorecase
set hlsearch
set incsearch

set foldmethod=syntax
set foldlevel=4

set autoindent

colorscheme darkblue

if &diff
  syntax off
  colorscheme murphy
endif

set listchars+=eol:¬
set listchars+=space:·
set list

autocmd FileType python setlocal foldmethod=indent
autocmd FileType sh setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\s*#'
autocmd FileType make set noexpandtab shiftwidth=2 softtabstop=0
autocmd FileType latex set textwidth=80
