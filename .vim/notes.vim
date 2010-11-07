let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <S-Tab> 
inoremap <C-Tab> 	
imap <silent> <Up> gk
imap <silent> <Down> gj
map! <S-Insert> <MiddleMouse>
nmap v :call Screen_Vars()
nmap  vip
vmap  "ry :call Send_to_Screen(@r)
vmap  "+y
nmap  h_
nmap <NL> j_
nmap  k_
nmap  l_
nmap  "+gP
nmap <silent> ,cv <Plug>VCSVimDiff
nmap <silent> ,cu <Plug>VCSUpdate
nmap <silent> ,cU <Plug>VCSUnlock
nmap <silent> ,cs <Plug>VCSStatus
nmap <silent> ,cr <Plug>VCSReview
nmap <silent> ,cq <Plug>VCSRevert
nmap <silent> ,cn <Plug>VCSAnnotate
nmap <silent> ,cN <Plug>VCSSplitAnnotate
nmap <silent> ,cl <Plug>VCSLog
nmap <silent> ,cL <Plug>VCSLock
nmap <silent> ,ci <Plug>VCSInfo
nmap <silent> ,cg <Plug>VCSGotoOriginal
nmap <silent> ,cG <Plug>VCSClearAndGotoOriginal
nmap <silent> ,cd <Plug>VCSDiff
nmap <silent> ,cD <Plug>VCSDelete
nmap <silent> ,cc <Plug>VCSCommit
nmap <silent> ,ca <Plug>VCSAdd
nmap <silent> ,lj :LustyJuggler
nmap <silent> ,t :CommandT
map ,r <Plug>TaskList
map ,b :LustyJuggler
nmap ,p "+p
nmap ,Y "+yy
nmap ,y "+y
map <silent> ,V :source ~/.vimrc:filetype detect:exe ":echo 'vimrc reloaded'"
map ,v :sp ~/.vimrc_
nmap 9 <End>
xmap S <Plug>VSurround
nmap Y y$
vmap [% [%m'gv``
vmap ]% ]%m'gv``
vmap a% [%v]%
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
xmap s <Plug>Vsurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <Plug>CVSWatchRemove :CVSWatch remove
nnoremap <silent> <Plug>CVSWatchOn :CVSWatch on
nnoremap <silent> <Plug>CVSWatchOff :CVSWatch off
nnoremap <silent> <Plug>CVSWatchAdd :CVSWatch add
nnoremap <silent> <Plug>CVSWatchers :CVSWatchers
nnoremap <silent> <Plug>CVSUnedit :CVSUnedit
nnoremap <silent> <Plug>CVSEditors :CVSEditors
nnoremap <silent> <Plug>CVSEdit :CVSEdit
nnoremap <silent> <Plug>VCSVimDiff :VCSVimDiff
nnoremap <silent> <Plug>VCSUpdate :VCSUpdate
nnoremap <silent> <Plug>VCSUnlock :VCSUnlock
nnoremap <silent> <Plug>VCSStatus :VCSStatus
nnoremap <silent> <Plug>VCSSplitAnnotate :VCSAnnotate!
nnoremap <silent> <Plug>VCSReview :VCSReview
nnoremap <silent> <Plug>VCSRevert :VCSRevert
nnoremap <silent> <Plug>VCSLog :VCSLog
nnoremap <silent> <Plug>VCSLock :VCSLock
nnoremap <silent> <Plug>VCSInfo :VCSInfo
nnoremap <silent> <Plug>VCSClearAndGotoOriginal :VCSGotoOriginal!
nnoremap <silent> <Plug>VCSGotoOriginal :VCSGotoOriginal
nnoremap <silent> <Plug>VCSDiff :VCSDiff
nnoremap <silent> <Plug>VCSDelete :VCSDelete
nnoremap <silent> <Plug>VCSCommit :VCSCommit
nnoremap <silent> <Plug>VCSAnnotate :VCSAnnotate
nnoremap <silent> <Plug>VCSAdd :VCSAdd
noremap <F2> :Mru
noremap <F8> :VCSVimDiff
noremap <F7> :call Svndiff("clear") 
noremap <F6> :call Svndiff("next") 
noremap <F5> :call Svndiff("prev") 
nnoremap <silent> <F4> :TlistToggle
map <C-Tab> :NERDTreeToggle
nnoremap <C-F1> :if &go=~#'m'|set go-=m|else|set go+=m|endif
nmap <silent> <Up> gk
nmap <silent> <Down> gj
map <S-Insert> <MiddleMouse>
imap S <Plug>ISurround
imap s <Plug>Isurround
imap 	 
inoremap  
imap  <Plug>Isurround
imap  i
cnoremap jj 
inoremap jj 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set backupdir=/tmp//
set complete=.,w,b,u,t,i,k
set completeopt=longest,menu,menuone
set directory=/tmp//
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=Monospace\ 10
set guioptions=aegiLt
set helplang=en
set history=100
set hlsearch
set ignorecase
set infercase
set listchars=tab:»·,trail:⋅,nbsp:⋅
set mouse=a
set omnifunc=syntaxcomplete#Complete
set path=.,/usr/include,,,/storage/workspace/packages/src/haystack,/storage/workspace/packages/src/geopy,/storage/workspace/packages/src/south,/storage/workspace/packages/src/tagcon,/storage/workspace/packages/src/python-sdk/src,/storage/workspace/packages/src/feedparser,/usr/lib/python2.6,/usr/lib/python2.6/plat-linux2,/usr/lib/python2.6/lib-tk,/usr/lib/python2.6/lib-dynload,/usr/lib/python2.6/dist-packages,/usr/lib/python2.6/dist-packages/PIL,/usr/lib/python2.6/dist-packages/gst-0.10,/usr/lib/pymodules/python2.6,/usr/lib/python2.6/dist-packages/gtk-2.0,/usr/lib/pymodules/python2.6/gtk-2.0,/usr/local/lib/python2.6/dist-packages
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim72,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set scrolloff=3
set shiftwidth=4
set showmatch
set smartcase
set smartindent
set softtabstop=4
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set switchbuf=useopen
set tabstop=4
set tags=./tags;/,~/.vim/tags/python.ctags
set termencoding=utf-8
set wildignore=*.bak,*.swp,*.pyc,*.o,*.obj,*.dll,*.exe,*.o,*.obj,*.pyc,*.DS_STORE,*.db,*.swc
set wildmenu
set wildmode=list:longest,full
set window=58
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /storage/workspace
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 ~/Dropbox/treasurechest/vim/vim_notes.txt
silent! argdel *
edit ~/Dropbox/treasurechest/vim/vim_notes.txt
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i,k
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != ''
setlocal filetype=
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal infercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
