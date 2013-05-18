set autoindent
set smartindent

"tab to space
set tabstop=8
set shiftwidth=8
set expandtab
set softtabstop=8
set smarttab

"no swap file and no backup
setlocal noswapfile 
set bufhidden=hide 
set nobackup 

set viminfo+=! 

set incsearch

set showmatch

set so=4

set ruler

set mouse=v
nmap <silent> <leader>ma :set mouse=a<cr>
nmap <silent> <leader>mv :set mouse=v<cr>

set encoding=utf8

set cursorline



"auto completion
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap \" \"\"<ESC>i
:inoremap \" <c-r>=ClosePair('"')<CR>

function ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endf

"setting Taglist
nmap <silent> <leader>tl :TlistToggle<cr>
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_One_File=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Use_Right_Window=1
"let Tlist_Close_On_Select=1


"    i↑ 
" j←  k↓ l→ 
let g:miniBufExplMapWindowNavArrows = 1

noremap <C-K> <C-W>j
noremap <C-I> <C-W>k
noremap <C-J> <C-W>h
noremap <C-L> <C-W>l

