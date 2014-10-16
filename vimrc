call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible

filetype on
filetype plugin on
filetype indent on

syntax on

" Normal copy & paste
set clipboard=unnamed

" Relative numbering
set relativenumber

" Rebind <Leader> key
let mapleader = ","

map <Leader>rc :e $MYVIMRC<CR>
nmap <Leader>nt :NERDTreeToggle<CR>
map <Leader>ls :ls<CR>
map <Leader>ts :e ~/Dropbox/notes/tool_sharpening.txt<CR>
map <Leader>jsh :JSHint -W104 -W119<CR>

nnoremap <CR> :noh<CR><CR>

inoremap jj <ESC>


" Common save sequence
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" Rebind arrow keys.
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Tab handling
map <C-t> <esc>:tabnew<CR>

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
if has("unix")
   map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
else
   map <Leader>e :e <C-R>=expand("%:p:h") . "\\" <CR>
endif
map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" Set window heights
set winheight=5
set winminheight=5
set winwidth=120
set winheight=999
" easier moving of code blocks
vnoremap < <gv " Move block to the left
vnoremap > >gv " Move block to the right

" Easier escape
imap <c-c> <esc>

" Open new split panes in a more natural feeling way
set splitbelow
set splitright

" Remove annoying error bell and window flashing
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set backupdir=~/vimtmp
set directory=~/vimtmp
set hidden
set ignorecase "case insensitive search
set nowrap " disable line wrapping
set fo-=t "do not line wrap when typing
set hlsearch "highlight search terms
set incsearch "show search matches as you type
set nopaste

" Indending/Tabbing behavior
set tabstop=4
set shiftwidth=4 "number of spaces to use for autoindenting
set softtabstop=4
set expandtab
set autoindent
set smartindent

set number
set nocompatible
set backspace=2 " make backspace work normal (non-vi style)
set whichwrap+=<,>,h,l  " backspace and cursor keys wrap to next/prev lines
set wildignore=*.swp,*.bak,*.pyc,*.class
set ruler
set colorcolumn=80
set laststatus=2
set statusline=%<%f%=\ [%1*%M%*%n%R]\ y\ %-19(%3l,%02c%03V%)
highlight ColorColumn ctermbg=233
"color scheme settings
set t_Co=256
set background=dark
let g:molokai_original=1
colorscheme molokai
let g:rehash256 = 1

if has('gui_running')
    set columns=100
    set lines=40
    set guifont=Monaco:h12
    if has("gui_gtk2")
        set guifont=Inconsolata\ 10
    elseif has("gui_win32")
        set guifont=Consolas:h10:cANSI
    endif
else
    set background=dark
endif


if has("autocmd")
    autocmd Filetype python setlocal ts=4 sts=4 sw=4 expandtab
    autocmd Filetype ruby,html,css setlocal ts=2 sts=2 sw=2 expandtab
endif


" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
