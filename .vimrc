filetype on
filetype plugin indent on

" Default file encoding for new files
setglobal fenc=utf-8
set encoding=utf-8

" general things
set nocompatible
set backspace=indent,eol,start
syntax on

" make Python syntax highlighting highlight more things
let python_highlight_numbers = 1
let python_highlight_builtins = 1
let python_highlight_exceptions = 1

" kill error bells entirely
set noerrorbells
set novisualbell
set t_vb=

set history=100
set ruler
set showmatch
runtime macros/matchit.vim " matches if/elseif/else as well as brackets

set scrolloff=3 " scroll before reaching the edge of the page

set lbr " wraps at words instead of at characters

" stuff for searching
set ignorecase
set smartcase
set hlsearch
set gdefault   " assume the /g flag on :s substitutions to replace all matches in a line:

" autocomplete when opening files. behaves somewhat similarly to bash.
set wildignore=*.bak,*.swp,*.pyc,*.o,*.obj,*.dll,*.exe
set wildmenu
set wildmode=list:longest

" by default, use tabs, display tabstabs are four spaces, and we use tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4

set autoindent
set smartindent

" in Ruby and Scala, we use spaces (two) instead of tabs
au BufRead,BufNewFile *.rb,*.scala set et sw=2 sts=2 ts=8
" in Python, we use spaces (four) instead of tabs
au BufRead,BufNewFile *.py set et
" these are re-specified to avoid issues with having files of different types
" open. there is probably a better way to do this. which is good, because this
" list of filetypes isn't anywhere near exhaustive.
au BufRead,BufNewFile *.css,*.c,*.java,*.html*,*.js set noet sw=4 sts=4 ts=4

" new HTML files get automatic boilerplate
au BufNewFile *.html 0r ~/.vim/templates/template.html

" refresh Firefox on Vim save (requires MozRepl installed/running)
au BufWriteCmd *.html,*.css :call Refresh_firefox()

function! Refresh_firefox()
if &modified
write
silent !echo  'vimYo = content.window.pageYOffset;
			 \ vimXo = content.window.pageXOffset;
			 \ BrowserReload();
			 \ content.window.scrollTo(vimXo,vimYo);
			 \ repl.quit();'  |
			 \ nc localhost 4242 2>&1 > /dev/null
endif
endfunction

" backups and swap files go in .vim
"
" ending with the double slash includes the full path in the filename
" of the swap files to avoid conflicts
set backupdir=/tmp//
set directory=/tmp//
set nobackup
set nowb
set noswapfile

" up/down move between visual lines instead of actual lines when wrapped
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk

" autocompletes parens/brackets
"inoremap ( ()<Left>
"inoremap [ []<Left>
"inoremap ( ()<Esc>:let leavechar=")"<CR>

" autocomplete quotes intelligently
" stolen from somewhere, although I don't remember where.
"inoremap	'  '<Esc>:call QuoteInsertionWrapper("'")<CR>a
"inoremap	"  "<Esc>:call QuoteInsertionWrapper('"')<CR>a
"inoremap	`  `<Esc>:call QuoteInsertionWrapper('`')<CR>a

function! QuoteInsertionWrapper (quote)
let col = col('.')
if getline('.')[col-2] !~ '\k' && getline('.')[col] !~ '\k'
	normal ax
	exe "normal r".a:quote."h"
end
endfunction

" no need for a separate .gvimrc
if has('gui_running')
colorscheme vimsidian " custom pretty color scheme!
set number " show line numbers
set lines=60 " new gvim windows are 100x60
set columns=150
set guifont=Monospace\ 10

set guioptions-=m  " hide the menu bar
set guioptions-=T  " hide the toolbar
set guioptions-=r  " hide the right-hand scroll bar
set guioptions-=l  " hide the left-hand scroll bar
" shows/hides menu bar on Ctrl-F1
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
set listchars=tab:»·,trail:⋅,nbsp:⋅
endif

" my settings
map <C-Tab> :NERDTreeToggle<CR>
set list
let mapleader = ","
" Maps for jj to act as Esc
ino jj <esc>
cno jj <c-c>
let g:ackprg="ack-grep -H --nocolor --nogroup"
set cursorline

let g:LustyJugglerSuppressRubyWarning = 1

" ,v brings up my .vimrc
" ,V reloads it -- making all changes active (have to save first)
map <leader>v :sp ~/.vimrc<CR><C-W>_
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" highlight all occurences of word under cursor
"autocmd CursorMoved * silent! exe printf('match IncSearch /\<%s\>/', expand('<cword>'))

" taglist
nnoremap <silent> <F4> :TlistToggle<CR>
let Tlist_Show_One_File = 1 "show tags of only one file
" set the names of flags
let tlist_php_settings = 'php;c:class;f:function;d:constant'
" close all folds except for current file
let Tlist_File_Fold_Auto_Close = 1
" make tlist pane active when opened
let Tlist_GainFocus_On_ToggleOpen = 1
" width of window
let Tlist_WinWidth = 40
" close tlist when a selection is made
let Tlist_Close_On_Select = 1
let Tlist_Enable_Fold_Column = 0 " Don't Show the fold indicator column in the taglist window.
let Tlist_Sort_Type = "name"

" window navigation, full-size
nmap <C-j> <C-W>j<C-W>_
nmap <C-k> <C-W>k<C-W>_
nmap <C-l> <C-W>l<C-W>_
nmap <C-h> <C-W>h<C-W>_

" Y yanks to the end of the line
nmap Y y$

" shortcuts for copying to clipboard
nmap <leader>y "+y

" copy the current line to the clipboard
nmap <leader>Y "+yy
nmap <leader>p "+p

" complete on ctrl-l
inoremap <C-l> <C-x><C-o>
set complete+=.
set complete+=k
set complete+=b
set complete+=t

set completeopt+=menuone,longest

set ofu=syntaxcomplete#Complete

nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y
command! -nargs=+ Grr execute 'silent grep! -r --exclude=*.pyc --exclude=tags --exclude-dir=*.svn <args>' | copen 33
map ,b :LustyJuggler<CR>
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType python set omnifunc=pysmell#Complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set tags=./tags;/

if &diff
    colorscheme peaksea
	nmap <C-l> <C-W>l
	nmap <C-h> <C-W>h
endif

" diff
noremap <F5> :call Svndiff("prev")<CR> 
noremap <F6> :call Svndiff("next")<CR> 
noremap <F7> :call Svndiff("clear")<CR> 
noremap <F8> :VCSVimDiff<CR>

noremap <F2> :Mru<CR>

map <leader>r <Plug>TaskList
nmap 9 <End>

" highlight lines over 80 columns
":au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

" Improve Vim's Command Line Autocompletion
set wildmode=list:longest,full
set infercase
set completeopt=longest,menu,menuone
set wildignore+=*.o,*.obj,*.pyc,*.DS_STORE,*.db,*.swc


"python
python << EOF
import os
import sys
import vim
for p in sys.path:
    if os.path.isdir(p):
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF
set tags+=$HOME/.vim/tags/python.ctags
let g:SuperTabDefaultCompletionType = "context"