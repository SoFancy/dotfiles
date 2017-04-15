" NeoBundle Options
if has('vim_starting')
    set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
    set runtimepath+=~/.config/nvim/
endif

let neobundle_readme=expand('~/.config/nvim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)
    echo "Installing NeoBundle..."
    echo ""
    silent !mkdir -p ~/.config/nvim/bundle
    silent !git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim/
    let g:not_finsh_neobundle = "yes"
endif

" Plugins
call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
" ~ Add more plugins here ~ "

NeoBundle 'rust-lang/rust.vim'

" ~ Plugin region end ~ "
call neobundle#end()
filetype plugin indent on

NeoBundleCheck

" Enable true terminal colors
set termguicolors

" Auto read when a file is changed from the outside
set autoread

" Lines of history remembered
set history=500

" Search options 
set hlsearch	" Highlight search results
set ignorecase	" Ignore case when searching

" Tab options
set expandtab		" Spaces instead of '\t' when tabbing
set shiftwidth=4	" Make a tab 4 spaces
set tabstop=4		" Translate '\t' to 4 spaces

set ai		" Auto indent
set si		" Smart indent
set wrap	" Wrap lines

" Turn off annoying error indications
set noerrorbells
set novisualbell

" Look & feel
"set foldcolumn=1   " Adds a column on the left to push text inwards a bit
set number          " Adds line numbering on the left
set ruler           " Display current position (bottom right)
