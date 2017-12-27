call plug#begin()

Plug 'tpope/vim-abolish'
Plug 'tpope/vim-afterimage'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-haystack'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'

Plug 'majutsushi/tagbar'
Plug 'jiangmiao/auto-pairs'
Plug 'reedes/vim-pencil'
Plug 'vim-scripts/sessionman.vim'
Plug 'vim-scripts/restore_view.vim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Syntax things
Plug 'StanAngeloff/php.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
" Plug 'lilydjwg/colorizer'
Plug 'chrisbra/Colorizer'

" Colors
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'w0ng/vim-hybrid'
Plug 'reedes/vim-colors-pencil'
Plug 'endel/vim-github-colorscheme'
Plug 'dylanaraps/wal.vim'


if has("nvim")
  Plug 'benekastah/neomake'
else
  Plug 'tpope/vim-sensible'
  Plug 'scrooloose/syntastic'
endif

call plug#end()
