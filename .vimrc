
if ($TERM == "vt100")
  " xterm-color / screen
  set t_Co=8
  set t_AF=[1;3%p1%dm
  set t_AB=[4%p1%dm
endif

if filereadable($VIMRUNTIME . "/vimrc_example.vim")
 so $VIMRUNTIME/vimrc_example.vim
endif

if filereadable($VIMRUNTIME . "/macros/matchit.vim")
 so $VIMRUNTIME/macros/matchit.vim
endif

syntax on

set nocompatible
set wildmenu
set backupdir=~/tmp,.,/var/tmp/vi.recover,/tmp
set directory=~/tmp,/var/tmp/vi.recover,/tmp,.
"set backup		" keep a backup file
" set textwidth=78
" set shiftwidth=4
set bs=2		" allow backspacing over everything in insert mode
set ai			" always set autoindenting on
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
set showmatch

"set background=dark	" another is 'light'

" VIM 6.0,
if version >= 600
    set nohlsearch
    " set foldcolumn=2
    " set foldmethod=syntax
    set foldmethod=marker
    set foldlevel=1
"    set foldtext=/^/=>
    " set encoding=utf-8
    " set fileencoding=big5
    " set termencoding=big5
    set encoding=utf8
    " set fileencodings=latin,big5,ucs-bom,utf-8,sjis,big5
    set fileencodings=ucs-bom,utf-8,sjis,big5,latin1
else
    set fileencoding=taiwan
endif

" Tab key binding
if version >= 700
  map  <C-c> :tabnew<CR>
  imap <C-c> <ESC>:tabnew<CR>
  map  <C-k> :tabclose<CR>
  "map  <C-p> :tabprev<CR>
  "imap <C-p> <ESC>:tabprev<CR>
  "map  <C-n> :tabnext<CR>
  "imap <C-n> <ESC>:tabnext<CR>
  map <F4> :set invcursorline<CR>

  map g1 :tabn 1<CR>
  map g2 :tabn 2<CR>
  map g3 :tabn 3<CR>
  map g4 :tabn 4<CR>
  map g5 :tabn 5<CR>
  map g6 :tabn 6<CR>
  map g7 :tabn 7<CR>
  map g8 :tabn 8<CR>
  map g9 :tabn 9<CR>
  map g0 :tabn 10<CR>
  map gc :tabnew<CR>

  highlight TabLineSel term=bold,underline cterm=bold,underline ctermfg=7 ctermbg=0
  highlight TabLine    term=bold cterm=bold
  highlight clear TabLineFill


end

" Crontabs must be edited in place
au BufRead /tmp/crontab* :set backupcopy=yes


set mouse-=a  " add by tim
set bg=dark
set nobackup " add by jarvis
set hls " add by jarvis
set nu " add by jarvis
"set tags=tags; " for ctags (don't delete ;)
"set autochdir " for ctags

ab uses use strict
set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab "set tab/indent as 2 spaces


" for NERDTree 
map <C-t> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "close vim if the only window left open is a NERDTree
""""""""""""""""""""""""""""""""""""""""""""""

" for Ag
set runtimepath^=~/.vim/pack/my-plugins/ag
""""""""""""""""""""""""""""""""""""""""""""""

" for tagbar
map <C-b> :TagbarToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""

" for YankRing
map <C-y> :YRShow<CR>

" for DirDiff 
let g:DirDiffExcludes = "CVS,*.class,*.exe,.*.swp,*.git" 

" for vim-linux-coding-style
map <C-l> :LinuxCodingStyle<CR>
let g:linuxsty_patterns = ["third_party/kernel"] " add chromium kernel

set colorcolumn=81
