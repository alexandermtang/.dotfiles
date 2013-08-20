" Required for Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Bundle repos
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'tomtom/tcomment_vim'
Bundle 'godlygeek/tabular'
Bundle 'Valloric/YouCompleteMe'
Bundle 'jiangmiao/auto-pairs'

" Use % for html tags
Bundle 'tmhedberg/matchit'

" Needed by snipMate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle 'honza/vim-snippets'
imap <c-j> <Plug>snipMateNextOrTrigger
smap <c-j> <Plug>snipMateNextOrTrigger

" Powerline config
set laststatus=2            " Always show the statusline
set encoding=utf-8          " Necessary to show unicode glyphs
let g:Powerline_symbols = 'fancy'

" Basic Setup
set t_Co=256                " 256 colors
colorscheme wombat256tang   " Colorscheme
set nocompatible            " Use vim, no vi defaults
set number                  " Show line numbers
set ruler                   " Show line and column number
syntax enable               " Turn on syntax highlighting allowing local overrides
set mouse=a
set visualbell              " Turn off error bells
set lazyredraw              " Don't update while in macro
set ttyfast                 " Improves redrawing
filetype plugin on          " Needed by matchit to detect filetypes

" Whitespace
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set softtabstop=2                 " backspace deletes indent
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
set cursorline                    " highlight cursorline

" highlight 80 char column
" set colorcolumn=81
execute "set colorcolumn=".join(range(81,300), ',')

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
let mapleader = ","
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>t :TagbarToggle<CR>

" Remap jk to Esc, Esc doesn't go back
inoremap jk <Esc>`^

" Resize splits when window is resized
au VimResized * :wincmd =

" HTML/CSS autocomplete
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" Sort CSS brace contents
command! SortCSS :g#\({\n\)\@<=#.,/}/sort
