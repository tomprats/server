set nocompatible              " be iMproved, required
filetype on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

map <C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

set t_Co=256                        " Set vim to 256 color
scriptencoding utf-8
filetype plugin indent on           " Automatically detect file types.
syntax on                           " Syntax highlighting
" set mouse=a                         " Automatically enable mouse usage
set mousehide                       " Hide the mouse cursor while typing
set history=1000                    " Store a ton of history (default is 20)
set hidden                          " Allow buffer switching without saving"
set nospell
set virtualedit=onemore             " Allow for cursor beyond last character

set backup                  " Enable Backups
let common_directory = $HOME . "/.vimundo/"
if exists("*mkdir")
  if !isdirectory(common_directory)
    echo "Creating common backup directory at (this is a one time thing unless deleted or moved): " . common_directory
    call mkdir(common_directory)
  endif
endif
if isdirectory(common_directory)
  exec "set backupdir=" . common_directory
  exec "set undodir=" . common_directory
  exec "set directory=" . common_directory
else
  echo "Warning: Unable to find backup directory: " . common_directory
  echo "Try: mkdir -p " . common_directory
endif
if has('persistent_undo')
  set undofile                " Enable persistent undo
  set undolevels=1000         " Maximum number of changes that can be undone
  set undoreload=10000        " Maximum number lines to save for undo on a buffer reload
endif

set backspace=indent,eol,start  " Backspace for dummies"
set background=dark             " Assume a dark background"
set cursorcolumn                " Enable cursor column
set cursorline                  " Enable cursor line
set tabpagemax=15               " Only show 15 tabs
set showmode                    " Display the current mode
set linespace=0                 " No extra spaces between rows
set nu                          " Line numbers on
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set foldenable                  " Auto fold code
set tw=0                        " Automatic word wrap is evil
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd BufEnter * lcd %:p:h

" colorscheme meta5      " Set colorscheme
" colorscheme jellybeans " Set colorscheme
colorscheme tomify " Set colorscheme

set pastetoggle=<F12>               " Paste toggle to insert blocks of code
set nowrap                          " Do not wrap long lines
set autoindent                      " Indent at the same level of the previous line
set shiftwidth=2                    " Use indents of 2 spaces
set expandtab                       " Tabs are spaces, not tabs
set tabstop=2                       " An indentation every four columns
set softtabstop=2                   " Let backspace delete indent
set nojoinspaces                    " Prevents inserting two spaces after punctuation on a join (J)
set splitbelow                      " Puts new split windows to the bottom of the current

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

autocmd FileType c,cpp,java,go,php,javascript,python,ruby,twig,xml,yml autocmd BufWritePre <buffer> :%s/\s\+$//e " Auto removal on save for certain file types
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR> " On Demand whitespace removal, push <F5> baby!
nnoremap Y y$
