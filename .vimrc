filetype on
filetype plugin indent on

" source .bashrc
" mvim . doesn't work anymore after this when called from within a virtualenv
"set shell=bash\ --login

let g:quickrun_no_default_key_mappings = 1
"let g:tlist_javascript_settings = 'javascript;o:object;f:function'
let g:tlist_javascript_settings = 'js;o:object;f:function'
" Default file encoding for new files
setglobal fenc=utf-8
set encoding=utf-8

" general things
set nocompatible
set backspace=indent,eol,start
syntax on

compiler! pyunit "for :make to understand python unittests
" make Python syntax highlighting highlight more things
let python_highlight_numbers = 1
let python_highlight_builtins = 1
let python_highlight_exceptions = 1
"autocmd BufRead,BufNewFile *.py syntax on
"autocmd BufRead,BufNewFile *.py set ai
"autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class

" kill error bells entirely
set noerrorbells
set novisualbell
set t_vb=

set history=100
set ruler
set showmatch
"runtime macros/matchit.vim " matches if/elseif/else as well as brackets
set lbr " wraps at words instead of at characters
set autoread " refresh changed files automatically

" stuff for searching
set ignorecase
set smartcase
set hlsearch
set gdefault   " assume the /g flag on :s substitutions to replace all matches in a line:

" autocomplete when opening files. behaves somewhat similarly to bash.
set wildignore=tags,*.bak,*.swp,*.pyc,*.o,*.obj,*.dll,*.exe,*.gif,*.png,*.jpg,*.jpeg
set wildmenu
set wildmode=list:longest,full
set infercase
set completeopt=longest,menu,menuone
set wildignore+=*.o,*.obj,*.pyc,*.DS_STORE,*.db,*.swc
" omnicomplete on ctrl-l
inoremap <C-l> <C-x><C-o>
set complete+=.
set complete+=k
set complete+=b
set complete+=t
set completeopt+=menuone,longest
set ofu=syntaxcomplete#Complete

" by default, use tabs, display tabstabs are four spaces, and we use tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set expandtab

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

" backups and swap files go in .vim
" ending with the double slash includes the full path in the filename
" of the swap files to avoid conflicts
set backupdir=/tmp//
set directory=/tmp//
set nobackup
set nowb
set noswapfile

if has('gui_running')
    set scrolloff=999 " scroll before reaching the edge of the 9age
    set background=dark
    "colorscheme solarized 
    "set background=light
    colorscheme ir_white
    set columns=150
    set guioptions-=m  " hide the menu bar
    set guioptions-=T  " hide the toolbar
    set guioptions-=r  " hide the right-hand scroll bar
    set guioptions-=l  " hide the left-hand scroll bar
    set guioptions-=L  " hide the left-hand scrollbar for splits/new windows
    set guioptions-=R  " hide the right-hand scrollbar for splits/new windows
    " shows/hides menu bar on Ctrl-F1
    nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
    "set listchars=tab:»·,trail:⋅,nbsp:⋅
    if has('gui_gtk2')
        set guifont=Monospace\ 10
        set cmdheight=2
        let g:ackprg="ack-grep -H --nocolor --nogroup --column"
    end
    if has('gui_macvim')
        set noantialias
        "set guifont=Andale\ Mono:h12
        set guifont=Andale\ Mono:h14
        set cmdheight=3 " (sub-optimal) removes many press ENTER to continue prompts
    end
else
    "set t_Co=256
    " scrolloff causes flicker on iterm2
    set scrolloff=0
    set cmdheight=2
endif
set listchars=tab:»·,trail:⋅,nbsp:⋅

" my settings
map <C-Tab> :NERDTreeToggle<CR>
" no dollar sign at end of line
set nolist
let mapleader = ","
map <leader>cd :cd %:p:h<CR>
" Maps for jj to act as Esc
ino jj <esc>
cno jj <c-c>
set cursorline
set hidden "not forced to save before switching buffers
map <leader>q <esc>:call CleanClose(0)<CR>
map <S-h> ^
map <S-l> $
set statusline=%F%m%r%h%w\ [%{&ff}]\ %y\ [%l/%L--%c]\ [%p%%]
set laststatus=2 
set relativenumber
"set lines=999 " start fullscreen

" fugitive
" remove old fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete
let g:Gitv_CommitStep = 100
let g:Gitv_OpenHorizontal = 0
" gitv
nmap <leader>g :Gitv --all<cr>
nmap <leader>h :Gitv! --all<cr>
highlight diffAdded guifg=#00bf00
highlight diffRemoved guifg=#bf0000

let g:LustyJugglerSuppressRubyWarning = 1
let g:LustyJugglerShowKeys = 1

" ,v brings up .vimrc
" ,V reloads it -- making all changes active (have to save first)
map <leader>v :sp ~/.vimrc<CR><C-W>_
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

map <leader>t :CommandT<cr>
map <leader>b :LustyBufferExplorer<cr>
map <leader>y :LustyFilesystemExplorer<CR>
map <leader>u :LustyFilesystemExplorerFromHere<CR>

" tagbar
nnoremap <silent> <F4> :TagbarToggle<CR>

" Y yanks to the end of the line
nmap Y y$
nmap <leader>y "+y
" copy the current line to the clipboard
nmap <leader>Y "+yy
nmap <leader>p "+p


nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y
command! -nargs=+ Grr execute 'silent grep! -r --exclude=*.pyc --exclude=tags --exclude-dir=*.svn <args> *' | copen 33
autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType python set omnifunc=pysmell#Complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set tags=./tags;/

if &diff
	colorscheme peaksea
	nmap <C-l> <C-W>l
	nmap <C-h> <C-W>h
endif

"noremap <F2> :Mru<CR>

map <leader>r <Plug>TaskList
nmap <leader>1 <C-]>
nmap <leader>2 g]

"let sessionman_save_on_exit = 0
"set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos
" SCRIPTS (move outside of this file?)



" PROBLEM: omnicomplete becomes unusably slow with these in path
" http://vim.wikia.com/wiki/Automatically_add_Python_paths_to_Vim_path
"python << EOF
"import os
"import sys
"import vim
"for p in sys.path:
    "if os.path.isdir(p):
        "vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
"EOF
set tags+=$HOME/.vim/tags/python.ctags

function! CleanClose(tosave)
if (a:tosave == 1)
    w!
endif
let todelbufNr = bufnr("%")
let newbufNr = bufnr("#")
if ((newbufNr != -1) && (newbufNr != todelbufNr) && buflisted(newbufNr))
    exe "b".newbufNr
else
    bnext
endif

if (bufnr("%") == todelbufNr)
    new
endif
exe "bw".todelbufNr
endfunction

" QuickFix
let g:jah_Quickfix_Win_Height = 10
" toggles the quickfix window.
command -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
  else
    execute "copen " . g:jah_Quickfix_Win_Height
  endif
endfunction
" used to track the quickfix window
augroup QFixToggle
 autocmd!
 autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")
 autocmd BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
augroup END
map <F1> :QFix<CR>

" tests
function! RunAllTests(args)
    silent ! echo
    silent ! echo -e "\033[1;36mRunning all unit tests\033[0m"
    silent w
    exec "silent make! %:h" . a:args
endfunction

command! -nargs=* AsyncMake call AsyncMake(<q-args>)
function! AsyncMake(target)
    silent ! echo
    silent ! echo -e "\033[1;36mRunning all unit tests\033[0m"
    silent w
    let make_cmd = &makeprg ." ". a:target
    let vim_func = "OnCompleteLoadErrorFile"
    call asynccommand#run(make_cmd, vim_func)
endfunction

function! JumpToError()
    let has_valid_error = 0
    for error in getqflist()
        if error['valid']
            let has_valid_error = 1
            break
        endif
    endfor
    if has_valid_error
        for error in getqflist()
            if error['valid']
                break
            endif
        endfor
        let error_message = substitute(error['text'], '^ *', '', 'g')
        silent cc!
        exec ":sbuffer " . error['bufnr']
        call RedBar()
        echo error_message
    else
        call GreenBar()
        echo "All tests passed"
    endif
endfunction

function! JumpNoNo()
    let has_valid_error = 0
    for error in getqflist()
        if error['valid']
            let has_valid_error = 1
            break
        endif
    endfor
    if has_valid_error
        for error in getqflist()
            if error['valid']
                break
            endif
        endfor
        let error_message = substitute(error['text'], '^ *', '', 'g')
        let error_message = substitute(error_message, "\n", ' ', 'g')
        let error_message = substitute(error_message, "  *", ' ', 'g')
        call RedBar(error_message)
    else
        call GreenBar("All tests passed")
    endif
endfunction

function! RedBar(msg)
    hi RedBar ctermfg=white ctermbg=red guibg=red guifg=black
    echohl RedBar
    echon a:msg repeat(" ",&columns - strlen(a:msg) - 1)
endfunction

function! GreenBar(msg)
    hi GreenBar ctermfg=white ctermbg=green guibg=green guifg=black
    echohl GreenBar
    echon a:msg repeat(" ",&columns - strlen(a:msg) - 1)
endfunction

function! JumpToTestsForClass()
    exec 'e ' . TestFileForCurrentClass()
endfunction

"nnoremap <leader>t :call RunAllTests('')<cr>:redraw<cr>:call JumpToError()<cr>
"nnoremap <leader>y :call RunAllTests('')<cr>:redraw<cr>:call JumpNoNo()<cr>
nnoremap <leader>y :AsyncMake %:h<cr>

set makeprg=unit2\ discover


" settings for writing (hjkl works for navigating big block of text)
let s:text_write = 0
function! ToggleTee()
    if s:text_write
        echo "resetting"
        set nolinebreak
        let s:text_write = 0
    else
        nnoremap j gj
        nnoremap k gk
        set linebreak
        echo "j=>gj bindings"
        let s:text_write = 1
    endif
endfunction

map <leader>ss :call ToggleTee()<CR>

command! -nargs=+ Ack call AckFunc(<q-args>)
function! AckFunc(query)
    let cmd = 'ack -H --nocolor --nogroup --column '
    let cmd .= a:query
    let efm = "%f:%l:%c:%m"
    let title = "[Found: %s] Ack"
    let env = asynchandler#quickfix(efm, title)
    call asynccommand#run(cmd, env)
endfunction

" Load the output as an error file -- does not jump cursor to quick fix
function! OnCompleteLoadErrorFile(temp_file_name)
    exec "cgetfile " . a:temp_file_name
    "cwindow
    redraw!
    call JumpNoNo()
endfunction

