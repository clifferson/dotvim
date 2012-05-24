"" Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax enable
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Powerline settings
set nocompatible                " Disable VI-compatibility
set laststatus=2                " Always show the sattus line
set encoding=utf-8              " Necessary to show unicode glyphs
set t_Co=256                    " Explicitly tell vim that the terminal supports 256 colors

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Store temp files in cetral location
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

"" Looks
colorscheme ir_black

"" Remap leader to ,
let mapleader = ","

"" Command-t bindings
"" noremap <leader>t <Esc>:CommandT<CR>

"" Make Y behave like other capitals
map Y y$

" highlight the current line/column / f12 to disable
set cursorline cursorcolumn 
noremap <silent><f12> :set cursorline! cursorcolumn!<cr>
