"
" ~/.config/nvim/init.vim
"
" Plugins
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

let g:plugins_file_path = '~/.config/nvim/plugins.vim'

if filereadable(expand(g:plugins_file_path))
  exe ':source ' . g:plugins_file_path
endif

"" General
let mapleader = ","                                                 " Remap <leader>
set completeopt=menu,preview,longest                                " Insert mode completion
set hidden                                                          " Allow buffer switching without saving
set linebreak                                                       " Don't cut words on wrap
set list                                                            " Displaying listchars
set noshowmode                                                      " Hide mode cmd line
set noexrc                                                          " Don't use other .*rc(s)
set nostartofline                                                   " Keep cursor column pos
set nowrap                                                          " Do not wrap long lines
set splitbelow                                                      " Split windows to the bottom
set splitright                                                      " Split windows to the right
set ttyfast                                                         " For faster redraws etc
set foldcolumn=0                                                    " Hide folding column
set foldmethod=indent                                               " Folds using indent
set foldnestmax=10                                                  " Max 10 nested folds
set foldlevelstart=99                                               " Folds open by default
set gdefault                                                        " Default s//g (global)
set matchtime=2                                                     " Time to blink match {}
set matchpairs+=<:>                                                 " For ci< or ci>
set showmatch                                                       " Show matching brackets/parenthesis
set mat=2                                                           " Tenths of seconds to blink when matching brackets
set lazyredraw                                                      " Don't redraw while executing macros
set magic                                                           " For regular expressions turn magic on
set shell=zsh

" Wildmode/wildmenu command-line completion
set wildignore+=*.bak,*.swp,*.swo
set wildignore+=*.a,*.o,*.so,*.pyc,*.class
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.pdf
set wildignore+=*/.git*,*.tar,*.zip
set wildmenu
set wildmode=longest:full,list:full

"" Interface

" Colorscheme from plugin
"colorscheme wal
"let g:gruvbox_contrast_dark='hard'
set termguicolors
let ayucolor="dark"
colorscheme ayu

" Enable 256 colors to stop the CSApprox warning and make urxvt vim shine
if &term == 'urxvtc' || &term == 'tmux'
    set t_Co=256
endif

set background=dark                                                 " We're using a dark bg
set cursorline                                                      " Highlight cursor line
set number                                                          " Line numbers
set numberwidth=4                                                   " 9999 lines
set showcmd                                                         " Show cmds being typed
set title                                                           " Window title

"" Files
set autochdir                                                       " Always use curr. dir.
set confirm                                                         " Confirm changed files
set noautowrite                                                     " Never autowrite
set nobackup                                                        " Disable backups
set undodir=$HOME/.local/share/nvim/undo/                           " Where to store undofiles
set undofile                                                        " Enable undofile
set undolevels=500                                                  " Max undos stored
set undoreload=10000                                                " Buffer stored undos
set directory^=$HOME/.local/share/nvim/swap/                        " Default cwd for swap
set swapfile                                                        " Enable swap files
set updatecount=50                                                  " Update swp after 50chars

"" Text
set expandtab                                                       " Use spaces instead of tabs
set shiftwidth=2                                                    " Default 8
set tabstop=2                                                       " Replace <TAB> w/4 spaces
set softtabstop=2                                                   " Tab feels like <tab>
set shiftround                                                      " Be clever with tabs
set ignorecase                                                      " Ignore case when searching
set smartcase                                                       " When searching try to be smart about cases
set clipboard=unnamedplus                                           " Use system clipboard

"" Keybindings
noremap <leader>ve :edit $HOME/.config/nvim/init.vim<cr>            " Edit init.vim
noremap <leader>vs :source $HOME/.config/nvim/init.vim<cr>          " Source init.vim
"nnoremap Y y$                                                       " Yank(copy) to system clipboard
"nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<cr>    " Toggle folding
"nnoremap gV '[V']                                                   " Highlight last inserted text
"nmap <leader>w :w!<cr>                                              " Fast saving
"command W w !sudo tee % > /dev/null                                " :W sudo saves the file
"map <space> /                                                       " <Space> to / (search)
"map <c-space> ?                                                     " Ctrl-<Space> to ? (backwards search)
"map <silent> <leader><cr> :noh<cr>                                  " Disable highlight when <leader><cr> is pressed
map <leader>q :e ~/buffer<cr>                                       " Quickly open a buffer for scribble
map <leader>x :e ~/buffer.md<cr>                                    " Quickly open a markdown buffer for scribble
map <leader>pp :setlocal paste!<cr>                                 " Toggle paste mode on and off
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/                  " Opens a new tab with the current buffer's path
map <leader>cd :cd %:p:h<cr>:pwd<cr>                                " Switch CWD to the directory of the open buffer
map 0 ^                                                             " Remap VIM 0 to first non-blank character

" Smart way to move between windows
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

