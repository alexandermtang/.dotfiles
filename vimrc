" Required for Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Bundle repos
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar'
Bundle 'ZeusTheTrueGod/vim-format-js'
Bundle 'tpope/vim-rails'
Bundle 'ervandew/supertab'
Bundle 'tomtom/tcomment_vim'
Bundle 'godlygeek/tabular'

" Basic Setup
set nocompatible      " Use vim, no vi defaults
set number            " Show line numbers
set ruler             " Show line and column number
syntax enable         " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8
set mouse=a
set visualbell        " Turn off error bells

" Powerline config
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs
let g:Powerline_symbols = 'fancy'

" Colorscheme
colorscheme wombat256tang

" Whitespace
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set softtabstop=2                 " backspace deletes indent
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
set cursorline                    " highlight cursorline

" gg=G to autoindent html
filetype indent on
set filetype=html
set smartindent

" highlight 80 char column
" set colorcolumn=81
execute "set colorcolumn=".join(range(81,200), ',')

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " Show tabs as "  "
set listchars+=trail:¬            " Show trailing spaces as "¬"
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen

" Searching
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

" Open new split panes to right and bottom
set splitbelow
set splitright

" Window movement mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Toggles
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-t> :TagbarToggle<CR>

" Remap jk to Esc, Esc doesn't go back
inoremap jk <Esc>`^

" Resize splits when window is resized
au VimResized * :wincmd =

" HTML/CSS autocomplete
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" Sort CSS brace contents
command! SortCSS :g#\({\n\)\@<=#.,/}/sort
