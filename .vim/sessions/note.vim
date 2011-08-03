let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <D-BS> 
imap <M-BS> 
imap <M-Down> }
inoremap <D-Down> <C-End>
imap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
inoremap <silent> <Plug>NERDCommenterInInsert  <BS>:call NERDComment(0, "insert")
map! <D-v> *
nmap v :call Screen_Vars()
nmap  vip
vmap  "ry :call Send_to_Screen(@r)
vmap  "+y
nmap  "+gP
nmap <silent> ,vR <Plug>EgMapReplaceCurrentWord_R
nmap <silent> ,vr <Plug>EgMapReplaceCurrentWord_r
nmap <silent> ,vA <Plug>EgMapGrepCurrentWord_A
nmap <silent> ,va <Plug>EgMapGrepCurrentWord_a
nmap <silent> ,vV <Plug>EgMapGrepCurrentWord_V
nmap <silent> ,vv <Plug>EgMapGrepCurrentWord_v
nmap ,l <Plug>(quicklaunch-list)
nmap ,9 <Plug>(quicklaunch-9)
nmap ,8 <Plug>(quicklaunch-8)
nmap ,7 <Plug>(quicklaunch-7)
nmap ,6 <Plug>(quicklaunch-6)
nmap ,5 <Plug>(quicklaunch-5)
nmap ,4 <Plug>(quicklaunch-4)
nmap ,3 <Plug>(quicklaunch-3)
nmap ,0 <Plug>(quicklaunch-0)
nmap <silent> ,lj :LustyJuggler
nmap <silent> ,lg :LustyBufferGrep
nmap <silent> ,lb :LustyBufferExplorer
nmap <silent> ,lr :LustyFilesystemExplorerFromHere
nmap <silent> ,lf :LustyFilesystemExplorer
nmap <silent> ,t :CommandT
nmap ,ca <Plug>NERDCommenterAltDelims
vmap ,cA <Plug>NERDCommenterAppend
nmap ,cA <Plug>NERDCommenterAppend
vmap ,c$ <Plug>NERDCommenterToEOL
nmap ,c$ <Plug>NERDCommenterToEOL
vmap ,cu <Plug>NERDCommenterUncomment
nmap ,cu <Plug>NERDCommenterUncomment
vmap ,cn <Plug>NERDCommenterNest
nmap ,cn <Plug>NERDCommenterNest
vmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
vmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
vmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
vmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
vmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
vmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
vmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
vmap ,cc <Plug>NERDCommenterComment
nmap ,cc <Plug>NERDCommenterComment
vmap <silent> ,vR <Plug>EgMapReplaceSelection_R
omap <silent> ,vR <Plug>EgMapReplaceCurrentWord_R
vmap <silent> ,vr <Plug>EgMapReplaceSelection_r
omap <silent> ,vr <Plug>EgMapReplaceCurrentWord_r
vmap <silent> ,vA <Plug>EgMapGrepSelection_A
omap <silent> ,vA <Plug>EgMapGrepCurrentWord_A
vmap <silent> ,va <Plug>EgMapGrepSelection_a
omap <silent> ,va <Plug>EgMapGrepCurrentWord_a
vmap <silent> ,vV <Plug>EgMapGrepSelection_V
omap <silent> ,vV <Plug>EgMapGrepCurrentWord_V
vmap <silent> ,vv <Plug>EgMapGrepSelection_v
omap <silent> ,vv <Plug>EgMapGrepCurrentWord_v
map <silent> ,vo <Plug>EgMapGrepOptions
map ,ss :call ToggleTee()
nmap ,2 g]
nmap ,1 
map ,r <Plug>TaskList
nmap ,p "+p
nmap ,Y "+yy
nnoremap ,y :call RunAllTests(''):redraw:call JumpNoNo()
map <silent> ,V :source ~/.vimrc:filetype detect:exe ":echo 'vimrc reloaded'"
map ,v :sp ~/.vimrc_
map ,b :LustyBufferExplorer
nmap ,gV :Gitv! --all
nmap ,gv :Gitv --all
map ,q :call CleanClose(0)
map ,cd :cd %:p:h
map H ^
map L $
xmap S <Plug>VSurround
nmap Y y$
vmap [% [%m'gv``
vmap ]% ]%m'gv``
vmap a% [%v]%
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nnoremap j gj
nnoremap k gk
xmap s <Plug>Vsurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
map <M-Down> }
noremap <D-Down> <C-End>
map <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vnoremap <silent> <Plug>(quickrun) :QuickRun -mode v
nnoremap <silent> <Plug>(quickrun) :QuickRun -mode n
nnoremap <silent> <Plug>(quickrun-op) :set operatorfunc=QuickRung@
nmap <silent> <Plug>NERDCommenterAppend :call NERDComment(0, "append")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment(0, "toEOL")
vnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(1, "uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(0, "uncomment")
vnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(1, "nested")
nnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(0, "nested")
vnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(1, "alignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(0, "alignBoth")
vnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(1, "alignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(0, "alignLeft")
vmap <silent> <Plug>NERDCommenterYank :call NERDComment(1, "yank")
nmap <silent> <Plug>NERDCommenterYank :call NERDComment(0, "yank")
vnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(1, "invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(0, "invert")
vnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(1, "sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(0, "sexy")
vnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(1, "minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(0, "minimal")
vnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(1, "toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(0, "toggle")
vnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(1, "norm")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(0, "norm")
map <F1> :QFix
noremap <F2> :Mru
nnoremap <silent> <F4> :TlistToggle
map <C-Tab> :NERDTreeToggle
nnoremap <C-F1> :if &go=~#'m'|set go-=m|else|set go+=m|endif
vmap <BS> "-d
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap  
imap  <Plug>Isurround
imap  i
cnoremap jj 
inoremap jj 
cabbr gitv Gitv
let &cpo=s:cpo_save
unlet s:cpo_save
set noantialias
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set backupdir=/tmp//
set cmdheight=3
set complete=.,w,b,u,t,i,k
set completeopt=longest,menu,menuone,menuone,longest
set directory=/tmp//
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set gdefault
set guifont=Andale\ Mono:h12
set guioptions=egLt
set guitablabel=%M%t
set helplang=en
set hidden
set history=100
set hlsearch
set ignorecase
set infercase
set langmenu=none
set laststatus=2
set listchars=tab:»·,trail:⋅,nbsp:⋅
set makeprg=python\ -m\ nose.core\ --machine-out
set mouse=a
set omnifunc=pythoncomplete#Complete
set path=.,/usr/include,,,/System/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6,/System/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/plat-darwin,/System/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/plat-mac,/System/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/plat-mac/lib-scriptpackages,/System/Library/Frameworks/Python.framework/Versions/2.6/Extras/lib/python,/System/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/lib-tk,/System/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/lib-old,/System/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/lib-dynload,/Library/Python/2.6/site-packages,/System/Library/Frameworks/Python.framework/Versions/2.6/Extras/lib/python/PyObjC,/System/Library/Frameworks/Python.framework/Versions/2.6/Extras/lib/python/wx-2.8-mac-unicode
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set ruler
set scrolloff=10
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos
set shiftwidth=4
set showmatch
set smartcase
set softtabstop=4
set statusline=%F%m%r%h%w\ [%{&ff}]\ %y\ [%l/%L--%c]\ [%p%%]
set noswapfile
set switchbuf=useopen
set tabstop=4
set tags=./tags;/,~/.vim/tags/python.ctags
set termencoding=utf-8
set wildignore=tags,*.bak,*.swp,*.pyc,*.o,*.obj,*.dll,*.exe,*.gif,*.png,*.jpg,*.jpeg,*.o,*.obj,*.pyc,*.DS_STORE,*.db,*.swc
set wildmenu
set wildmode=list:longest,full
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
let NERDTreeMapPreviewSplit = "gi"
let NERDTreeMapCloseChildren = "X"
let EasyGrepCommand =  0 
let NERDTreeShowHidden = "0"
let MRU_Include_Files = ""
let LustyJugglerShowKeys =  1 
let LustyJugglerSuppressRubyWarning =  1 
let Tlist_Enable_Fold_Column =  0 
let MRU_Add_Menu =  1 
let Tlist_Use_SingleClick =  0 
let EasyGrepRecursive =  0 
let NERDTreeMapCloseDir = "x"
let EasyGrepInvertWholeWord =  0 
let EasyGrepReplaceAllPerFile =  0 
let Tlist_Show_One_File =  1 
let Tlist_Auto_Highlight_Tag =  1 
let NERDUsePlaceHolders = "1"
let NERDTreeShowLineNumbers = "0"
let EasyGrepMode =  0 
let Tlist_Sort_Type = "name"
let Gitv_InstanceCounter =  0 
let Gitv_TruncateCommitSubjects =  0 
let EasyGrepReplaceWindowMode =  0 
let NERDTreeBookmarksFile = "/Users/jussiava/.NERDTreeBookmarks"
let NERDTreeMapToggleHidden = "I"
let NERDTreeWinSize = "31"
let MRU_Exclude_Files = ""
let Tlist_Ctags_Cmd = "ctags"
let NERDTreeMapToggleFiles = "F"
let EasyGrepFileAssociationsInExplorer =  0 
let NERDRemoveExtraSpaces = "1"
let EasyGrepEveryMatch =  0 
let EasyGrepWindow =  0 
let Tlist_Process_File_Always =  0 
let NERDTreeMapPreview = "go"
let MRU_Max_Entries =  100 
let NERDTreeNotificationThreshold = "100"
let NERDTreeMapActivateNode = "o"
let Gitv_CommitStep =  999 
let NERDTreeWinPos = "left"
let EasyGrepVersion = ".98"
let NERDTreeMapMenu = "m"
let NERDTreeStatusline = "%{exists('b:NERDTreeRoot')?b:NERDTreeRoot.path.str():''}"
let Tlist_Display_Tag_Scope =  1 
let NERDTreeMapOpenInTabSilent = "T"
let NERDTreeMapHelp = "?"
let EasyGrepAllOptionsInExplorer =  0 
let NERDTreeMapJumpParent = "p"
let NERDTreeMapToggleFilters = "f"
let NERDTreeAutoCenter = "1"
let TagList_title = "__Tag_List__"
let NERDTreeMapJumpPrevSibling = "<C-k>"
let NERDTreeShowBookmarks = "0"
let EasyGrepHidden =  0 
let NERDMenuMode = "3"
let NERDDefaultNesting = "1"
let EasyGrepJumpToMatch =  1 
let NERDTreeMapOpenInTab = "t"
let EasyGrepOpenWindowOnMatch =  1 
let NERDTreeRemoveDirCmd = "rm -rf "
let NERDTreeChDirMode = "0"
let EasyGrepExtraWarnings =  1 
let Tlist_Highlight_Tag_On_BufEnter =  1 
let NERDTreeAutoCenterThreshold = "3"
let NERDTreeShowFiles = "1"
let NERDTreeMapOpenSplit = "i"
let EasyGrepIgnoreCase =  1 
let NERDTreeCaseSensitiveSort = "0"
let NERDTreeHijackNetrw = "1"
let Tlist_Max_Submenu_Items =  20 
let NERDSpaceDelims = "0"
let NERDTreeMapRefresh = "r"
let Tlist_Compact_Format =  0 
let MRU_Max_Menu_Entries =  10 
let NERDTreeHighlightCursorline = "1"
let NERDDelimiterRequests = "1"
let Tlist_GainFocus_On_ToggleOpen =  1 
let NERDLPlace = "[>"
let NERDTreeMouseMode = "1"
let Tlist_WinHeight =  10 
let NERDCreateDefaultMappings = "1"
let Tlist_Inc_Winwidth =  1 
let Tlist_Auto_Update =  1 
let MRU_File = "/Users/jussiava/.vim_mru_files"
let NERDChristmasTree = "1"
let NERDTreeMapUpdir = "u"
let NERDTreeMapJumpRoot = "P"
let NERDCommentWholeLinesInVMode = "0"
let MRU_Max_Submenu_Entries =  10 
let NERDTreeMapChdir = "cd"
let NERDRPlace = "<]"
let Tlist_Exit_OnlyWindow =  0 
let NERDTreeMapToggleZoom = "A"
let NERDTreeMapPreviewVSplit = "gs"
let Tlist_Display_Prototype =  0 
let Gitv_GitExecutable = "git"
let NERDTreeMapRefreshRoot = "R"
let MRU_Window_Height =  8 
let Tlist_Max_Tag_Length =  10 
let NERDRemoveAltComs = "1"
let NERDTreeMapJumpLastChild = "J"
let NERDTreeMapOpenVSplit = "s"
let Tlist_WinWidth =  40 
let NERDTreeMapDeleteBookmark = "D"
let MRU_Auto_Close =  1 
let NERDBlockComIgnoreEmpty = "0"
let Tlist_Close_On_Select =  1 
let NERDTreeMapJumpNextSibling = "<C-j>"
let EasyGrepOptionPrefix = "<leader>vy"
let Tlist_File_Fold_Auto_Close =  1 
let Tlist_Auto_Open =  0 
let Tlist_Use_Horiz_Window =  0 
let Gitv_WrapLines =  0 
let NERDTreeCopyCmd = "cp -r "
let EasyGrepWindowPosition = ""
let Gitv_WipeAllOnClose =  0 
let NERDTreeMapQuit = "q"
let NERDTreeMapChangeRoot = "C"
let EasyGrepSearchCurrentBufferDir =  1 
let EasyGrepMappingsSet =  1 
let NERDCompactSexyComs = "0"
let MRU_Use_Current_Window =  0 
let NERDTreeSortDirs = "1"
let NERDAllowAnyVisualDelims = "1"
let NERDTreeMapOpenExpl = "e"
let NERDTreeMapJumpFirstChild = "K"
let NERDTreeMapOpenRecursively = "O"
let NERDTreeMapToggleBookmarks = "B"
let EasyGrepFileAssociations = "/Users/jussiava/.vim/plugin/EasyGrepFileAssociations"
let NERDTreeMapUpdirKeepOpen = "U"
let NERDTreeQuitOnOpen = "0"
let Tlist_Show_Menu =  0 
let Tlist_Use_Right_Window =  0 
silent only
cd ~/Dropbox/treasurechest
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +19 2general/map_paper.txt
badd +196 ~/.vimrc
badd +37 italy_notes.txt
badd +1703 notes_2011.txt
badd +28 heimoi/follow_strategy_notes.txt
badd +68 2general/m.omakaupunki.fi.txt
badd +14 heimoi/TODO.txt
badd +33 vim/vim_notes.txt
badd +7 programming/python.txt
badd +3 vim/vim_history.txt
badd +73 2general/history.txt
badd +69 version_control/git.txt
badd +4 curl.txt
badd +7 2general/django_class_based_views.txt
badd +30 2general/stackoverflow_stackapps_api.txt
badd +31 2general/first_day.txt
badd +1 feedraider/raiderTODO.txt
badd +11 2general/tumblr_api.txt
badd +21 heimoi/api_design_pyramid.txt
badd +62 heimoi/lomamuistio.txt
badd +1 feedraider/pipeline.txt
silent! argdel *
set lines=82 columns=170
winpos 423 1178
edit 2general/m.omakaupunki.fi.txt
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
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i,k
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
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
setlocal nomacmeta
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
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=
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
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 68 - ((38 * winheight(0) + 39) / 78)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
68
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