" Buffers, preferred over tabs now with bufferline.
nnoremap gn :bnext<cr>
nnoremap gp :bprevious<cr>
nnoremap gd :bdelete<cr>
nnoremap gf <C-^>

" Useful mappings for managing tabs
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove
nnoremap <leader>t<leader> :tabnext<cr>

" Visual mode pressing # searches for the current selection
vnoremap <silent> # :<C-u>call VisualSelection('', '')<cr>?<C-R>=@/<cr><cr>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<cr>
au TabLeave * let g:lasttab = tabpagenr()

" Remember last location
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"" Helper functions

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

" Toggle syntax highlighting
function! ToggleSyntaxHighlighthing()
    if exists("g:syntax_on")
        syntax off
    else
        syntax on
        "call CustomHighlighting()
    endif
endfunction
nnoremap <leader>s :call ToggleSyntaxHighlighthing()<cr>

" Toggle text wrapping, wrap on whole words
function! WrapToggle()
    if &wrap
        set list
        set nowrap
    else
        set nolist
        set wrap
    endif
endfunction
nnoremap <leader>w :call WrapToggle()<cr>

" Remove multiple empty lines
function! DeleteMultipleEmptyLines()
    g/^\_$\n\_^$/d
endfunction
nnoremap <leader>ld :call DeleteMultipleEmptyLines()<cr>

" Split to relative header/source
function! SplitRelSrc()
    let s:fname = expand("%:t:r")

    if expand("%:e") == "h"
        set nosplitright
        exe "vsplit" fnameescape(s:fname . ".cpp")
        set splitright
    elseif expand("%:e") == "cpp"
        exe "vsplit" fnameescape(s:fname . ".h")
    endif
endfunction
nnoremap <leader>le :call SplitRelSrc()<cr>

" Strip trailing whitespace, return to cursor at save
function! StripTrailingWhitespace()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfunction

augroup StripTrailingWhitespace
    autocmd!
    autocmd FileType c,cpp,cfg,conf,css,html,perl,python,php,vim,sh,tex,yaml
        \ autocmd BufWritePre <buffer> :call
        \ StripTrailingWhitespace()
augroup END

"" Plugins

" PHP.vim
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

" Emmet
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" LightLine
let g:lightline = {
      \  'colorscheme': 'gruvbox',
      \  'separator': { 'left': '', 'right': '' },
      \  'subseparator': { 'left': '', 'right': '' },
      \  'active': {
      \    'left': [['mode', 'paste'], ['fugitive'], ['filename']],
      \    'right': [[], ['filetype'], ['gutentags'], ['neomake']]
      \  },
      \  'component_function': {
      \    'neomake': 'neomake#statusline#LoclistStatus',
      \    'filename': 'LightLineFilename',
      \    'fugitive': 'fugitive#head',
      \    'gutentags': 'gutentags#statusline'
      \  }
      \}

function! LightLineModified()
  if &filetype ==# 'help'
    return ''
  elseif &modified
    return '[+]'
  else
    return ''
  endif
endfunction

function! LightLineFilename()
  return ('' !=# expand('%f') ? expand('%f') : '[No Name]') .
       \ ('' !=# LightLineModified() ? LightLineModified() : '')
endfunction

" FZF
noremap <leader>f :FZF<cr>
nnoremap <silent> <Leader>b :Buffers<cr>
" nnoremap <silent> <leader>t :Tags<cr>

" NerdTree
let g:NERDTreeWinPos = "left"
let g:NERDTreeWinSize = 35
let NERDTreeShowHidden = 0
let NERDTreeIgnore = ['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeMapOpenInTab='<ENTER>'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <leader>n :NERDTreeToggle<CR>

" Syntastic
if has("nvim")
  autocmd! BufWritePost * Neomake
  let g:neomake_javascript_jshint_maker = {
      \ 'args': ['--verbose'],
      \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
      \ }
  let g:neomake_javascript_enabled_makers = ['jshint']
  " Add some bindings here...
else
  let g:syntastic_mode_map = {
      \ 'mode': 'passive',
      \ 'active_filetypes':
          \ ['c', 'cpp'] }
  let g:syntastic_check_on_wq = 0
  noremap <silent><leader>ll :SyntasticCheck<cr>
  noremap <silent><leader>lo :Errors<cr>
  noremap <silent><leader>lc :lclose<cr>
endif

" Session
set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
nmap <leader>sl :SessionList<cr>
nmap <leader>ss :SessionSave<cr>
nmap <leader>sc :SessionClose<cr>

" TagBar
set tags=tags;/
let g:tagbar_left = 0
let g:tagbar_width = 30
nnoremap <silent> <leader>tt :TagbarToggle<cr>

" UndoTree
let g:undotree_SetFocusWhenToggle=1
nnoremap <Leader>u :UndotreeToggle<cr>
