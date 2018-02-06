execute pathogen#infect()

:syntax on
:set tabstop=4
:set background=dark
:set autoindent
:set ruler
:set textwidth=0
:set wrapmargin=0
:set number
:set showmatch
:set backspace=indent,eol,start
:set shiftwidth=4

" set paste toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

:let Tlist_Ctags_Cmd='~/.ctags/bin/ctags'
:let Tlist_Display_Prototype = 1
:let Tlist_Exit_OnlyWindow = 1
:nnoremap <silent> <f8> :tlist<cr>

map <C-J> <C-W><C-W>
map <C-K> <C-W><C-W>

:set vb
:set noerrorbells
:set t_vb=

" set leader to comma
let mapleader = ","

filetype on
filetype plugin indent on

set background=dark

if has("gui_running")
	colorscheme solarized
	:set gfn=Inconsolata\ Medium\ 10
endif

" gui options
"set guioptions-=m
"set guioptions-=T


command! SansCar %s///g

"<C-N> <C-P> - word completion!
"<C-X><C-L> - line completion!
"ga - display hex/ascii/octal value of char
"'. - jump to last modification linE
"`. - jump to exact spot of '.
"bd - remove file from buffer list
":bn - next file :bp prev file
":ls, :Ex list buffers, show file explorer.

:set incsearch

:set ignorecase

" MASS COMMENTS MAPPINGS "
" lhs comments
"map ,# :s/^/#/<CR>
"map ,/ :s/^/\/\//<CR>
"map ,> :s/^/> /<CR>
"map ," :s/^/\"/<CR>
"map ,% :s/^/%/<CR>
"map ,! :s/^/!/<CR>
"map ,; :s/^/;/<CR>
"map ,- :s/^/--/<CR>
"map ,c :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR>
"
"" wrapping comments
"map ,* :s/^\(.*\)$/\/\* \1 \*\//<CR>
"map ,( :s/^\(.*\)$/\(\* \1 \*\)/<CR>
"map ,< :s/^\(.*\)$/<!-- \1 -->/<CR>
"map ,d :s/^\([/(]\*\\|<!--\) \(.*\) \(\*[/)]\\|-->\)$/\2/<CR>

" shifting code (reselect)
:vnoremap < <gv
:vnoremap > >gv

" change to current working directory of buffer  you're working in
autocmd BufWinEnter,BufEnter * lcd %:p:h

set backupdir=~/.vimswaps
set dir=~/.vimswaps

" log insert date map to F11
:nnoremap <F11> :0r !date<CR>o
:inoremap <F11> <ESC>:0r !date<CR>o

" nerd tree config
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <F12> :NERDTreeToggle<CR>

" nerd tree git config
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" ctrlp config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" you complete me config
let g:ycm_autoclose_preview_window_after_completion=1

" Nerd Tree commenter config
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
