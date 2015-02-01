syntax enable
if has('gui_running')
	let g:solarized_termcolors=256
  colorscheme solarized
	set background=dark
else
		 set background=dark
endif
set ruler                     " show the line number on the bar
set more                      " use more prompt
set autoread                  " watch for file changes
set number                    " line numbers
set hidden
set noautowrite               " don't automagically write on :next
set lazyredraw                " don't redraw when don't have to
set showmode
set showcmd
set nocompatible              " vim, not vi
set autoindent smartindent    " auto/smart indent
set smarttab                  " tab and backspace are smart
set tabstop=2                 " 6 spaces
set shiftwidth=2
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set history=200
set backspace=indent,eol,start
set linebreak
set cmdheight=2               " command line two lines high
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set ttyfast                   " we have a fast terminal
set noerrorbells              " No error bells please
set shell=bash
set fileformats=unix
set ff=unix
filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin on            " Enable filetype-specific plugins
set wildmode=longest:full
set wildmenu                  " menu has tab completion
let maplocalleader=','        " all my macros start with ,
set laststatus=2

"searching
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync
set guifont=Monaco:h12
"backup
set backup
set backupdir=~/.vim_backup
set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
"set viminfo='100,f1
"spelling
if v:version >= 700
" Enable spell check for text files
  autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
endif
"mappings
"toggle list mode
nmap <LocalLeader>tl :set list!<cr>
"toggle paste mode
nmap <LocalLeader>pp :set paste!<cr>
"Setting font for gui
if has("gui_running")
if has("gui_gtk2")
set guifont=monaco\ 12
elseif has("gui_win32")
set guifont=monaco:h12:cANSI
endif 
endif 
"NERDTree
if exists("loaded_nerd_tree")
autocmd VimEnter * NERDTree
endif
"Press Enter to inser new lince instead of using O 
map <Enter> o<ESC>
map <S-Enter> O<ESC>
" Vim jump to the last position when reopening a file                                                       
if has("autocmd")
	  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
	endif
execute pathogen#infect()
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
cmap w!! %!sudo tee > /dev/null
